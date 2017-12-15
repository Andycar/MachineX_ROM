.class public abstract Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;
.source "SensorHubModeHandler.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;-><init>()V

    return-void
.end method

.method private isDuplicatedMode(I)Z
    .registers 11
    .param p1, "mode"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "duplicated":I
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_9
    if-ge v3, v4, :cond_27

    aget-object v2, v0, v3

    .line 92
    .local v2, "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v5, v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v5, p1

    sget-object v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v5, v8, :cond_1b

    .line 91
    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 95
    :cond_1b
    iget-byte v5, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v5, p1

    iget-byte v8, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v5, v8, :cond_25

    move v5, v6

    :goto_23
    add-int/2addr v1, v5

    goto :goto_18

    :cond_25
    move v5, v7

    goto :goto_23

    .line 98
    .end local v2    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    :cond_27
    if-le v1, v6, :cond_2a

    :goto_29
    return v6

    :cond_2a
    move v6, v7

    goto :goto_29
.end method

.method private parse([BILjava/lang/String;)I
    .registers 8
    .param p1, "packet"    # [B
    .param p2, "next"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 156
    move v1, p2

    .line 158
    .local v1, "tmpNext":I
    invoke-super {p0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 169
    :cond_8
    :goto_8
    return v2

    .line 162
    :cond_9
    invoke-super {p0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v0

    .line 163
    .local v0, "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-eqz v0, :cond_8

    .line 167
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v1

    move v2, v1

    .line 169
    goto :goto_8
.end method

.method private parseDuplicatedMode(I[BI)I
    .registers 14
    .param p1, "mode"    # I
    .param p2, "packet"    # [B
    .param p3, "next"    # I

    .prologue
    const/4 v7, -0x1

    .line 114
    move v6, p3

    .line 115
    .local v6, "tmpNext":I
    move v5, p3

    .line 116
    .local v5, "repeateNext":I
    const/4 v3, 0x0

    .line 118
    .local v3, "key":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_a
    if-ge v2, v4, :cond_3f

    aget-object v1, v0, v2

    .line 119
    .local v1, "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    sget-object v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v8, p1

    sget-object v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v9, v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v8, v9, :cond_1c

    .line 118
    :cond_19
    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 122
    :cond_1c
    iget-byte v8, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v8, p1

    iget-byte v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v8, v9, :cond_19

    .line 123
    iget-byte v8, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    invoke-virtual {p0, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->getParserKey(I)Ljava/lang/String;

    move-result-object v3

    .line 124
    if-nez v3, :cond_3a

    .line 125
    sget-object v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v6, v7

    .line 141
    .end local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    .end local v6    # "tmpNext":I
    :cond_39
    :goto_39
    return v6

    .line 130
    .restart local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    .restart local v6    # "tmpNext":I
    :cond_3a
    invoke-direct {p0, p2, v5, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->parse([BILjava/lang/String;)I

    move-result v6

    goto :goto_19

    .line 134
    .end local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    :cond_3f
    if-ne v6, v5, :cond_39

    .line 135
    sget-object v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v6, v7

    .line 138
    goto :goto_39
.end method


# virtual methods
.method protected abstract getModeList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected final getParserKey(I)Ljava/lang/String;
    .registers 8
    .param p1, "type"    # I

    .prologue
    .line 180
    const/4 v4, 0x0

    .line 182
    .local v4, "parserKey":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v3, :cond_20

    aget-object v2, v0, v1

    .line 183
    .local v2, "j":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    iget-byte v5, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-eq p1, v5, :cond_12

    .line 182
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 186
    :cond_12
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 190
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->toString()Ljava/lang/String;

    move-result-object v4

    .line 194
    .end local v2    # "j":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    :cond_20
    return-object v4
.end method

.method protected final isRunning()Z
    .registers 6

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->getModeList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    .line 204
    .local v2, "modeList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 206
    .local v3, "running":Z
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 208
    .local v1, "mode":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_9

    .line 209
    const/4 v3, 0x1

    .line 213
    .end local v1    # "mode":Ljava/lang/String;
    .end local v3    # "running":Z
    :cond_20
    return v3
.end method

.method public final parse([BI)I
    .registers 14
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v8, -0x1

    .line 48
    move v6, p2

    .line 50
    .local v6, "tmpNext":I
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap()Z

    move-result v9

    if-nez v9, :cond_9

    .line 78
    :cond_8
    :goto_8
    return v8

    .line 54
    :cond_9
    array-length v9, p1

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_8

    .line 58
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "tmpNext":I
    .local v7, "tmpNext":I
    aget-byte v5, p1, v6

    .line 60
    .local v5, "mode":I
    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->isDuplicatedMode(I)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 61
    invoke-direct {p0, v5, p1, v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->parseDuplicatedMode(I[BI)I

    move-result v8

    move v6, v7

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    goto :goto_8

    .line 64
    .end local v6    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :cond_1f
    const/4 v3, 0x0

    .line 65
    .local v3, "key":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_26
    if-ge v2, v4, :cond_35

    aget-object v1, v0, v2

    .line 66
    .local v1, "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    iget-byte v9, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v9, v5

    iget-byte v10, v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v9, v10, :cond_46

    .line 67
    invoke-virtual {p0, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->getParserKey(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    .end local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    :cond_35
    if-nez v3, :cond_49

    .line 72
    sget-object v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v6, v7

    .line 75
    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    goto :goto_8

    .line 65
    .end local v6    # "tmpNext":I
    .restart local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    .restart local v7    # "tmpNext":I
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 78
    .end local v1    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    :cond_49
    invoke-direct {p0, p1, v7, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->parse([BILjava/lang/String;)I

    move-result v8

    move v6, v7

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    goto :goto_8
.end method
