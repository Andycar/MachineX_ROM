.class public abstract Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;
.super Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;
.source "RawSensorProvider.java"


# static fields
.field protected static final DEFAULT_SENSOR_RATE:I = 0xea60


# instance fields
.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensorRate:I


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V
    .registers 7
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .param p5, "rate"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 64
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 60
    iput p5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorRate:I

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method private registerSensorListener()V
    .registers 5

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_e

    .line 136
    :cond_8
    const-string v0, "cannot register the sensor listener"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 142
    :goto_d
    return-void

    .line 140
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->getSensorType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_d
.end method


# virtual methods
.method public disable()V
    .registers 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->unregisterSensorListener()V

    .line 122
    return-void
.end method

.method public enable()V
    .registers 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->registerSensorListener()V

    .line 112
    return-void
.end method

.method protected abstract getSensorType()I
.end method

.method protected final initializeManager()V
    .registers 3

    .prologue
    .line 165
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_c

    .line 166
    const-string v0, "mContext is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 176
    :cond_b
    :goto_b
    return-void

    .line 170
    :cond_c
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    .line 173
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_b

    .line 174
    const-string v0, "cannot create the SensorManager object"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_b
.end method

.method protected final terminateManager()V
    .registers 2

    .prologue
    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    .line 188
    return-void
.end method

.method protected unregisterSensorListener()V
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_e

    .line 149
    :cond_8
    const-string v0, "cannot unregister the sensor listener"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 154
    :goto_d
    return-void

    .line 153
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_d
.end method
