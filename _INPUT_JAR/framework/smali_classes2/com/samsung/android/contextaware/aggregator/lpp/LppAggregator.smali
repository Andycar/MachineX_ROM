.class public Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;
.super Lcom/samsung/android/contextaware/aggregator/Aggregator;
.source "LppAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LPP_RESOLUTION:I = 0x0

.field private static final NEXT_APDR:I = 0xabaa

.field private static final TAG:Ljava/lang/String; = "LppAggregator"


# instance fields
.field private final LPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

.field private altitude:[D

.field count:I

.field private final gpsKeepOnTimer:I

.field private final gpsRequestApdr:I

.field private final gpsRequestBy:J

.field private final gpsRequestTimer:I

.field private latitude:[D

.field private longitude:[D

.field private mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

.field private final mContext:Landroid/content/Context;

.field private mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

.field private mLppResolution:I

.field mStatus:[I

.field sendApdr:Landroid/os/Handler;

.field private final strConfigEdit:Ljava/lang/String;

.field private final strConfigText:Ljava/lang/String;

.field private timestamp:[J


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 12
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p5, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 97
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/contextaware/aggregator/Aggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 58
    iput-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .line 59
    const/16 v2, 0x14

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->gpsRequestTimer:I

    .line 60
    const/16 v2, 0xf

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->gpsKeepOnTimer:I

    .line 61
    const/16 v2, 0x64

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->gpsRequestApdr:I

    .line 62
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->gpsRequestBy:J

    .line 63
    const-string v2, "[Note] \n"

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->strConfigEdit:Ljava/lang/String;

    .line 64
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->strConfigText:Ljava/lang/String;

    .line 66
    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

    invoke-direct {v2, p0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;)V

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->LPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

    .line 69
    iput v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLppResolution:I

    .line 75
    iput-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    .line 402
    const/16 v2, 0x24

    new-array v2, v2, [I

    fill-array-data v2, :array_5c

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mStatus:[I

    .line 416
    iput v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->count:I

    .line 99
    iput-object p2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/manager/ContextComponent;

    .line 104
    .local v0, "i":Lcom/samsung/android/contextaware/manager/ContextComponent;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 106
    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    .end local v0    # "i":Lcom/samsung/android/contextaware/manager/ContextComponent;
    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    .line 110
    :cond_5b
    return-void

    .line 402
    :array_5c
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;
    .param p1, "x1"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->LPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->notifyPositionContext(Ljava/util/ArrayList;)V

    return-void
.end method

.method private convertToUtc(III)J
    .registers 30
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getSyncTime()Landroid/text/format/Time;

    move-result-object v16

    .line 492
    .local v16, "syncT":Landroid/text/format/Time;
    const-string v19, "LppAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "syncT:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v19, "HH:mm:ss"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 494
    .local v4, "format":Ljava/text/SimpleDateFormat;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 497
    .local v17, "time1":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 498
    .local v18, "time2":Ljava/lang/String;
    const/4 v15, 0x0

    .line 499
    .local v15, "syncDate":Ljava/util/Date;
    const/4 v5, 0x0

    .line 501
    .local v5, "rxDate":Ljava/util/Date;
    :try_start_92
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    .line 502
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 503
    const-string v19, "LppAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "syncDate:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const-string v19, "LppAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "rxDate:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {v15, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v19

    if-eqz v19, :cond_f0

    .line 507
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 508
    .local v2, "cal2":Ljava/util/Calendar;
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 509
    const/16 v19, 0x5

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 510
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_ef
    .catch Ljava/text/ParseException; {:try_start_92 .. :try_end_ef} :catch_204

    move-result-object v5

    .line 518
    .end local v2    # "cal2":Ljava/util/Calendar;
    :cond_f0
    :goto_f0
    const-wide/16 v12, 0x0

    .line 519
    .local v12, "lapse":J
    if-eqz v5, :cond_fe

    .line 521
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    sub-long v12, v20, v22

    .line 523
    :cond_fe
    const-string v19, "LppAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "lapse:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-wide/16 v20, 0x0

    cmp-long v19, v12, v20

    if-gez v19, :cond_125

    .line 526
    const-string v19, "LppAggregator"

    const-string v20, "lapse is -ve"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_125
    const-wide/32 v20, 0x2932e00

    cmp-long v19, v12, v20

    if-lez v19, :cond_133

    .line 530
    const-string v19, "LppAggregator"

    const-string v20, "lapse is more than 12 hours"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_133
    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v6

    .line 533
    .local v6, "lapHr":J
    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v20, 0x3c

    mul-long v20, v20, v6

    const-wide/16 v22, 0x3c

    mul-long v20, v20, v22

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    sub-long v20, v12, v20

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    .line 535
    .local v8, "lapMin":J
    const-wide/16 v20, 0x3c

    mul-long v20, v20, v6

    const-wide/16 v22, 0x3c

    mul-long v20, v20, v22

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    const-wide/16 v22, 0x3c

    mul-long v22, v22, v8

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    add-long v20, v20, v22

    sub-long v20, v12, v20

    const-wide/16 v22, 0x3e8

    div-long v10, v20, v22

    .line 539
    .local v10, "lapSec":J
    const-string v19, "LppAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "lapHr:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " lapMin:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " lapSec:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v14, Landroid/text/format/Time;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 543
    .local v14, "rxTime":Landroid/text/format/Time;
    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v20, v20, v6

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v14, Landroid/text/format/Time;->hour:I

    .line 544
    iget v0, v14, Landroid/text/format/Time;->minute:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v20, v20, v8

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v14, Landroid/text/format/Time;->minute:I

    .line 545
    iget v0, v14, Landroid/text/format/Time;->second:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v20, v20, v10

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v14, Landroid/text/format/Time;->second:I

    .line 547
    const-string v19, "LppAggregator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "rxTime:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    return-wide v20

    .line 512
    .end local v6    # "lapHr":J
    .end local v8    # "lapMin":J
    .end local v10    # "lapSec":J
    .end local v12    # "lapse":J
    .end local v14    # "rxTime":Landroid/text/format/Time;
    :catch_204
    move-exception v3

    .line 513
    .local v3, "e":Ljava/text/ParseException;
    const-string v19, "LppAggregator"

    const-string/jumbo v20, "time parse error"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_f0
.end method

.method private convertToUtc2(III)J
    .registers 6
    .param p1, "hour"    # I
    .param p2, "min"    # I
    .param p3, "sec"    # I

    .prologue
    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyLppContext(I)V
    .registers 6
    .param p1, "count"    # I

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "names":[Ljava/lang/String;
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 158
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->timestamp:[J

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 159
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->latitude:[D

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 160
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->longitude:[D

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 161
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->altitude:[D

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 163
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->notifyObserver()V

    .line 164
    return-void
.end method

.method private notifyPositionContext(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, "listLPPResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Location;>;"
    const-string v5, "LppAggregator"

    const-string v6, "notifyPositionContext"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 454
    .local v4, "tim":Landroid/text/format/Time;
    const/4 v0, 0x0

    .line 456
    .local v0, "cnt":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 458
    .local v3, "size":I
    new-array v5, v3, [J

    iput-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->timestamp:[J

    .line 459
    new-array v5, v3, [D

    iput-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->latitude:[D

    .line 460
    new-array v5, v3, [D

    iput-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->longitude:[D

    .line 461
    new-array v5, v3, [D

    iput-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->altitude:[D

    .line 463
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5f

    .line 464
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 465
    .local v2, "loc":Landroid/location/Location;
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 466
    const-string v5, "GMT+00:00"

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 467
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->timestamp:[J

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    aput-wide v6, v5, v1

    .line 468
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->latitude:[D

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v5, v1

    .line 469
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->longitude:[D

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v5, v1

    .line 470
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->altitude:[D

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    aput-wide v6, v5, v1

    .line 471
    add-int/lit8 v0, v0, 0x1

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 474
    .end local v2    # "loc":Landroid/location/Location;
    :cond_5f
    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->notifyLppContext(I)V

    .line 475
    return-void
.end method

.method private test()V
    .registers 5

    .prologue
    .line 361
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->count:I

    .line 365
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->sendApdr:Landroid/os/Handler;

    .line 399
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->sendApdr:Landroid/os/Handler;

    const v1, 0xabaa

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 400
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 1

    .prologue
    .line 144
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 145
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->clear()V

    .line 146
    return-void
.end method

.method public final disable()V
    .registers 5

    .prologue
    .line 422
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 426
    new-instance v0, Landroid/os/Handler;

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$3;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 434
    return-void
.end method

.method protected display()V
    .registers 1

    .prologue
    .line 439
    return-void
.end method

.method public final enable()V
    .registers 7

    .prologue
    .line 333
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 335
    const-string v2, "LppAggregator"

    const-string v3, "enable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v1, "[Note] \n"

    .line 338
    .local v1, "strConfig":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x64

    const/16 v4, 0x14

    const/16 v5, 0xf

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;-><init>(Landroid/content/Context;III)V

    .line 341
    .local v0, "config":Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->setContext(Landroid/content/Context;)V

    .line 342
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->looper:Landroid/os/Looper;

    .line 347
    new-instance v2, Landroid/os/Handler;

    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$1;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 247
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TrajectoryCount"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TrajectoryTimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TrajectoryLatitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TrajectoryLongitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TrajectoryAltitude"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .registers 1

    .prologue
    .line 184
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .registers 1

    .prologue
    .line 194
    return-object p0
.end method

.method protected final initializeAggregator()V
    .registers 1

    .prologue
    .line 121
    return-void
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .registers 7
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 206
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x1

    .line 207
    .local v1, "result":Z
    const/16 v2, 0x20

    if-ne p1, v2, :cond_50

    .line 208
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 210
    .local v0, "resolution":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolution = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 211
    if-eqz v0, :cond_3a

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3a

    .line 214
    const-string v2, "Invalid value for LPP resolution"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 215
    const/4 v2, 0x0

    .line 236
    .end local v0    # "resolution":I
    :goto_39
    return v2

    .line 218
    .restart local v0    # "resolution":I
    :cond_3a
    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLppResolution:I

    .line 225
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    if-eqz v2, :cond_45

    .line 226
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    invoke-virtual {v2, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->setLppResolution(I)V

    .line 229
    :cond_45
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    if-eqz v2, :cond_4e

    .line 230
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-virtual {v2, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->setLppResolution(I)V

    .end local v0    # "resolution":I
    :cond_4e
    :goto_4e
    move v2, v1

    .line 236
    goto :goto_39

    .line 234
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_50
    const/4 v1, 0x0

    goto :goto_4e
.end method

.method protected final terminateAggregator()V
    .registers 1

    .prologue
    .line 135
    return-void
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 29
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 265
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Context type "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 267
    sget-object v20, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_63

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    move-object/from16 v20, v0

    if-eqz v20, :cond_63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-object/from16 v20, v0

    if-eqz v20, :cond_63

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mApdrRunner:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v12

    .line 272
    .local v12, "names":[Ljava/lang/String;
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->StayingArea:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 275
    .local v16, "stayA":I
    if-eqz v16, :cond_64

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->notifyStayArea(I)V

    .line 329
    .end local v12    # "names":[Ljava/lang/String;
    .end local v16    # "stayA":I
    :cond_63
    :goto_63
    return-void

    .line 279
    .restart local v12    # "names":[Ljava/lang/String;
    .restart local v16    # "stayA":I
    :cond_64
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Count:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 281
    .local v4, "dataSize":I
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Hour:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 283
    .local v6, "hour":I
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Minute:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 285
    .local v11, "minute":I
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->Second:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 287
    .local v13, "second":I
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->doe:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 289
    .local v5, "doe":I
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->TimeDifference:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v17

    .line 291
    .local v17, "timeDiff":[J
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementEast:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    .line 293
    .local v8, "incEast":[I
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->IncrementNorth:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    .line 295
    .local v9, "incNorth":[I
    sget-object v20, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->ActivityType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner$ContextValIndex;->index()I

    move-result v20

    aget-object v20, v12, v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 298
    .local v2, "activityType":[I
    const-wide/16 v14, 0x0

    .line 300
    .local v14, "rxTime":J
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11, v13}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->convertToUtc2(III)J

    move-result-wide v14

    .line 302
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_102
    if-ge v7, v4, :cond_198

    .line 304
    const-wide/16 v18, 0x0

    .line 305
    .local v18, "sumTimeDiff":J
    const/4 v3, 0x0

    .line 307
    .local v3, "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    .end local v3    # "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    invoke-direct {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>()V

    .line 308
    .restart local v3    # "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v20

    iput-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepFlag:D

    .line 309
    aget v20, v8, v7

    aget v21, v8, v7

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    mul-double v20, v20, v22

    aget v22, v9, v7

    aget v23, v9, v7

    mul-int v22, v22, v23

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    mul-double v22, v22, v24

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    .line 311
    aget-wide v20, v17, v7

    add-long v18, v18, v20

    .line 312
    add-long v20, v14, v18

    move-wide/from16 v0, v20

    iput-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    .line 314
    aget v20, v8, v7

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    iget-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->asin(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    .line 315
    iget-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_172

    .line 316
    iget-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    move-wide/from16 v20, v0

    const-wide v22, 0x400921fb54442d18L    # Math.PI

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    iput-wide v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    .line 319
    :cond_172
    iget-object v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->mag:[D

    move-object/from16 v20, v0

    const/16 v21, 0x3

    int-to-double v0, v5

    move-wide/from16 v22, v0

    aput-wide v22, v20, v21

    .line 320
    aget v20, v2, v7

    and-int/lit8 v20, v20, 0xf

    move/from16 v0, v20

    iput v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    .line 321
    aget v20, v2, v7

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xf0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->carryPos:I

    .line 323
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_102

    .line 325
    .end local v3    # "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    .end local v18    # "sumTimeDiff":J
    :cond_198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->notifyApdrData(Ljava/util/ArrayList;)V

    goto/16 :goto_63
.end method
