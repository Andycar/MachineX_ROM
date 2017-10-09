.class final Lcom/android/server/twilight/TwilightService$LocationHandler;
.super Landroid/os/Handler;
.source "TwilightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/twilight/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocationHandler"
.end annotation


# static fields
.field private static final FACTOR_GMT_OFFSET_LONGITUDE:D = 0.004166666666666667

.field private static final LOCATION_UPDATE_DISTANCE_METER:F = 20000.0f

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MAX:J = 0xdbba0L

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MIN:J = 0x1388L

.field private static final LOCATION_UPDATE_MS:J = 0x5265c00L

.field private static final MIN_LOCATION_UPDATE_MS:J = 0x1b7740L

.field private static final MSG_DO_TWILIGHT_UPDATE:I = 0x4

.field private static final MSG_ENABLE_LOCATION_UPDATES:I = 0x1

.field private static final MSG_GET_NEW_LOCATION_UPDATE:I = 0x2

.field private static final MSG_PROCESS_NEW_LOCATION:I = 0x3


# instance fields
.field private mDidFirstInit:Z

.field private mLastNetworkRegisterTime:J

.field private mLastUpdateInterval:J

.field private mLocation:Landroid/location/Location;

.field private mNetworkListenerEnabled:Z

.field private mPassiveListenerEnabled:Z

.field private final mTwilightCalculator:Lcom/android/server/TwilightCalculator;

.field final synthetic this$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method private constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .registers 4

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 199
    const-wide/32 v0, -0x1b7740

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    .line 202
    new-instance v0, Lcom/android/server/TwilightCalculator;

    invoke-direct {v0}, Lcom/android/server/TwilightCalculator;-><init>()V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/twilight/TwilightService;
    .param p2, "x1"    # Lcom/android/server/twilight/TwilightService$1;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/twilight/TwilightService$LocationHandler;-><init>(Lcom/android/server/twilight/TwilightService;)V

    return-void
.end method

