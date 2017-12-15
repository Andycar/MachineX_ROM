.class Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;
.source "ExtLibTypeParser.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;-><init>()V

    return-void
.end method

.method private parseForActivityTracker([BI)I
    .registers 14
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v8, -0x1

    .line 151
    move v6, p2

    .line 153
    .local v6, "tmpNext":I
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$ACTIVITY_TRACKER_EXT_LIB_TYPE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$ACTIVITY_TRACKER_EXT_LIB_TYPE;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$ACTIVITY_TRACKER_EXT_LIB_TYPE;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v3, :cond_5f

    aget-object v1, v0, v2

    .line 155
    .local v1, "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$ACTIVITY_TRACKER_EXT_LIB_TYPE;
    array-length v9, p1

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_1c

    .line 156
    sget-object v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 182
    .end local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$ACTIVITY_TRACKER_EXT_LIB_TYPE;
    :goto_1b
    return v8

    .line 159
    .restart local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$ACTIVITY_TRACKER_EXT_LIB_TYPE;
    :cond_1c
    aget-byte v9, p1, v6

    iget-byte v10, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$ACTIVITY_TRACKER_EXT_LIB_TYPE;->value:B

    if-eq v9, v10, :cond_25

    .line 153
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 163
    :cond_25
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$ACTIVITY_TRACKER_EXT_LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-super {p0, v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v5

    .line 164
    .local v5, "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-eqz v5, :cond_22

    .line 168
    array-length v9, p1

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_3f

    .line 169
    sget-object v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_1b

    .line 172
    :cond_3f
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "tmpNext":I
    .local v7, "tmpNext":I
    aget-byte v4, p1, v6

    .line 173
    .local v4, "mode":I
    sget-object v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->NORMAL_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v9, v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v9, v4

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->NORMAL_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v10, v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-eq v9, v10, :cond_59

    .line 174
    sget-object v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_MODE_FAULT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v6, v7

    .line 175
    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    goto :goto_1b

    .line 178
    .end local v6    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :cond_59
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    invoke-interface {v5, p1, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v6

    .end local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$ACTIVITY_TRACKER_EXT_LIB_TYPE;
    .end local v4    # "mode":I
    .end local v5    # "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    :cond_5f
    move v8, v6

    .line 182
    goto :goto_1b
.end method

.method private parseForPedometer([BI)I
    .registers 11
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 118
    move v5, p2

    .line 120
    .local v5, "tmpNext":I
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v3, :cond_35

    aget-object v1, v0, v2

    .line 121
    .local v1, "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;
    array-length v6, p1

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_1c

    .line 122
    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 123
    const/4 v6, -0x1

    .line 138
    .end local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;
    :goto_1b
    return v6

    .line 125
    .restart local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;
    :cond_1c
    aget-byte v6, p1, v5

    iget-byte v7, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;->value:B

    if-eq v6, v7, :cond_25

    .line 120
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 129
    :cond_25
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-super {p0, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v4

    .line 130
    .local v4, "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-eqz v4, :cond_22

    .line 134
    add-int/lit8 v5, v5, 0x1

    invoke-interface {v4, p1, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v5

    .end local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$PEDOMETER_EXT_LIB_TYPE;
    .end local v4    # "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    :cond_35
    move v6, v5

    .line 138
    goto :goto_1b
.end method

.method private parseForPositioning([BI)I
    .registers 11
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 85
    move v5, p2

    .line 87
    .local v5, "tmpNext":I
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v3, :cond_35

    aget-object v1, v0, v2

    .line 88
    .local v1, "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;
    array-length v6, p1

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_1c

    .line 89
    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 90
    const/4 v6, -0x1

    .line 105
    .end local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;
    :goto_1b
    return v6

    .line 92
    .restart local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;
    :cond_1c
    aget-byte v6, p1, v5

    iget-byte v7, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;->value:B

    if-eq v6, v7, :cond_25

    .line 87
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 96
    :cond_25
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-super {p0, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v4

    .line 97
    .local v4, "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-eqz v4, :cond_22

    .line 101
    add-int/lit8 v5, v5, 0x1

    invoke-interface {v4, p1, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v5

    .end local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$POSITIONING_EXT_LIB_TYPE;
    .end local v4    # "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    :cond_35
    move v6, v5

    .line 105
    goto :goto_1b
.end method

.method private parseForSleepMonitorTracker([BI)I
    .registers 14
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v8, -0x1

    .line 195
    move v6, p2

    .line 197
    .local v6, "tmpNext":I
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SLEEP_MONITOR_EXT_LIB_TYPE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SLEEP_MONITOR_EXT_LIB_TYPE;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SLEEP_MONITOR_EXT_LIB_TYPE;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v3, :cond_5f

    aget-object v1, v0, v2

    .line 199
    .local v1, "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SLEEP_MONITOR_EXT_LIB_TYPE;
    array-length v9, p1

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_1c

    .line 200
    sget-object v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 226
    .end local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SLEEP_MONITOR_EXT_LIB_TYPE;
    :goto_1b
    return v8

    .line 203
    .restart local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SLEEP_MONITOR_EXT_LIB_TYPE;
    :cond_1c
    aget-byte v9, p1, v6

    iget-byte v10, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SLEEP_MONITOR_EXT_LIB_TYPE;->value:B

    if-eq v9, v10, :cond_25

    .line 197
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 207
    :cond_25
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SLEEP_MONITOR_EXT_LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-super {p0, v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v5

    .line 208
    .local v5, "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-eqz v5, :cond_22

    .line 212
    array-length v9, p1

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_3f

    .line 213
    sget-object v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_1b

    .line 216
    :cond_3f
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "tmpNext":I
    .local v7, "tmpNext":I
    aget-byte v4, p1, v6

    .line 217
    .local v4, "mode":I
    sget-object v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->NORMAL_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v9, v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v9, v4

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->NORMAL_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v10, v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-eq v9, v10, :cond_59

    .line 218
    sget-object v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_MODE_FAULT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v6, v7

    .line 219
    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    goto :goto_1b

    .line 222
    .end local v6    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :cond_59
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    invoke-interface {v5, p1, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v6

    .end local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SLEEP_MONITOR_EXT_LIB_TYPE;
    .end local v4    # "mode":I
    .end local v5    # "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    :cond_5f
    move v8, v6

    .line 226
    goto :goto_1b
.end method


# virtual methods
.method public final parse([BI)I
    .registers 10
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 42
    move v4, p2

    .line 44
    .local v4, "tmpNext":I
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v3, :cond_3b

    aget-object v1, v0, v2

    .line 45
    .local v1, "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    array-length v5, p1

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_1c

    .line 46
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 47
    const/4 v5, -0x1

    .line 72
    .end local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    :goto_1b
    return v5

    .line 49
    .restart local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    :cond_1c
    aget-byte v5, p1, v4

    iget-byte v6, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->value:B

    if-eq v5, v6, :cond_25

    .line 44
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 53
    :cond_25
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_MOVEMENT_FOR_POSITIONING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 55
    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;->parseForPositioning([BI)I

    move-result v4

    .end local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    :cond_3b
    :goto_3b
    move v5, v4

    .line 72
    goto :goto_1b

    .line 56
    .restart local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    :cond_3d
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_PEDOMETER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 58
    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;->parseForPedometer([BI)I

    move-result v4

    goto :goto_3b

    .line 59
    :cond_54
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_ACTIVITY_TRACKER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 61
    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;->parseForActivityTracker([BI)I

    move-result v4

    goto :goto_3b

    .line 62
    :cond_6b
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_SLEEP_MONITOR:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 64
    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;->parseForSleepMonitorTracker([BI)I

    move-result v4

    goto :goto_3b
.end method
