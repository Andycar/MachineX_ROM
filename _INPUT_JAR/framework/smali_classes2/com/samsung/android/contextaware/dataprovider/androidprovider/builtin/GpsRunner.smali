.class public Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/GpsRunner;
.super Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;
.source "GpsRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 5
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final disable()V
    .registers 1

    .prologue
    .line 133
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 134
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->disable()V

    .line 135
    return-void
.end method

.method public final enable()V
    .registers 1

    .prologue
    .line 120
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 121
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->enable()V

    .line 122
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 73
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Altitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Bearing"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Speed"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Accuracy"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Valid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SVCount"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/GpsRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 147
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getLocationProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string v0, "gps"

    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .registers 1

    .prologue
    .line 96
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .registers 1

    .prologue
    .line 108
    return-object p0
.end method
