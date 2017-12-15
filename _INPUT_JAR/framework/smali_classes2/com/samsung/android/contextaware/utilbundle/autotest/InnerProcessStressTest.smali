.class abstract Lcom/samsung/android/contextaware/utilbundle/autotest/InnerProcessStressTest;
.super Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;
.source "InnerProcessStressTest.java"


# direct methods
.method protected constructor <init>(I)V
    .registers 2
    .param p1, "delayTime"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;-><init>(I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract getPacket(I)[B
.end method

.method public final run()V
    .registers 9

    .prologue
    .line 55
    const/4 v5, 0x0

    .line 59
    .local v5, "packet":[B
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/InnerProcessStressTest;->getDelayTime()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 61
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/contextaware/utilbundle/autotest/InnerProcessStressTest;->getPacket(I)[B

    move-result-object v5

    .line 62
    if-eqz v5, :cond_1

    array-length v6, v5

    if-lez v6, :cond_1

    .line 66
    move-object v0, v5

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1f
    if-ge v3, v4, :cond_40

    aget-byte v2, v0, v3

    .line 67
    .local v2, "i":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Packet = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 70
    .end local v2    # "i":I
    :cond_40
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseForScenarioTesting([B)V

    .line 73
    invoke-super {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;->isStopTest()Z
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4a} :catch_4e

    move-result v6

    if-eqz v6, :cond_1

    .line 80
    .end local v0    # "arr$":[B
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_4d
    return-void

    .line 77
    :catch_4e
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_4d
.end method
