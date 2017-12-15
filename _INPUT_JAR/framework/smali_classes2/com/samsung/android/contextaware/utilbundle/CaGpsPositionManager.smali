.class public Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;
.super Ljava/lang/Object;
.source "CaGpsPositionManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ICurrentPositionObservable;
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# instance fields
.field private mDisabler:Landroid/os/Handler;

.field private mEnable:Z

.field private mGpsManager:Landroid/location/LocationManager;

.field private mGpsTime:J

.field private final mLocationListener:Landroid/location/LocationListener;

.field private final mLooper:Landroid/os/Looper;

.field private mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

.field private preLatitude:D

.field private preLongitude:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "observer"    # Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .prologue
    const-wide/16 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsTime:J

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    .line 53
    iput-wide v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLatitude:D

    .line 56
    iput-wide v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLongitude:D

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    .line 122
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLocationListener:Landroid/location/LocationListener;

    .line 73
    iput-object p2, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    .line 74
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->initializeManager(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p0, p3}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->registerCurrentPositionObserver(Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)Landroid/location/LocationListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)Landroid/location/LocationManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;Landroid/location/Location;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->notifyListener(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;D)D
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;
    .param p1, "x1"    # D

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLatitude:D

    return-wide p1
.end method

.method static synthetic access$402(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;D)D
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;
    .param p1, "x1"    # D

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLongitude:D

    return-wide p1
.end method

.method static synthetic access$500(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method private notifyListener(Landroid/location/Location;)V
    .registers 21
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v2, :cond_7

    .line 190
    :goto_6
    return-void

    .line 170
    :cond_7
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v18

    .line 173
    .local v18, "utcTime":[I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    .line 175
    .local v17, "bun":Landroid/os/Bundle;
    const/16 v16, 0x0

    .line 176
    .local v16, "numSat":I
    if-eqz v17, :cond_20

    .line 177
    const-string/jumbo v2, "satellites"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 180
    :cond_20
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLatitude:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLongitude:D

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->calculationDistance(DDDD)D

    move-result-wide v12

    .line 184
    .local v12, "distance":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    move-object/from16 v5, v18

    invoke-interface/range {v3 .. v16}, Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_6
.end method


# virtual methods
.method public disable()V
    .registers 5

    .prologue
    .line 241
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_a

    .line 242
    const-string v0, "cannot unregister the gps listener"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 266
    :cond_9
    :goto_9
    return-void

    .line 246
    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    if-eqz v0, :cond_9

    .line 250
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 252
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$5;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    .line 262
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    .line 263
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public final enable()V
    .registers 5

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_a

    .line 197
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 235
    :goto_9
    return-void

    .line 201
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_14

    .line 202
    const-string v0, "Looper is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_9

    .line 206
    :cond_14
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    if-eqz v0, :cond_20

    .line 207
    const-string v0, "mEnable value is true."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->disable()V

    .line 211
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    .line 214
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    if-eqz v0, :cond_2d

    .line 215
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 218
    :cond_2d
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$3;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    .line 228
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$4;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    iget-wide v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_13

    .line 92
    const-string v0, "cannot create the GpsManager object"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 95
    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    .line 96
    return-void
.end method

.method public isEnable()Z
    .registers 2

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    return v0
.end method

.method public notifyCurrentPositionObserver()V
    .registers 1

    .prologue
    .line 297
    return-void
.end method

.method public registerCurrentPositionObserver(Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V
    .registers 2
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .line 286
    return-void
.end method

.method public setGpsUpdateTime(J)V
    .registers 4
    .param p1, "time"    # J

    .prologue
    .line 278
    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsTime:J

    .line 279
    return-void
.end method

.method public final terminateManager()V
    .registers 5

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_a

    .line 109
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 119
    :goto_9
    return-void

    .line 113
    :cond_a
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method

.method public unregisterCurrentPositionObserver()V
    .registers 2

    .prologue
    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .line 292
    return-void
.end method
