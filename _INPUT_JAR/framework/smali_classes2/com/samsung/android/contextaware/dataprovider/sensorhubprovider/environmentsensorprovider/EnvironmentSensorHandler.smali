.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;
.source "EnvironmentSensorHandler.java"


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x3c

.field private static volatile instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;


# instance fields
.field private mInterval:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;-><init>()V

    .line 35
    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mInterval:I

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;
    .registers 2

    .prologue
    .line 46
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    if-nez v0, :cond_13

    .line 47
    const-class v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    monitor-enter v1

    .line 48
    :try_start_7
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    if-nez v0, :cond_12

    .line 49
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    .line 51
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 53
    :cond_13
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    return-object v0

    .line 51
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private getParserKey(I)Ljava/lang/String;
    .registers 8
    .param p1, "type"    # I

    .prologue
    .line 132
    const/4 v4, 0x0

    .line 134
    .local v4, "parserKey":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v3, :cond_20

    aget-object v2, v0, v1

    .line 135
    .local v2, "j":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;
    iget-byte v5, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->value:B

    if-eq p1, v5, :cond_12

    .line 134
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 138
    :cond_12
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 142
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    .line 146
    .end local v2    # "j":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;
    :cond_20
    return-object v4
.end method


# virtual methods
.method protected final getInterval()I
    .registers 2

    .prologue
    .line 165
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mInterval:I

    return v0
.end method

.method public final parse([BI)I
    .registers 13
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v9, -0x1

    .line 66
    move v6, p2

    .line 68
    .local v6, "tmpNext":I
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap()Z

    move-result v8

    if-nez v8, :cond_a

    move v7, v9

    .line 121
    :goto_9
    return v7

    .line 72
    :cond_a
    array-length v8, p1

    sub-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_12

    move v7, v9

    .line 73
    goto :goto_9

    .line 76
    :cond_12
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "tmpNext":I
    .local v7, "tmpNext":I
    aget-byte v2, p1, v6

    .line 77
    .local v2, "loggingStatus":I
    const/4 v8, 0x2

    if-eq v2, v8, :cond_28

    const/4 v8, 0x1

    if-eq v2, v8, :cond_28

    .line 79
    sget-object v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_ENVIRONMENT_LOGGING_STATE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v6, v7

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    move v7, v9

    .line 81
    goto :goto_9

    .line 84
    .end local v6    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :cond_28
    array-length v8, p1

    sub-int/2addr v8, v7

    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_31

    move v6, v7

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    move v7, v9

    .line 85
    goto :goto_9

    .line 88
    .end local v6    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :cond_31
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    aget-byte v3, p1, v7

    .line 89
    .local v3, "packageCount":I
    if-gtz v3, :cond_42

    .line 90
    sget-object v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_ENVIRONMENT_PACKAGE_SIZE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v7, v9

    .line 92
    goto :goto_9

    .line 95
    :cond_42
    const/4 v0, 0x0

    .local v0, "i":I
    move v7, v6

    .end local v6    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :goto_44
    if-ge v0, v3, :cond_74

    .line 96
    array-length v8, p1

    sub-int/2addr v8, v7

    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_4f

    move v6, v7

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    move v7, v9

    .line 97
    goto :goto_9

    .line 100
    .end local v6    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :cond_4f
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    aget-byte v5, p1, v7

    .line 102
    .local v5, "sensorType":I
    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->getParserKey(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_5d

    .line 95
    :cond_59
    :goto_59
    add-int/lit8 v0, v0, 0x1

    move v7, v6

    .end local v6    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    goto :goto_44

    .line 107
    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    :cond_5d
    invoke-super {p0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 111
    invoke-super {p0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v4

    .line 112
    .local v4, "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-eqz v4, :cond_59

    move-object v8, v4

    .line 116
    check-cast v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;

    invoke-virtual {v8, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->setLoggingStatus(I)V

    .line 118
    invoke-interface {v4, p1, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v6

    goto :goto_59

    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    .end local v5    # "sensorType":I
    .end local v6    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :cond_74
    move v6, v7

    .line 121
    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    goto :goto_9
.end method

.method protected final setInterval(I)V
    .registers 2
    .param p1, "interval"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mInterval:I

    .line 157
    return-void
.end method
