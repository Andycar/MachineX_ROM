.class public Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/SatelliteRunner;
.super Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;
.source "SatelliteRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 5
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final disable()V
    .registers 1

    .prologue
    .line 165
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 166
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->disable()V

    .line 167
    return-void
.end method

.method public final enable()V
    .registers 1

    .prologue
    .line 152
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 153
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->enable()V

    .line 154
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 71
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NumSat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Prn"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Snr"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "El"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Az"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Mask"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/builtin/SatelliteRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 179
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getLocationProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .registers 1

    .prologue
    .line 116
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .registers 1

    .prologue
    .line 128
    return-object p0
.end method

.method protected final registerGpsListener()V
    .registers 3

    .prologue
    .line 83
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsManager()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_d

    .line 89
    :cond_c
    :goto_c
    return-void

    .line 87
    :cond_d
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsManager()Landroid/location/LocationManager;

    move-result-object v0

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsStatusListener()Landroid/location/GpsStatus$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    goto :goto_c
.end method

.method protected final unregisterGpsListener()V
    .registers 3

    .prologue
    .line 100
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsManager()Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 106
    :goto_6
    return-void

    .line 104
    :cond_7
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsManager()Landroid/location/LocationManager;

    move-result-object v0

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsStatusListener()Landroid/location/GpsStatus$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    goto :goto_6
.end method
