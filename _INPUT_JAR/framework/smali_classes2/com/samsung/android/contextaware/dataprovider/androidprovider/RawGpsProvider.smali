.class public abstract Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;
.super Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;
.source "RawGpsProvider.java"


# static fields
.field private static final GPS_MIN_DISTANCE:F = 0.0f

.field private static final GPS_MIN_TIME:J = 0x3e8L


# instance fields
.field private mGpsManager:Landroid/location/LocationManager;

.field private final mGpsStatusListener:Landroid/location/GpsStatus$Listener;

.field private final mLocationListener:Landroid/location/LocationListener;


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 6
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 66
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    .line 179
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$2;-><init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Ljava/util/Iterator;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsSatellites()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method private getGpsSatellites()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 331
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    if-nez v1, :cond_6

    .line 335
    :goto_5
    return-object v0

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_5
.end method


# virtual methods
.method public disable()V
    .registers 5

    .prologue
    .line 251
    new-instance v0, Landroid/os/Handler;

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$4;-><init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    return-void
.end method

.method public enable()V
    .registers 5

    .prologue
    .line 236
    new-instance v0, Landroid/os/Handler;

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$3;-><init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    return-void
.end method

.method protected final getGpsManager()Landroid/location/LocationManager;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method protected final getGpsStatusListener()Landroid/location/GpsStatus$Listener;
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    return-object v0
.end method

.method protected abstract getLocationProvider()Ljava/lang/String;
.end method

.method protected initializeManager()V
    .registers 3

    .prologue
    .line 302
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_c

    .line 303
    const-string v0, "mContext is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 312
    :cond_b
    :goto_b
    return-void

    .line 306
    :cond_c
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    .line 309
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_b

    .line 310
    const-string v0, "cannot create the GpsManager object"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_b
.end method

.method protected registerGpsListener()V
    .registers 8

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getLocationProvider()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "provider":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_16

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_16

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 266
    :cond_16
    const-string v0, "cannot register the gps listener"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 272
    :goto_1b
    return-void

    .line 270
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_1b
.end method

.method protected final terminateManager()V
    .registers 1

    .prologue
    .line 323
    return-void
.end method

.method protected unregisterGpsListener()V
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_a

    .line 279
    const-string v0, "cannot unregister the gps listener"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 284
    :goto_9
    return-void

    .line 283
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_9
.end method
