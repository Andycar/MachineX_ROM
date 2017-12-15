.class public Lcom/android/internal/os/ProcessCpuTracker;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcessCpuTracker$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I

.field private static final PROCESS_FULL_STATS_FORMAT:[I

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "ProcessCpuTracker"

.field private static final localLOGV:Z

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCpuSpeedTimes:[J

.field private mCpuSpeeds:[J

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleRealTime:J

.field private mCurrentSampleTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelCpuSpeedTimes:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    .line 72
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    .line 107
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_80

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    .line 120
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_94

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    .line 247
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker$1;

    invoke-direct {v0}, Lcom/android/internal/os/ProcessCpuTracker$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    return-void

    .line 42
    nop

    :array_2c
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    .line 72
    :array_4e
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    .line 107
    :array_80
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data

    .line 120
    :array_94
    .array-data 4
        0x4020
        0x4020
        0x4020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .registers 6
    .param p1, "includeThreads"    # Z

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    .line 70
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    .line 104
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 105
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    .line 118
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    .line 126
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    .line 130
    iput v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 131
    iput v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 132
    iput v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 162
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    .line 267
    iput-boolean p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    .line 268
    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .registers 36
    .param p1, "statsFile"    # Ljava/lang/String;
    .param p2, "parentPid"    # I
    .param p3, "first"    # Z
    .param p4, "curPids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 354
    .local p5, "allProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v19

    .line 355
    .local v19, "pids":[I
    if-nez v19, :cond_48

    const/4 v10, 0x0

    .line 356
    .local v10, "NP":I
    :goto_b
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 357
    .local v11, "NS":I
    const/4 v12, 0x0

    .line 358
    .local v12, "curStatsIndex":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_11
    if-ge v13, v10, :cond_18

    .line 359
    aget v6, v19, v13

    .line 360
    .local v6, "pid":I
    if-gez v6, :cond_4c

    .line 361
    move v10, v6

    .line 519
    .end local v6    # "pid":I
    :cond_18
    :goto_18
    if-ge v12, v11, :cond_2a7

    .line 521
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 522
    .local v22, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 523
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 524
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 525
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 526
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 527
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 528
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 529
    add-int/lit8 v11, v11, -0x1

    .line 531
    goto :goto_18

    .line 355
    .end local v10    # "NP":I
    .end local v11    # "NS":I
    .end local v12    # "curStatsIndex":I
    .end local v13    # "i":I
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_48
    move-object/from16 v0, v19

    array-length v10, v0

    goto :goto_b

    .line 364
    .restart local v6    # "pid":I
    .restart local v10    # "NP":I
    .restart local v11    # "NS":I
    .restart local v12    # "curStatsIndex":I
    .restart local v13    # "i":I
    :cond_4c
    if-ge v12, v11, :cond_94

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-object/from16 v22, v4

    .line 366
    .restart local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :goto_58
    if-eqz v22, :cond_161

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v4, v6, :cond_161

    .line 368
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 369
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 370
    add-int/lit8 v12, v12, 0x1

    .line 375
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v4, :cond_90

    .line 376
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 378
    .local v26, "uptime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    move-object/from16 v20, v0

    .line 379
    .local v20, "procStats":[J
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-static {v4, v5, v7, v0, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-nez v4, :cond_97

    .line 358
    .end local v20    # "procStats":[J
    .end local v26    # "uptime":J
    :cond_90
    :goto_90
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_11

    .line 364
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_94
    const/16 v22, 0x0

    goto :goto_58

    .line 384
    .restart local v20    # "procStats":[J
    .restart local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v26    # "uptime":J
    :cond_97
    const/4 v4, 0x0

    aget-wide v16, v20, v4

    .line 385
    .local v16, "minfaults":J
    const/4 v4, 0x1

    aget-wide v14, v20, v4

    .line 386
    .local v14, "majfaults":J
    const/4 v4, 0x2

    aget-wide v28, v20, v4

    .line 387
    .local v28, "utime":J
    const/4 v4, 0x3

    aget-wide v24, v20, v4

    .line 389
    .local v24, "stime":J
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    cmp-long v4, v28, v4

    if-nez v4, :cond_d3

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    cmp-long v4, v24, v4

    if-nez v4, :cond_d3

    .line 390
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 391
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 392
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 393
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 394
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-eqz v4, :cond_90

    .line 395
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    goto :goto_90

    .line 400
    :cond_d3
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-nez v4, :cond_de

    .line 401
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    .line 404
    :cond_de
    if-gez p2, :cond_108

    .line 405
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 406
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_108

    .line 407
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    .line 418
    :cond_108
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    sub-long v4, v26, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    .line 419
    move-wide/from16 v0, v26

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 420
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    sub-long v4, v28, v4

    long-to-int v4, v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 421
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    sub-long v4, v24, v4

    long-to-int v4, v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 422
    move-wide/from16 v0, v28

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 423
    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 424
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    sub-long v4, v16, v4

    long-to-int v4, v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 425
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    sub-long v4, v14, v4

    long-to-int v4, v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 426
    move-wide/from16 v0, v16

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 427
    move-object/from16 v0, v22

    iput-wide v14, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 428
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    goto/16 :goto_90

    .line 434
    .end local v14    # "majfaults":J
    .end local v16    # "minfaults":J
    .end local v20    # "procStats":[J
    .end local v24    # "stime":J
    .end local v26    # "uptime":J
    .end local v28    # "utime":J
    :cond_161
    if-eqz v22, :cond_169

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-le v4, v6, :cond_27e

    .line 436
    :cond_169
    new-instance v22, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker$Stats;-><init>(IIZ)V

    .line 437
    .restart local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, p5

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 438
    add-int/lit8 v12, v12, 0x1

    .line 439
    add-int/lit8 v11, v11, 0x1

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    move-object/from16 v21, v0

    .line 445
    .local v21, "procStatsString":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    move-object/from16 v20, v0

    .line 446
    .restart local v20    # "procStats":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 447
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    .line 449
    .local v18, "path":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-static {v0, v4, v1, v2, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_22d

    .line 455
    const/4 v4, 0x5

    aget-wide v4, v20, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    .line 457
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    .line 458
    const/4 v4, 0x0

    aget-object v4, v21, v4

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 459
    const/4 v4, 0x1

    aget-wide v4, v20, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 460
    const/4 v4, 0x2

    aget-wide v4, v20, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 461
    const/4 v4, 0x3

    aget-wide v4, v20, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 462
    const/4 v4, 0x4

    aget-wide v4, v20, v4

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 475
    :goto_1db
    if-gez p2, :cond_261

    .line 476
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 477
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_205

    .line 478
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    .line 490
    :cond_205
    :goto_205
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 491
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 492
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 493
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 494
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 495
    if-nez p3, :cond_90

    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v4, :cond_90

    .line 496
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    goto/16 :goto_90

    .line 469
    :cond_22d
    const-string v4, "ProcessCpuTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping unknown process pid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v4, "<unknown>"

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 471
    const-wide/16 v4, 0x0

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 472
    const-wide/16 v4, 0x0

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    goto/16 :goto_1db

    .line 481
    :cond_261
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v4, :cond_205

    .line 482
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 483
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    goto :goto_205

    .line 502
    .end local v18    # "path":Ljava/lang/String;
    .end local v20    # "procStats":[J
    .end local v21    # "procStatsString":[Ljava/lang/String;
    :cond_27e
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 503
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 504
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 505
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 506
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 507
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 508
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 509
    add-int/lit8 v11, v11, -0x1

    .line 515
    add-int/lit8 v13, v13, -0x1

    .line 516
    goto/16 :goto_90

    .line 533
    .end local v6    # "pid":I
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_2a7
    return-object v19
.end method

.method private getCpuSpeedTimes([J)[J
    .registers 16
    .param p1, "out"    # [J

    .prologue
    const/16 v13, 0x3c

    const/4 v12, 0x0

    .line 578
    move-object v6, p1

    .line 579
    .local v6, "tempTimes":[J
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeeds:[J

    .line 580
    .local v5, "tempSpeeds":[J
    const/16 v0, 0x3c

    .line 581
    .local v0, "MAX_SPEEDS":I
    if-nez p1, :cond_e

    .line 582
    new-array v6, v13, [J

    .line 583
    new-array v5, v13, [J

    .line 585
    :cond_e
    const/4 v3, 0x0

    .line 586
    .local v3, "speed":I
    const-string v10, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {p0, v10, v12}, Lcom/android/internal/os/ProcessCpuTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "file":Ljava/lang/String;
    if-eqz v1, :cond_2f

    .line 589
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v10, "\n "

    invoke-direct {v4, v1, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    .local v4, "st":Ljava/util/StringTokenizer;
    :cond_1e
    :goto_1e
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_2f

    .line 591
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 593
    .local v7, "token":Ljava/lang/String;
    :try_start_28
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 595
    .local v8, "val":J
    array-length v10, v5
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2d} :catch_51

    if-lt v3, v10, :cond_40

    .line 615
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .end local v7    # "token":Ljava/lang/String;
    .end local v8    # "val":J
    :cond_2f
    :goto_2f
    if-nez p1, :cond_3f

    .line 616
    new-array p1, v3, [J

    .line 617
    new-array v10, v3, [J

    iput-object v10, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeeds:[J

    .line 618
    iget-object v10, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeeds:[J

    invoke-static {v5, v12, v10, v12, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 619
    invoke-static {v6, v12, p1, v12, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 621
    :cond_3f
    return-object p1

    .line 598
    .restart local v4    # "st":Ljava/util/StringTokenizer;
    .restart local v7    # "token":Ljava/lang/String;
    .restart local v8    # "val":J
    :cond_40
    :try_start_40
    aput-wide v8, v5, v3

    .line 599
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 600
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 601
    aput-wide v8, v6, v3
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_4c} :catch_51

    .line 602
    add-int/lit8 v3, v3, 0x1

    .line 603
    if-ne v3, v13, :cond_1e

    goto :goto_2f

    .line 608
    .end local v8    # "val":J
    :catch_51
    move-exception v2

    .line 609
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    const-string v10, "ProcessCpuTracker"

    const-string v11, "Unable to parse time_in_state"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method private getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V
    .registers 8
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .param p2, "cmdlineFile"    # Ljava/lang/String;

    .prologue
    .line 868
    iget-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 869
    .local v2, "newName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v4, "app_process"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v4, "<pre-initialized>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 871
    :cond_1a
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 872
    .local v0, "cmdName":Ljava/lang/String;
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3f

    .line 873
    move-object v2, v0

    .line 874
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 875
    .local v1, "i":I
    if-lez v1, :cond_3f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3f

    .line 876
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 879
    .end local v1    # "i":I
    :cond_3f
    if-nez v2, :cond_43

    .line 880
    iget-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 883
    .end local v0    # "cmdName":Ljava/lang/String;
    :cond_43
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_4f

    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 884
    :cond_4f
    iput-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 885
    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 887
    :cond_59
    return-void
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .registers 21
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "totalTime"    # I
    .param p6, "user"    # I
    .param p7, "system"    # I
    .param p8, "iowait"    # I
    .param p9, "irq"    # I
    .param p10, "softIrq"    # I
    .param p11, "minFaults"    # I
    .param p12, "majFaults"    # I

    .prologue
    .line 788
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 789
    if-nez p5, :cond_6

    const/4 p5, 0x1

    .line 790
    :cond_6
    add-int v2, p6, p7

    add-int v2, v2, p8

    add-int v2, v2, p9

    add-int v2, v2, p10

    int-to-long v4, v2

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 791
    const-string v2, "% "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 792
    if-ltz p3, :cond_24

    .line 793
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 794
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 796
    :cond_24
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 797
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 798
    int-to-long v4, p6

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 799
    const-string v2, "% user + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 800
    int-to-long v4, p7

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 801
    const-string v2, "% kernel"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 802
    if-lez p8, :cond_59

    .line 803
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 804
    move/from16 v0, p8

    int-to-long v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 805
    const-string v2, "% iowait"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 807
    :cond_59
    if-lez p9, :cond_6e

    .line 808
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 809
    move/from16 v0, p9

    int-to-long v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 810
    const-string v2, "% irq"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 812
    :cond_6e
    if-lez p10, :cond_83

    .line 813
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 814
    move/from16 v0, p10

    int-to-long v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 815
    const-string v2, "% softirq"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 817
    :cond_83
    if-gtz p11, :cond_87

    if-lez p12, :cond_ae

    .line 818
    :cond_87
    const-string v2, " / faults:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 819
    if-lez p11, :cond_9d

    .line 820
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 821
    move/from16 v0, p11

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 822
    const-string v2, " minor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 824
    :cond_9d
    if-lez p12, :cond_ae

    .line 825
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 826
    move/from16 v0, p12

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 827
    const-string v2, " major"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 830
    :cond_ae
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 831
    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .registers 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "numerator"    # J
    .param p4, "denominator"    # J

    .prologue
    const-wide/16 v8, 0xa

    .line 773
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p2

    div-long v4, v6, p4

    .line 774
    .local v4, "thousands":J
    div-long v0, v4, v8

    .line 775
    .local v0, "hundreds":J
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 776
    cmp-long v6, v0, v8

    if-gez v6, :cond_22

    .line 777
    mul-long v6, v0, v8

    sub-long v2, v4, v6

    .line 778
    .local v2, "remainder":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_22

    .line 779
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 780
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 783
    .end local v2    # "remainder":J
    :cond_22
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .registers 11
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "endChar"    # C

    .prologue
    .line 837
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 838
    .local v4, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 840
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_a} :catch_3e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_48
    .catchall {:try_start_5 .. :try_end_a} :catchall_52

    .line 841
    .end local v1    # "is":Ljava/io/FileInputStream;
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_a
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 842
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 844
    if-lez v3, :cond_33

    .line 846
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    if-ge v0, v3, :cond_1e

    .line 847
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    aget-byte v5, v5, v0

    if-ne v5, p2, :cond_30

    .line 851
    :cond_1e
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_26} :catch_6c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_26} :catch_69
    .catchall {:try_start_a .. :try_end_26} :catchall_66

    .line 856
    if-eqz v2, :cond_2b

    .line 858
    :try_start_28
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_5c

    .line 862
    :cond_2b
    :goto_2b
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 864
    .end local v0    # "i":I
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :goto_2f
    return-object v5

    .line 846
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "i":I
    .restart local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 856
    .end local v0    # "i":I
    :cond_33
    if-eqz v2, :cond_38

    .line 858
    :try_start_35
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_5e

    .line 862
    :cond_38
    :goto_38
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 864
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :goto_3c
    const/4 v5, 0x0

    goto :goto_2f

    .line 853
    :catch_3e
    move-exception v5

    .line 856
    :goto_3f
    if-eqz v1, :cond_44

    .line 858
    :try_start_41
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_60

    .line 862
    :cond_44
    :goto_44
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_3c

    .line 854
    :catch_48
    move-exception v5

    .line 856
    :goto_49
    if-eqz v1, :cond_4e

    .line 858
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_62

    .line 862
    :cond_4e
    :goto_4e
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_3c

    .line 856
    :catchall_52
    move-exception v5

    :goto_53
    if-eqz v1, :cond_58

    .line 858
    :try_start_55
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_64

    .line 862
    :cond_58
    :goto_58
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v5

    .line 859
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "i":I
    .restart local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    :catch_5c
    move-exception v6

    goto :goto_2b

    .end local v0    # "i":I
    :catch_5e
    move-exception v5

    goto :goto_38

    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :catch_60
    move-exception v5

    goto :goto_44

    :catch_62
    move-exception v5

    goto :goto_4e

    :catch_64
    move-exception v6

    goto :goto_58

    .line 856
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catchall_66
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_53

    .line 854
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_69
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_49

    .line 853
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_6c
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_3f
.end method


# virtual methods
.method final buildWorkingProcs()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 657
    iget-boolean v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    if-nez v6, :cond_65

    .line 658
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 659
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 660
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_5c

    .line 661
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 662
    .local v4, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v6, :cond_59

    .line 663
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v6, :cond_59

    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v8, :cond_59

    .line 665
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 666
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 667
    .local v0, "M":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3c
    if-ge v3, v0, :cond_52

    .line 668
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 669
    .local v5, "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v6, :cond_4f

    .line 670
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 673
    .end local v5    # "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_52
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 660
    .end local v0    # "M":I
    .end local v3    # "j":I
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 677
    .end local v4    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_5c
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 678
    iput-boolean v8, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 680
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_65
    return-void
.end method

.method public final countStats()I
    .registers 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats()I
    .registers 2

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 692
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCpuTimeForPid(I)J
    .registers 12
    .param p1, "pid"    # I

    .prologue
    .line 541
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    monitor-enter v5

    .line 542
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/proc/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/stat"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "statFile":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    .line 544
    .local v1, "statsData":[J
    sget-object v4, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v4, v6, v1, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 546
    const/4 v4, 0x2

    aget-wide v6, v1, v4

    const/4 v4, 0x3

    aget-wide v8, v1, v4

    add-long v2, v6, v8

    .line 548
    .local v2, "time":J
    monitor-exit v5

    .line 550
    .end local v2    # "time":J
    :goto_31
    return-wide v2

    :cond_32
    const-wide/16 v2, 0x0

    monitor-exit v5

    goto :goto_31

    .line 551
    .end local v0    # "statFile":Ljava/lang/String;
    .end local v1    # "statsData":[J
    :catchall_36
    move-exception v4

    monitor-exit v5
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v4
.end method

.method public getLastCpuSpeedTimes()[J
    .registers 9

    .prologue
    .line 560
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    if-nez v1, :cond_21

    .line 561
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuSpeedTimes([J)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    .line 562
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelCpuSpeedTimes:[J

    .line 563
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_42

    .line 564
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelCpuSpeedTimes:[J

    const-wide/16 v4, 0x1

    aput-wide v4, v1, v0

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 567
    .end local v0    # "i":I
    :cond_21
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelCpuSpeedTimes:[J

    invoke-direct {p0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuSpeedTimes([J)[J

    .line 568
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_27
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_42

    .line 569
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelCpuSpeedTimes:[J

    aget-wide v2, v1, v0

    .line 570
    .local v2, "temp":J
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelCpuSpeedTimes:[J

    aget-wide v4, v1, v0

    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    aget-wide v6, v6, v0

    sub-long/2addr v4, v6

    aput-wide v4, v1, v0

    .line 571
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCpuSpeedTimes:[J

    aput-wide v2, v1, v0

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 574
    .end local v2    # "temp":J
    :cond_42
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelCpuSpeedTimes:[J

    return-object v1
.end method

.method public final getLastIdleTime()I
    .registers 2

    .prologue
    .line 645
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .registers 2

    .prologue
    .line 633
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .registers 2

    .prologue
    .line 637
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .registers 2

    .prologue
    .line 641
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .registers 2

    .prologue
    .line 629
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .registers 2

    .prologue
    .line 625
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final getTotalCpuPercent()F
    .registers 4

    .prologue
    .line 649
    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int v0, v1, v2

    .line 650
    .local v0, "denom":I
    if-gtz v0, :cond_10

    .line 651
    const/4 v1, 0x0

    .line 653
    :goto_f
    return v1

    :cond_10
    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_f
.end method

.method public final getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public init()V
    .registers 2

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 280
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 281
    return-void
.end method

.method public onLoadChanged(FFF)V
    .registers 4
    .param p1, "load1"    # F
    .param p2, "load5"    # F
    .param p3, "load15"    # F

    .prologue
    .line 271
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .registers 5

    .prologue
    .line 700
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 701
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 702
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 703
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 704
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 705
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 706
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 707
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 708
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 709
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .registers 32
    .param p1, "now"    # J

    .prologue
    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 715
    new-instance v26, Ljava/io/StringWriter;

    invoke-direct/range {v26 .. v26}, Ljava/io/StringWriter;-><init>()V

    .line 716
    .local v26, "sw":Ljava/io/StringWriter;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v4, 0x400

    move-object/from16 v0, v26

    invoke-direct {v3, v0, v2, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 718
    .local v3, "pw":Ljava/io/PrintWriter;
    const-string v2, "CPU usage from "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 719
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    cmp-long v2, p1, v4

    if-lez v2, :cond_136

    .line 720
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 721
    const-string v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 722
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 723
    const-string v2, "ms ago"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 731
    :goto_3b
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v24, v4, v6

    .line 732
    .local v24, "sampleTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    sub-long v22, v4, v6

    .line 733
    .local v22, "sampleRealTime":J
    const-wide/16 v4, 0x0

    cmp-long v2, v22, v4

    if-lez v2, :cond_154

    const-wide/16 v4, 0x64

    mul-long v4, v4, v24

    div-long v20, v4, v22

    .line 734
    .local v20, "percAwake":J
    :goto_5b
    const-wide/16 v4, 0x64

    cmp-long v2, v20, v4

    if-eqz v2, :cond_70

    .line 735
    const-string v2, " with "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 736
    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 737
    const-string v2, "% awake"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 739
    :cond_70
    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 741
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int v27, v2, v4

    .line 747
    .local v27, "totalTime":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 748
    .local v16, "N":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_9d
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_176

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 750
    .local v19, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v2, :cond_158

    const-string v4, " +"

    :goto_b7
    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    const-wide/16 v10, 0x5

    add-long/2addr v8, v10

    long-to-int v2, v8

    div-int/lit8 v7, v2, 0xa

    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v19

    iget v13, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    move-object/from16 v0, v19

    iget v14, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 753
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-nez v2, :cond_172

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v2, :cond_172

    .line 754
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 755
    .local v15, "M":I
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_f7
    move/from16 v0, v18

    if-ge v0, v15, :cond_172

    .line 756
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 757
    .local v28, "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v2, :cond_166

    const-string v4, "   +"

    :goto_10f
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    const-wide/16 v10, 0x5

    add-long/2addr v8, v10

    long-to-int v2, v8

    div-int/lit8 v7, v2, 0xa

    move-object/from16 v0, v28

    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move-object/from16 v0, v28

    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 755
    add-int/lit8 v18, v18, 0x1

    goto :goto_f7

    .line 725
    .end local v15    # "M":I
    .end local v16    # "N":I
    .end local v17    # "i":I
    .end local v18    # "j":I
    .end local v19    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v20    # "percAwake":J
    .end local v22    # "sampleRealTime":J
    .end local v24    # "sampleTime":J
    .end local v27    # "totalTime":I
    .end local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_136
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 726
    const-string v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 727
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 728
    const-string v2, "ms later"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 733
    .restart local v22    # "sampleRealTime":J
    .restart local v24    # "sampleTime":J
    :cond_154
    const-wide/16 v20, 0x0

    goto/16 :goto_5b

    .line 750
    .restart local v16    # "N":I
    .restart local v17    # "i":I
    .restart local v19    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v20    # "percAwake":J
    .restart local v27    # "totalTime":I
    :cond_158
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v2, :cond_162

    const-string v4, " -"

    goto/16 :goto_b7

    :cond_162
    const-string v4, "  "

    goto/16 :goto_b7

    .line 757
    .restart local v15    # "M":I
    .restart local v18    # "j":I
    .restart local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_166
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v2, :cond_16f

    const-string v4, "   -"

    goto :goto_10f

    :cond_16f
    const-string v4, "    "

    goto :goto_10f

    .line 748
    .end local v15    # "M":I
    .end local v18    # "j":I
    .end local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_172
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_9d

    .line 765
    .end local v19    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_176
    const-string v4, ""

    const/4 v5, -0x1

    const-string v6, "TOTAL"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move/from16 v7, v27

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 768
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 769
    invoke-virtual/range {v26 .. v26}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public update()V
    .registers 29

    .prologue
    .line 285
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    .line 286
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    .line 287
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    .line 288
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    move-object/from16 v22, v0

    .line 291
    .local v22, "sysCpu":[J
    const-string v4, "/proc/stat"

    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-static {v4, v5, v6, v0, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 294
    const/4 v4, 0x0

    aget-wide v4, v22, v4

    const/4 v6, 0x1

    aget-wide v6, v22, v6

    add-long v26, v4, v6

    .line 296
    .local v26, "usertime":J
    const/4 v4, 0x2

    aget-wide v24, v22, v4

    .line 298
    .local v24, "systemtime":J
    const/4 v4, 0x3

    aget-wide v10, v22, v4

    .line 300
    .local v10, "idletime":J
    const/4 v4, 0x4

    aget-wide v12, v22, v4

    .line 301
    .local v12, "iowaittime":J
    const/4 v4, 0x5

    aget-wide v14, v22, v4

    .line 302
    .local v14, "irqtime":J
    const/4 v4, 0x6

    aget-wide v20, v22, v4

    .line 304
    .local v20, "softirqtime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    sub-long v4, v26, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    .line 305
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    sub-long v4, v24, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    .line 306
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    sub-long v4, v12, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    .line 307
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    sub-long v4, v14, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    .line 308
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    sub-long v4, v20, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    .line 309
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    sub-long v4, v10, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    .line 320
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    .line 321
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    .line 322
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    .line 323
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    .line 324
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    .line 325
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    .line 328
    .end local v10    # "idletime":J
    .end local v12    # "iowaittime":J
    .end local v14    # "irqtime":J
    .end local v20    # "softirqtime":J
    .end local v24    # "systemtime":J
    .end local v26    # "usertime":J
    :cond_ab
    const-string v5, "/proc"

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    move-object/from16 v19, v0

    .line 331
    .local v19, "loadAverages":[F
    const-string v4, "/proc/loadavg"

    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-static {v4, v5, v6, v7, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_116

    .line 333
    const/4 v4, 0x0

    aget v16, v19, v4

    .line 334
    .local v16, "load1":F
    const/4 v4, 0x1

    aget v18, v19, v4

    .line 335
    .local v18, "load5":F
    const/4 v4, 0x2

    aget v17, v19, v4

    .line 336
    .local v17, "load15":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    cmpl-float v4, v16, v4

    if-nez v4, :cond_f9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    cmpl-float v4, v18, v4

    if-nez v4, :cond_f9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    cmpl-float v4, v17, v4

    if-eqz v4, :cond_116

    .line 337
    :cond_f9
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 338
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 339
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 340
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->onLoadChanged(FFF)V

    .line 347
    .end local v16    # "load1":F
    .end local v17    # "load15":F
    .end local v18    # "load5":F
    :cond_116
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 348
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 349
    return-void
.end method
