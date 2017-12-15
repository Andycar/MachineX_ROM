.class public abstract Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "EnvironmentSensorProvider.java"


# instance fields
.field private mLoggingStatus:I


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 5
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->mLoggingStatus:I

    .line 49
    return-void
.end method

.method private getDisplayLoggingStatus(I)Ljava/lang/String;
    .registers 4
    .param p1, "status"    # I

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    .line 176
    const-string v0, "AP_SLEEP"

    .line 181
    :cond_6
    :goto_6
    return-object v0

    .line 177
    :cond_7
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    .line 178
    const-string v0, "AP_WAKEUP"

    goto :goto_6
.end method


# virtual methods
.method protected final getDisplayContents(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 102
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 103
    :cond_9
    const-string v9, "key is null"

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 143
    :goto_e
    return-object v8

    .line 107
    :cond_f
    if-eqz p1, :cond_17

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1d

    .line 108
    :cond_17
    const-string v9, "bundle is null"

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_e

    .line 112
    :cond_1d
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v5, v9, v10

    .line 113
    .local v5, "loggingStatus":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v6, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_58

    .line 117
    :try_start_2f
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_40

    .line 118
    const-string v9, "bundle.getString(key) is null"

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_3a} :catch_3b

    goto :goto_e

    .line 123
    :catch_3b
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_e

    .line 121
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_40
    :try_start_40
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getDisplayLoggingStatus(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_53} :catch_3b

    .line 143
    :cond_53
    :goto_53
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    .line 128
    :cond_58
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, "strArray":[Ljava/lang/String;
    if-eqz v7, :cond_61

    array-length v9, v7

    if-gtz v9, :cond_67

    .line 131
    :cond_61
    const-string v9, "bundle.getStringArray(key) is null"

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_e

    .line 135
    :cond_67
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_6a
    if-ge v2, v4, :cond_87

    aget-object v3, v0, v2

    .line 136
    .local v3, "j":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 138
    .end local v3    # "j":Ljava/lang/String;
    :cond_87
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_53

    .line 139
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_53
.end method

.method protected final getInstLibType()B
    .registers 2

    .prologue
    .line 59
    const/16 v0, 0xc

    return v0
.end method

.method protected final getInterval()I
    .registers 2

    .prologue
    .line 89
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->getInterval()I

    move-result v0

    return v0
.end method

.method protected final getLoggingStatus()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->mLoggingStatus:I

    return v0
.end method

.method protected final setLoggingStatus(I)V
    .registers 2
    .param p1, "status"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->mLoggingStatus:I

    .line 163
    return-void
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .registers 6
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 72
    .local v0, "result":Z
    const/16 v1, 0xd

    if-ne p1, v1, :cond_38

    .line 73
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    move-result-object v2

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->setInterval(I)V

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProperty (Interval) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getInterval()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 80
    :goto_37
    return v0

    .line 78
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_38
    const/4 v0, 0x0

    goto :goto_37
.end method
