.class public Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;
.super Lcom/samsung/android/contextaware/aggregator/Aggregator;
.source "LifeLogAggregator.java"


# direct methods
.method public constructor <init>(ILjava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 10
    .param p1, "version"    # I
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    const/4 v2, 0x0

    .line 52
    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/contextaware/aggregator/Aggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 1

    .prologue
    .line 201
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 202
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->clear()V

    .line 203
    return-void
.end method

.method protected clearAccordingToRequest()V
    .registers 1

    .prologue
    .line 214
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 215
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->clearAccordingToRequest()V

    .line 216
    return-void
.end method

.method public final disable()V
    .registers 1

    .prologue
    .line 191
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 192
    return-void
.end method

.method protected display()V
    .registers 1

    .prologue
    .line 303
    return-void
.end method

.method public final enable()V
    .registers 1

    .prologue
    .line 181
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 182
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 238
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LIFE_LOG:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 227
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LoggingType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "LoggingBundle"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 315
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .registers 1

    .prologue
    .line 249
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .registers 1

    .prologue
    .line 261
    return-object p0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .registers 7
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
    const/4 v2, 0x0

    .line 273
    const/4 v1, 0x0

    .line 275
    .local v1, "subCollectorName":Ljava/lang/String;
    const/16 v3, 0x1c

    if-eq p1, v3, :cond_12

    const/16 v3, 0x1d

    if-eq p1, v3, :cond_12

    const/16 v3, 0x1e

    if-eq p1, v3, :cond_12

    const/16 v3, 0x1f

    if-ne p1, v3, :cond_21

    .line 279
    :cond_12
    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 285
    :cond_18
    :goto_18
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 297
    :cond_20
    :goto_20
    return v2

    .line 281
    :cond_21
    const/16 v3, 0x20

    if-ne p1, v3, :cond_18

    .line 282
    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 289
    :cond_2c
    invoke-virtual {p0, v1}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    .line 290
    .local v0, "sub":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-nez v0, :cond_40

    .line 291
    sget-object v3, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getCode()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_20

    .line 297
    :cond_40
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->setPropertyValue(ILjava/lang/Object;)Z

    move-result v2

    goto :goto_20
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 64
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 65
    :cond_d
    sget-object v3, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_TYPE_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getCode()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 172
    :cond_1a
    :goto_1a
    return-void

    .line 71
    :cond_1b
    if-nez p2, :cond_2b

    .line 72
    sget-object v3, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getCode()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_1a

    .line 78
    :cond_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateContext:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 80
    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19c

    .line 82
    const-string v3, "StayingAreaCount"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_103

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "names":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v1, v7

    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v3, v4, p2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 88
    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v2

    .line 90
    .local v2, "obj":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-nez v2, :cond_7e

    .line 91
    const-string v3, "Sub-collection object is null"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_1a

    .line 95
    :cond_7e
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "keys":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v7

    aget-object v5, v0, v7

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;I)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v6

    aget-object v5, v0, v6

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[J)V

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v8

    aget-object v5, v0, v8

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v9

    aget-object v5, v0, v9

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v10

    aget-object v5, v0, v10

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v4, v0, v4

    const/4 v5, 0x5

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v4, v0, v4

    const/4 v5, 0x6

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v4, v0, v4

    const/4 v5, 0x7

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->notifyObserver()V

    .line 116
    .end local v0    # "keys":[Ljava/lang/String;
    .end local v1    # "names":[Ljava/lang/String;
    .end local v2    # "obj":Lcom/samsung/android/contextaware/manager/ContextComponent;
    :cond_103
    const-string v3, "MovingCount"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1a

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 118
    .restart local v1    # "names":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v1, v7

    invoke-virtual {v3, v4, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v3, v4, p2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 122
    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v2

    .line 124
    .restart local v2    # "obj":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-nez v2, :cond_134

    .line 125
    const-string v3, "Sub-collection object is null"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 129
    :cond_134
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 131
    .restart local v0    # "keys":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x8

    aget-object v4, v0, v4

    const/16 v5, 0x8

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;I)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x9

    aget-object v4, v0, v4

    const/16 v5, 0x9

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;J)V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xa

    aget-object v4, v0, v4

    const/16 v5, 0xa

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xb

    aget-object v4, v0, v4

    const/16 v5, 0xb

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xc

    aget-object v4, v0, v4

    const/16 v5, 0xc

    aget-object v5, v0, v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->notifyObserver()V

    goto/16 :goto_1a

    .line 144
    .end local v0    # "keys":[Ljava/lang/String;
    .end local v1    # "names":[Ljava/lang/String;
    .end local v2    # "obj":Lcom/samsung/android/contextaware/manager/ContextComponent;
    :cond_19c
    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 146
    .restart local v1    # "names":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v1, v7

    invoke-virtual {v3, v4, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v3, v4, p2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 150
    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v2

    .line 152
    .restart local v2    # "obj":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-nez v2, :cond_1d1

    .line 153
    const-string v3, "Sub-collection object is null"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 157
    :cond_1d1
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 159
    .restart local v0    # "keys":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v7

    aget-object v5, v0, v7

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;I)V

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v6

    aget-object v5, v0, v6

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[J)V

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v8

    aget-object v5, v0, v8

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v9

    aget-object v5, v0, v9

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v10

    aget-object v5, v0, v10

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->notifyObserver()V

    goto/16 :goto_1a
.end method
