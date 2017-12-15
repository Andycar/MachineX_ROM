.class Lcom/samsung/android/contextaware/utilbundle/autotest/ApPowerStressTest;
.super Lcom/samsung/android/contextaware/utilbundle/autotest/InnerProcessStressTest;
.source "ApPowerStressTest.java"


# direct methods
.method protected constructor <init>(I)V
    .registers 2
    .param p1, "delayTime"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/autotest/InnerProcessStressTest;-><init>(I)V

    .line 38
    return-void
.end method

.method private getPacket(B)[B
    .registers 5
    .param p1, "status"    # B

    .prologue
    .line 71
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 73
    .local v0, "packet":[B
    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_NOTI:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    aput-byte v2, v0, v1

    .line 74
    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    aput-byte v2, v0, v1

    .line 75
    const/4 v1, 0x2

    aput-byte p1, v0, v1

    .line 77
    return-object v0
.end method


# virtual methods
.method protected final getPacket(I)[B
    .registers 4
    .param p1, "service"    # I

    .prologue
    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 51
    packed-switch p1, :pswitch_data_20

    .line 60
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_10
    return-object v0

    .line 53
    :pswitch_11
    const/16 v0, -0x2f

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/autotest/ApPowerStressTest;->getPacket(B)[B

    move-result-object v0

    goto :goto_10

    .line 55
    :pswitch_18
    const/16 v0, -0x2e

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/autotest/ApPowerStressTest;->getPacket(B)[B

    move-result-object v0

    goto :goto_10

    .line 51
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_11
        :pswitch_18
    .end packed-switch
.end method
