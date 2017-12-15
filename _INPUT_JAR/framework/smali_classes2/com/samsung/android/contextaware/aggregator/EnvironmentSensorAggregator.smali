.class public abstract Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;
.super Lcom/samsung/android/contextaware/aggregator/Aggregator;
.source "EnvironmentSensorAggregator.java"


# instance fields
.field private mLoggingStatus:I


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 7
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p5, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p4, "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/contextaware/aggregator/Aggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->mLoggingStatus:I

    .line 59
    return-void
.end method


# virtual methods
.method protected abstract checkCompensationData([D)Z
.end method

.method protected abstract compensateForRawData([[D)[D
.end method

.method protected final getLoggingStatus()I
    .registers 2

    .prologue
    .line 195
    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->mLoggingStatus:I

    return v0
.end method

.method protected final getRawSensorData(Landroid/os/Bundle;Ljava/lang/String;)[D
    .registers 4
    .param p1, "context"    # Landroid/os/Bundle;
    .param p2, "valueName"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method protected getRawSensorValueNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected notifyCompensationData([D)V
    .registers 5
    .param p1, "compensationData"    # [D

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "names":[Ljava/lang/String;
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->notifyObserver()V

    .line 138
    return-void
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
    .line 173
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    .line 174
    .local v2, "result":Z
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 175
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 176
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextProvider;

    .line 177
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_9

    .line 180
    instance-of v3, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;

    if-eqz v3, :cond_9

    .line 183
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->setPropertyValue(ILjava/lang/Object;)Z

    move-result v2

    .line 186
    .end local v1    # "next":Lcom/samsung/android/contextaware/manager/ContextProvider;
    :cond_1f
    return v2
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 70
    if-nez p2, :cond_3

    .line 106
    :cond_2
    :goto_2
    return-void

    .line 74
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorValueNames()[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_f

    .line 75
    const-string v8, "getRawSensorValueNames() is null"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 78
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorValueNames()[Ljava/lang/String;

    move-result-object v8

    array-length v1, v8

    .line 79
    .local v1, "bufSize":I
    if-gtz v1, :cond_1c

    .line 80
    const-string v8, "length of getRawSensorValueNames() is zero"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 84
    :cond_1c
    const-string v8, "LoggingStatus"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->mLoggingStatus:I

    .line 86
    new-array v7, v1, [[D

    .line 87
    .local v7, "rawData":[[D
    const/4 v6, 0x0

    .line 89
    .local v6, "num":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorValueNames()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2d
    if-ge v4, v5, :cond_67

    aget-object v3, v0, v4

    .line 90
    .local v3, "i":Ljava/lang/String;
    invoke-virtual {p0, p2, v3}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorData(Landroid/os/Bundle;Ljava/lang/String;)[D

    move-result-object v8

    aput-object v8, v7, v6

    .line 91
    aget-object v8, v7, v6

    if-eqz v8, :cond_40

    aget-object v8, v7, v6

    array-length v8, v8

    if-gtz v8, :cond_62

    .line 92
    :cond_40
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rawData["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "].length is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 96
    :cond_62
    add-int/lit8 v6, v6, 0x1

    .line 89
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 99
    .end local v3    # "i":Ljava/lang/String;
    :cond_67
    invoke-virtual {p0, v7}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->compensateForRawData([[D)[D

    move-result-object v2

    .line 100
    .local v2, "compensationData":[D
    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->checkCompensationData([D)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 105
    invoke-virtual {p0, v2}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->notifyCompensationData([D)V

    goto :goto_2
.end method
