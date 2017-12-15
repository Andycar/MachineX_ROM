.class public abstract Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.source "LibTypeProvider.java"


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 5
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected final getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .prologue
    .line 78
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_NOT_SUPPORT_CMD:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method protected final getInstructionForDisable()B
    .registers 2

    .prologue
    .line 66
    const/16 v0, -0x4e

    return v0
.end method

.method protected final getInstructionForEnable()B
    .registers 2

    .prologue
    .line 55
    const/16 v0, -0x4f

    return v0
.end method
