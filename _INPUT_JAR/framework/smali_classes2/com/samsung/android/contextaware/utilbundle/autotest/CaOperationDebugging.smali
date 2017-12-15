.class Lcom/samsung/android/contextaware/utilbundle/autotest/CaOperationDebugging;
.super Lcom/samsung/android/contextaware/utilbundle/autotest/OperationDebugging;
.source "CaOperationDebugging.java"


# direct methods
.method protected constructor <init>(I)V
    .registers 2
    .param p1, "delayTime"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/autotest/OperationDebugging;-><init>(I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected final doDebugging([B)V
    .registers 3
    .param p1, "packet"    # [B

    .prologue
    .line 45
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseForScenarioTesting([B)V

    .line 46
    return-void
.end method