.method private retrieveLocation()V
    .registers 13

    .prologue
    .line 321
    const/4 v4, 0x0

    .line 322
    .local v4, "location":Landroid/location/Location;
    iget-object v6, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v6, v6, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 324
    .local v5, "providers":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_13
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 325
    iget-object v6, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v7, v6, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 328
    .local v1, "lastKnownLocation":Landroid/location/Location;
    if-eqz v4, :cond_37

    if-eqz v1, :cond_13

    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_13

    .line 331
    :cond_37
    move-object v4, v1

    goto :goto_13

    .line 338
    .end local v1    # "lastKnownLocation":Landroid/location/Location;
    :cond_39
    if-nez v4, :cond_7d

    .line 339
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 340
    .local v0, "currentTime":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 341
    const-wide v8, 0x3f71111111111111L    # 0.004166666666666667

    iget-wide v10, v0, Landroid/text/format/Time;->gmtoff:J

    iget v6, v0, Landroid/text/format/Time;->isDst:I

    if-lez v6, :cond_81

    const/16 v6, 0xe10

    :goto_54
    int-to-long v6, v6

    sub-long v6, v10, v6

    long-to-double v6, v6

    mul-double v2, v8, v6

    .line 343
    .local v2, "lngOffset":D
    new-instance v4, Landroid/location/Location;

    .end local v4    # "location":Landroid/location/Location;
    const-string v6, "fake"

    invoke-direct {v4, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 344
    .restart local v4    # "location":Landroid/location/Location;
    invoke-virtual {v4, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 345
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 346
    const v6, 0x48cb9d00    # 417000.0f

    invoke-virtual {v4, v6}, Landroid/location/Location;->setAccuracy(F)V

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setTime(J)V

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 355
    .end local v0    # "currentTime":Landroid/text/format/Time;
    .end local v2    # "lngOffset":D
    :cond_7d
    invoke-direct {p0, v4}, Lcom/android/server/twilight/TwilightService$LocationHandler;->setLocation(Landroid/location/Location;)V

    .line 356
    return-void

    .line 341
    .restart local v0    # "currentTime":Landroid/text/format/Time;
    :cond_81
    const/4 v6, 0x0

    goto :goto_54
.end method

.method private setLocation(Landroid/location/Location;)V
    .registers 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    .line 360
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->updateTwilightState()V

    .line 361
    return-void
.end method

.method private updateTwilightState()V
    .registers 27

    .prologue
    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    if-nez v3, :cond_f

    .line 365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/twilight/TwilightService;->setTwilightState(Lcom/android/server/twilight/TwilightState;)V
    invoke-static {v3, v4}, Lcom/android/server/twilight/TwilightService;->access$400(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    .line 423
    :goto_e
    return-void

    .line 369
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 372
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    const-wide/32 v4, 0x5265c00

    sub-long v4, v16, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunset:J

    move-wide/from16 v24, v0

    .line 377
    .local v24, "yesterdaySunset":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    move-wide/from16 v4, v16

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget v3, v3, Lcom/android/server/TwilightCalculator;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e0

    const/4 v12, 0x1

    .line 380
    .local v12, "isNight":Z
    :goto_5a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunrise:J

    move-wide/from16 v18, v0

    .line 381
    .local v18, "todaySunrise":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunset:J

    move-wide/from16 v20, v0

    .line 384
    .local v20, "todaySunset":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    const-wide/32 v4, 0x5265c00

    add-long v4, v4, v16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 386
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v10, v3, Lcom/android/server/TwilightCalculator;->mSunrise:J

    .line 389
    .local v10, "tomorrowSunrise":J
    new-instance v2, Lcom/android/server/twilight/TwilightState;

    move v3, v12

    move-wide/from16 v4, v24

    move-wide/from16 v6, v18

    move-wide/from16 v8, v20

    invoke-direct/range {v2 .. v11}, Lcom/android/server/twilight/TwilightState;-><init>(ZJJJJ)V

    .line 394
    .local v2, "state":Lcom/android/server/twilight/TwilightState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    # invokes: Lcom/android/server/twilight/TwilightService;->setTwilightState(Lcom/android/server/twilight/TwilightState;)V
    invoke-static {v3, v2}, Lcom/android/server/twilight/TwilightService;->access$400(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    .line 397
    const-wide/16 v14, 0x0

    .line 398
    .local v14, "nextUpdate":J
    const-wide/16 v4, -0x1

    cmp-long v3, v18, v4

    if-eqz v3, :cond_ad

    const-wide/16 v4, -0x1

    cmp-long v3, v20, v4

    if-nez v3, :cond_e3

    .line 400
    :cond_ad
    const-wide/32 v4, 0x2932e00

    add-long v14, v16, v4

    .line 418
    :goto_b2
    new-instance v22, Landroid/content/Intent;

    const-string v3, "com.android.server.action.UPDATE_TWILIGHT_STATE"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .local v22, "updateIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 421
    .local v13, "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v3, v3, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v3, v3, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v14, v15, v13}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_e

    .line 379
    .end local v2    # "state":Lcom/android/server/twilight/TwilightState;
    .end local v10    # "tomorrowSunrise":J
    .end local v12    # "isNight":Z
    .end local v13    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v14    # "nextUpdate":J
    .end local v18    # "todaySunrise":J
    .end local v20    # "todaySunset":J
    .end local v22    # "updateIntent":Landroid/content/Intent;
    :cond_e0
    const/4 v12, 0x0

    goto/16 :goto_5a

    .line 403
    .restart local v2    # "state":Lcom/android/server/twilight/TwilightState;
    .restart local v10    # "tomorrowSunrise":J
    .restart local v12    # "isNight":Z
    .restart local v14    # "nextUpdate":J
    .restart local v18    # "todaySunrise":J
    .restart local v20    # "todaySunset":J
    :cond_e3
    const-wide/32 v4, 0xea60

    add-long/2addr v14, v4

    .line 405
    cmp-long v3, v16, v20

    if-lez v3, :cond_ed

    .line 406
    add-long/2addr v14, v10

    goto :goto_b2

    .line 407
    :cond_ed
    cmp-long v3, v16, v18

    if-lez v3, :cond_f4

    .line 408
    add-long v14, v14, v20

    goto :goto_b2

    .line 410
    :cond_f4
    add-long v14, v14, v18

    goto :goto_b2
.end method


# virtual methods
.method public enableLocationUpdates()V
    .registers 2

    .prologue
    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    .line 211
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 223
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_f2

    .line 318
    :cond_5
    :goto_5
    return-void

    .line 225
    :pswitch_6
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/location/Location;

    .line 226
    .local v9, "location":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    # invokes: Lcom/android/server/twilight/TwilightService;->hasMoved(Landroid/location/Location;Landroid/location/Location;)Z
    invoke-static {v0, v9}, Lcom/android/server/twilight/TwilightService;->access$100(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v8

    .line 227
    .local v8, "hasMoved":Z
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_22

    invoke-virtual {v9}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2b

    :cond_22
    const/4 v7, 0x1

    .line 234
    .local v7, "hasBetterAccuracy":Z
    :goto_23
    if-nez v8, :cond_27

    if-eqz v7, :cond_5

    .line 235
    :cond_27
    invoke-direct {p0, v9}, Lcom/android/server/twilight/TwilightService$LocationHandler;->setLocation(Landroid/location/Location;)V

    goto :goto_5

    .line 227
    .end local v7    # "hasBetterAccuracy":Z
    :cond_2b
    const/4 v7, 0x0

    goto :goto_23

    .line 241
    .end local v8    # "hasMoved":Z
    .end local v9    # "location":Landroid/location/Location;
    :pswitch_2d
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    if-eqz v0, :cond_5

    .line 246
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    .line 256
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    # getter for: Lcom/android/server/twilight/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->access$200(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 264
    :pswitch_4f
    :try_start_4f
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_58} :catch_d7

    move-result v10

    .line 271
    .local v10, "networkLocationEnabled":Z
    :goto_59
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    if-nez v0, :cond_89

    if-eqz v10, :cond_89

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    .line 274
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0x5265c00

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    # getter for: Lcom/android/server/twilight/TwilightService;->mEmptyLocationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lcom/android/server/twilight/TwilightService;->access$200(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 277
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mDidFirstInit:Z

    if-nez v0, :cond_89

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mDidFirstInit:Z

    .line 279
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_89

    .line 280
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->retrieveLocation()V

    .line 289
    :cond_89
    :try_start_89
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_93} :catch_da

    move-result v11

    .line 297
    .local v11, "passiveLocationEnabled":Z
    :goto_94
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    if-nez v0, :cond_b2

    if-eqz v11, :cond_b2

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    .line 299
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "passive"

    const-wide/16 v2, 0x0

    const v4, 0x469c4000    # 20000.0f

    iget-object v5, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    # getter for: Lcom/android/server/twilight/TwilightService;->mLocationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lcom/android/server/twilight/TwilightService;->access$300(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 303
    :cond_b2
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    if-eqz v0, :cond_ba

    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    if-nez v0, :cond_5

    .line 304
    :cond_ba
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    .line 305
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_dd

    .line 306
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    .line 310
    :cond_cf
    :goto_cf
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 266
    .end local v10    # "networkLocationEnabled":Z
    .end local v11    # "passiveLocationEnabled":Z
    :catch_d7
    move-exception v6

    .line 269
    .local v6, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    .restart local v10    # "networkLocationEnabled":Z
    goto :goto_59

    .line 291
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_da
    move-exception v6

    .line 294
    .restart local v6    # "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    .restart local v11    # "passiveLocationEnabled":Z
    goto :goto_94

    .line 307
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_dd
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-lez v0, :cond_cf

    .line 308
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    goto :goto_cf

    .line 315
    .end local v10    # "networkLocationEnabled":Z
    .end local v11    # "passiveLocationEnabled":Z
    :pswitch_ec
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->updateTwilightState()V

    goto/16 :goto_5

    .line 223
    nop

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_2d
        :pswitch_6
        :pswitch_ec
    .end packed-switch
.end method

.method public processNewLocation(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 205
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/android/server/twilight/TwilightService$LocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 206
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    return-void
.end method

.method public requestLocationUpdate()V
    .registers 2

    .prologue
    .line 214
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    .line 215
    return-void
.end method

.method public requestTwilightUpdate()V
    .registers 2

    .prologue
    .line 218
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    .line 219
    return-void
.end method
