.class Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;
.super Lcom/samsung/android/contextaware/utilbundle/autotest/OperationDebugging;
.source "SensorHubOperationDebugging.java"


# instance fields
.field private final mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delayTime"    # I

    .prologue
    .line 42
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/utilbundle/autotest/OperationDebugging;-><init>(I)V

    .line 43
    const-string/jumbo v0, "sensorhub"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sensorhub/SensorHubManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    .line 45
    return-void
.end method


# virtual methods
.method protected final doDebugging([B)V
    .registers 6
    .param p1, "packet"    # [B

    .prologue
    .line 56
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    if-nez v1, :cond_5

    .line 68
    :goto_4
    return-void

    .line 59
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Lcom/samsung/android/sensorhub/SensorHub;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v1, v2, v3, p1}, Lcom/samsung/android/sensorhub/SensorHubManager;->SendSensorHubData(Lcom/samsung/android/sensorhub/SensorHub;I[B)I

    move-result v0

    .line 63
    .local v0, "result":I
    if-gtz v0, :cond_1b

    .line 64
    const-string v1, "fail to send cmd to SensorHub"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_4

    .line 66
    :cond_1b
    const-string/jumbo v1, "success to send cmd to SensorHub"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_4
.end method
