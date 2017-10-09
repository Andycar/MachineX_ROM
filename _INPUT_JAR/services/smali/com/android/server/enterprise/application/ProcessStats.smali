.class public Lcom/android/server/enterprise/application/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/application/ProcessStats$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

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

.field private static final TAG:Ljava/lang/String; = "ProcessStats"

.field private static final localLOGV:Z = true

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
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
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
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
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkingProcsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_STATS_FORMAT:[I

    .line 68
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    .line 102
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_7e

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_92

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    .line 236
    new-instance v0, Lcom/android/server/enterprise/application/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/server/enterprise/application/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    return-void

    .line 40
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

    .line 68
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
        0x2020
    .end array-data

    .line 102
    :array_7e
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

    .line 115
    :array_92
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

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessStatsData:[J

    .line 66
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mSinglePidStatsData:[J

    .line 99
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 100
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsData:[J

    .line 113
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mSystemCpuData:[J

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoadAverageData:[F

    .line 125
    iput v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    .line 126
    iput v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    .line 127
    iput v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    .line 157
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    .line 959
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsMap:Landroid/util/SparseArray;

    .line 260
    iput-boolean p1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mIncludeThreads:Z

    .line 261
    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .registers 34
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
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 356
    .local p5, "allProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/application/ProcessStats$Stats;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v18

    .line 358
    .local v18, "pids":[I
    if-nez v18, :cond_70

    const/4 v10, 0x0

    .line 359
    .local v10, "NP":I
    :goto_b
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 360
    .local v11, "NS":I
    const/4 v12, 0x0

    .line 362
    .local v12, "curStatsIndex":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_11
    if-ge v13, v10, :cond_18

    .line 363
    aget v6, v18, v13

    .line 365
    .local v6, "pid":I
    if-gez v6, :cond_74

    .line 366
    move v10, v6

    .line 534
    .end local v6    # "pid":I
    :cond_18
    :goto_18
    if-ge v12, v11, :cond_45f

    .line 536
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 537
    .local v21, "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 538
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 539
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    .line 540
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    .line 541
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    .line 542
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    .line 543
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 544
    add-int/lit8 v11, v11, -0x1

    .line 547
    const-string v4, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed pid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 358
    .end local v10    # "NP":I
    .end local v11    # "NS":I
    .end local v12    # "curStatsIndex":I
    .end local v13    # "i":I
    .end local v21    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    :cond_70
    move-object/from16 v0, v18

    array-length v10, v0

    goto :goto_b

    .line 370
    .restart local v6    # "pid":I
    .restart local v10    # "NP":I
    .restart local v11    # "NS":I
    .restart local v12    # "curStatsIndex":I
    .restart local v13    # "i":I
    :cond_74
    if-ge v12, v11, :cond_ef

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    move-object/from16 v21, v4

    .line 372
    .restart local v21    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    :goto_80
    if-eqz v21, :cond_250

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    if-ne v4, v6, :cond_250

    .line 374
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    .line 375
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    .line 376
    add-int/lit8 v12, v12, 0x1

    .line 378
    const-string v5, "ProcessStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Existing "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-gez p2, :cond_f2

    const-string/jumbo v4, "process"

    :goto_a6
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " pid "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    if-eqz v4, :cond_eb

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 384
    .local v24, "uptime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessStatsData:[J

    move-object/from16 v19, v0

    .line 386
    .local v19, "procStats":[J
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_STATS_FORMAT:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-static {v4, v5, v7, v0, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-nez v4, :cond_f6

    .line 362
    .end local v19    # "procStats":[J
    .end local v24    # "uptime":J
    :cond_eb
    :goto_eb
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_11

    .line 370
    .end local v21    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    :cond_ef
    const/16 v21, 0x0

    goto :goto_80

    .line 378
    .restart local v21    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    :cond_f2
    const-string/jumbo v4, "thread"

    goto :goto_a6

    .line 391
    .restart local v19    # "procStats":[J
    .restart local v24    # "uptime":J
    :cond_f6
    const/4 v4, 0x0

    aget-wide v16, v19, v4

    .line 392
    .local v16, "minfaults":J
    const/4 v4, 0x1

    aget-wide v14, v19, v4

    .line 393
    .local v14, "majfaults":J
    const/4 v4, 0x2

    aget-wide v26, v19, v4

    .line 394
    .local v26, "utime":J
    const/4 v4, 0x3

    aget-wide v22, v19, v4

    .line 396
    .local v22, "stime":J
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    cmp-long v4, v26, v4

    if-nez v4, :cond_132

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    cmp-long v4, v22, v4

    if-nez v4, :cond_132

    .line 397
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 398
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 399
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    .line 400
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    .line 402
    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    if-eqz v4, :cond_eb

    .line 403
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    goto :goto_eb

    .line 409
    :cond_132
    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    if-nez v4, :cond_13d

    .line 410
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    .line 413
    :cond_13d
    if-gez p2, :cond_167

    .line 414
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/application/ProcessStats;->getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V

    .line 416
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_167

    .line 417
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    .line 422
    :cond_167
    const-string v4, "Load"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stats changed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " pid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " utime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " stime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " minfaults="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " majfaults="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_uptime:J

    sub-long v4, v24, v4

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_uptime:J

    .line 429
    move-wide/from16 v0, v24

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_uptime:J

    .line 430
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    sub-long v4, v26, v4

    long-to-int v4, v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 431
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    sub-long v4, v22, v4

    long-to-int v4, v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 432
    move-wide/from16 v0, v26

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    .line 433
    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    .line 434
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    sub-long v4, v16, v4

    long-to-int v4, v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    .line 435
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    sub-long v4, v14, v4

    long-to-int v4, v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    .line 436
    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    .line 437
    move-object/from16 v0, v21

    iput-wide v14, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    .line 438
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    goto/16 :goto_eb

    .line 444
    .end local v14    # "majfaults":J
    .end local v16    # "minfaults":J
    .end local v19    # "procStats":[J
    .end local v22    # "stime":J
    .end local v24    # "uptime":J
    .end local v26    # "utime":J
    :cond_250
    if-eqz v21, :cond_258

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    if-le v4, v6, :cond_3ff

    .line 446
    :cond_258
    new-instance v21, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .end local v21    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mIncludeThreads:Z

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-direct {v0, v6, v1, v4}, Lcom/android/server/enterprise/application/ProcessStats$Stats;-><init>(IIZ)V

    .line 447
    .restart local v21    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 448
    add-int/lit8 v12, v12, 0x1

    .line 449
    add-int/lit8 v11, v11, 0x1

    .line 451
    const-string v5, "ProcessStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-gez p2, :cond_3a8

    const-string/jumbo v4, "process"

    :goto_282
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " pid "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    move-object/from16 v20, v0

    .line 456
    .local v20, "procStatsString":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsData:[J

    move-object/from16 v19, v0

    .line 457
    .restart local v19    # "procStats":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_uptime:J

    .line 459
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    const/4 v7, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v4, v5, v0, v1, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_3ad

    .line 467
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    .line 468
    const/4 v4, 0x0

    aget-object v4, v20, v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 469
    const/4 v4, 0x1

    aget-wide v4, v19, v4

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    .line 470
    const/4 v4, 0x2

    aget-wide v4, v19, v4

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    .line 471
    const/4 v4, 0x3

    aget-wide v4, v19, v4

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    .line 472
    const/4 v4, 0x4

    aget-wide v4, v19, v4

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    .line 485
    :goto_2f4
    if-gez p2, :cond_3e1

    .line 486
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/application/ProcessStats;->getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V

    .line 488
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_31e

    .line 489
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    .line 497
    :cond_31e
    :goto_31e
    const-string v4, "Load"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stats added "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " pid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " utime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " stime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " minfaults="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " majfaults="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 502
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 503
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    .line 504
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    .line 505
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    .line 507
    if-nez p3, :cond_eb

    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    if-eqz v4, :cond_eb

    .line 508
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    goto/16 :goto_eb

    .line 451
    .end local v19    # "procStats":[J
    .end local v20    # "procStatsString":[Ljava/lang/String;
    :cond_3a8
    const-string/jumbo v4, "thread"

    goto/16 :goto_282

    .line 479
    .restart local v19    # "procStats":[J
    .restart local v20    # "procStatsString":[Ljava/lang/String;
    :cond_3ad
    const-string v4, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping unknown process pid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v4, "<unknown>"

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 481
    const-wide/16 v4, 0x0

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    .line 482
    const-wide/16 v4, 0x0

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    goto/16 :goto_2f4

    .line 492
    :cond_3e1
    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    if-eqz v4, :cond_31e

    .line 493
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 494
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/application/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->nameWidth:I

    goto/16 :goto_31e

    .line 515
    .end local v19    # "procStats":[J
    .end local v20    # "procStatsString":[Ljava/lang/String;
    :cond_3ff
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 516
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 517
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    .line 518
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    .line 519
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    .line 520
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    .line 521
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 522
    add-int/lit8 v11, v11, -0x1

    .line 524
    const-string v5, "ProcessStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-gez p2, :cond_45b

    const-string/jumbo v4, "process"

    :goto_436
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " pid "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    add-int/lit8 v13, v13, -0x1

    .line 531
    goto/16 :goto_eb

    .line 524
    :cond_45b
    const-string/jumbo v4, "thread"

    goto :goto_436

    .line 551
    .end local v6    # "pid":I
    .end local v21    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    :cond_45f
    return-object v18
.end method

.method private getCpuSpeedTimes([J)[J
    .registers 20
    .param p1, "out"    # [J

    .prologue
    .line 595
    move-object/from16 v9, p1

    .line 596
    .local v9, "tempTimes":[J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeeds:[J

    .line 597
    .local v8, "tempSpeeds":[J
    const/16 v2, 0x3c

    .line 599
    .local v2, "MAX_SPEEDS":I
    if-nez p1, :cond_12

    .line 600
    const/16 v11, 0x3c

    new-array v9, v11, [J

    .line 601
    const/16 v11, 0x3c

    new-array v8, v11, [J

    .line 604
    :cond_12
    const/4 v6, 0x0

    .line 605
    .local v6, "speed":I
    new-instance v3, Ljava/io/File;

    const-string v11, "/sys/bus/cpu/devices/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 608
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6f

    .line 609
    const-string v11, "/sys/bus/cpu/devices/cpu0/cpufreq/stats/time_in_state"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14}, Lcom/android/server/enterprise/application/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    .line 615
    .local v4, "file":Ljava/lang/String;
    :goto_29
    if-eqz v4, :cond_52

    .line 616
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v11, "\n "

    invoke-direct {v7, v4, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    .local v7, "st":Ljava/util/StringTokenizer;
    :cond_32
    :goto_32
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_52

    .line 619
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 622
    .local v10, "token":Ljava/lang/String;
    :try_start_3c
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 623
    .local v12, "val":J
    aput-wide v12, v8, v6

    .line 624
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 625
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 626
    aput-wide v12, v9, v6
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_4c} :catch_aa

    .line 627
    add-int/lit8 v6, v6, 0x1

    .line 629
    const/16 v11, 0x3c

    if-ne v6, v11, :cond_79

    .line 643
    .end local v7    # "st":Ljava/util/StringTokenizer;
    .end local v10    # "token":Ljava/lang/String;
    .end local v12    # "val":J
    :cond_52
    if-nez p1, :cond_6e

    .line 644
    new-array v0, v6, [J

    move-object/from16 p1, v0

    .line 645
    new-array v11, v6, [J

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeeds:[J

    .line 646
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeeds:[J

    const/4 v15, 0x0

    invoke-static {v8, v11, v14, v15, v6}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 647
    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v9, v11, v0, v14, v6}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 650
    :cond_6e
    return-object p1

    .line 611
    .end local v4    # "file":Ljava/lang/String;
    :cond_6f
    const-string v11, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14}, Lcom/android/server/enterprise/application/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "file":Ljava/lang/String;
    goto :goto_29

    .line 633
    .restart local v7    # "st":Ljava/util/StringTokenizer;
    .restart local v10    # "token":Ljava/lang/String;
    .restart local v12    # "val":J
    :cond_79
    if-nez p1, :cond_32

    .line 634
    :try_start_7b
    const-string v11, "ProcessStats"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "First time : Speed/Time = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v6, -0x1

    aget-wide v16, v8, v15

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v6, -0x1

    aget-wide v16, v9, v15

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_a9} :catch_aa

    goto :goto_32

    .line 637
    .end local v12    # "val":J
    :catch_aa
    move-exception v5

    .line 638
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    const-string v11, "ProcessStats"

    const-string v14, "Unable to parse time_in_state"

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method private getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V
    .registers 8
    .param p1, "st"    # Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .param p2, "cmdlineFile"    # Ljava/lang/String;

    .prologue
    .line 932
    iget-object v2, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 934
    .local v2, "newName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget-object v3, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    const-string v4, "app_process"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    const-string v4, "<pre-initialized>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 936
    :cond_1a
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/server/enterprise/application/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "cmdName":Ljava/lang/String;
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3f

    .line 939
    move-object v2, v0

    .line 940
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 942
    .local v1, "i":I
    if-lez v1, :cond_3f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3f

    .line 943
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 947
    .end local v1    # "i":I
    :cond_3f
    if-nez v2, :cond_43

    .line 948
    iget-object v2, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 952
    .end local v0    # "cmdName":Ljava/lang/String;
    :cond_43
    iget-object v3, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_4f

    iget-object v3, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 953
    :cond_4f
    iput-object v2, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 954
    iget-object v3, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/application/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->nameWidth:I

    .line 956
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
    .line 834
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 836
    if-nez p5, :cond_6

    .line 837
    const/4 p5, 0x1

    .line 840
    :cond_6
    add-int v2, p6, p7

    add-int v2, v2, p8

    add-int v2, v2, p9

    add-int v2, v2, p10

    int-to-long v4, v2

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 841
    const-string v2, "% "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 843
    if-ltz p3, :cond_24

    .line 844
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 845
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 848
    :cond_24
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 849
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 850
    int-to-long v4, p6

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 851
    const-string v2, "% user + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 852
    int-to-long v4, p7

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 853
    const-string v2, "% kernel"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 855
    if-lez p8, :cond_59

    .line 856
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 857
    move/from16 v0, p8

    int-to-long v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 858
    const-string v2, "% iowait"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 861
    :cond_59
    if-lez p9, :cond_6e

    .line 862
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 863
    move/from16 v0, p9

    int-to-long v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 864
    const-string v2, "% irq"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 867
    :cond_6e
    if-lez p10, :cond_83

    .line 868
    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 869
    move/from16 v0, p10

    int-to-long v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 870
    const-string v2, "% softirq"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 873
    :cond_83
    if-gtz p11, :cond_87

    if-lez p12, :cond_ae

    .line 874
    :cond_87
    const-string v2, " / faults:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 876
    if-lez p11, :cond_9d

    .line 877
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 878
    move/from16 v0, p11

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 879
    const-string v2, " minor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 882
    :cond_9d
    if-lez p12, :cond_ae

    .line 883
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 884
    move/from16 v0, p12

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 885
    const-string v2, " major"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 889
    :cond_ae
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 890
    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .registers 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "numerator"    # J
    .param p4, "denominator"    # J

    .prologue
    const-wide/16 v8, 0xa

    .line 817
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p2

    div-long v4, v6, p4

    .line 818
    .local v4, "thousands":J
    div-long v0, v4, v8

    .line 819
    .local v0, "hundreds":J
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 821
    cmp-long v6, v0, v8

    if-gez v6, :cond_22

    .line 822
    mul-long v6, v0, v8

    sub-long v2, v4, v6

    .line 824
    .local v2, "remainder":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_22

    .line 825
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 826
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 829
    .end local v2    # "remainder":J
    :cond_22
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .registers 11
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "endChar"    # C

    .prologue
    .line 896
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 897
    .local v4, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 900
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_a} :catch_3e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_48
    .catchall {:try_start_5 .. :try_end_a} :catchall_52

    .line 901
    .end local v1    # "is":Ljava/io/FileInputStream;
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_a
    iget-object v5, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 902
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 904
    if-lez v3, :cond_33

    .line 907
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    if-ge v0, v3, :cond_1e

    .line 908
    iget-object v5, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    aget-byte v5, v5, v0

    if-ne v5, p2, :cond_30

    .line 913
    :cond_1e
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_26} :catch_6c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_26} :catch_69
    .catchall {:try_start_a .. :try_end_26} :catchall_66

    .line 918
    if-eqz v2, :cond_2b

    .line 920
    :try_start_28
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_5c

    .line 925
    :cond_2b
    :goto_2b
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 928
    .end local v0    # "i":I
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :goto_2f
    return-object v5

    .line 907
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "i":I
    .restart local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 918
    .end local v0    # "i":I
    :cond_33
    if-eqz v2, :cond_38

    .line 920
    :try_start_35
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_5e

    .line 925
    :cond_38
    :goto_38
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 928
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :goto_3c
    const/4 v5, 0x0

    goto :goto_2f

    .line 915
    :catch_3e
    move-exception v5

    .line 918
    :goto_3f
    if-eqz v1, :cond_44

    .line 920
    :try_start_41
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_60

    .line 925
    :cond_44
    :goto_44
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_3c

    .line 916
    :catch_48
    move-exception v5

    .line 918
    :goto_49
    if-eqz v1, :cond_4e

    .line 920
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_62

    .line 925
    :cond_4e
    :goto_4e
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_3c

    .line 918
    :catchall_52
    move-exception v5

    :goto_53
    if-eqz v1, :cond_58

    .line 920
    :try_start_55
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_64

    .line 925
    :cond_58
    :goto_58
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v5

    .line 921
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

    .line 918
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catchall_66
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_53

    .line 916
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_69
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_49

    .line 915
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

    .line 692
    iget-boolean v6, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v6, :cond_65

    .line 693
    iget-object v6, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 694
    iget-object v6, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 696
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_5c

    .line 697
    iget-object v6, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 699
    .local v4, "stats":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    iget-boolean v6, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    if-eqz v6, :cond_59

    .line 700
    iget-object v6, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    iget-object v6, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v6, :cond_59

    iget-object v6, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v8, :cond_59

    .line 703
    iget-object v6, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 704
    iget-object v6, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 706
    .local v0, "M":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3c
    if-ge v3, v0, :cond_52

    .line 707
    iget-object v6, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 709
    .local v5, "tstats":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    iget-boolean v6, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    if-eqz v6, :cond_4f

    .line 710
    iget-object v6, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 714
    .end local v5    # "tstats":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    :cond_52
    iget-object v6, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/enterprise/application/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 696
    .end local v0    # "M":I
    .end local v3    # "j":I
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 719
    .end local v4    # "stats":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    :cond_5c
    iget-object v6, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/enterprise/application/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 720
    iput-boolean v8, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    .line 722
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_65
    return-void
.end method

.method public final buildWorkingProcsMap()V
    .registers 5

    .prologue
    .line 962
    iget-boolean v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v2, :cond_2e

    .line 963
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ProcessStats;->buildWorkingProcs()V

    .line 964
    iget-object v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 966
    iget-object v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 967
    .local v1, "s":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    iget-object v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsMap:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_12

    .line 970
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    :cond_2e
    return-void
.end method

.method public final countStats()I
    .registers 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats()I
    .registers 2

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ProcessStats;->buildWorkingProcs()V

    .line 735
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCpuTimeForPid(I)J
    .registers 10
    .param p1, "pid"    # I

    .prologue
    const/4 v6, 0x0

    .line 555
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/stat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "statFile":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mSinglePidStatsData:[J

    .line 558
    .local v1, "statsData":[J
    sget-object v4, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_STATS_FORMAT:[I

    invoke-static {v0, v4, v6, v1, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 560
    const/4 v4, 0x2

    aget-wide v4, v1, v4

    const/4 v6, 0x3

    aget-wide v6, v1, v6

    add-long v2, v4, v6

    .line 565
    :goto_2c
    return-wide v2

    :cond_2d
    const-wide/16 v2, 0x0

    goto :goto_2c
.end method

.method public getLastCpuSpeedTimes()[J
    .registers 9

    .prologue
    .line 574
    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    if-nez v1, :cond_21

    .line 575
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ProcessStats;->getCpuSpeedTimes([J)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    .line 576
    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    .line 578
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_42

    .line 579
    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    const-wide/16 v4, 0x1

    aput-wide v4, v1, v0

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 582
    .end local v0    # "i":I
    :cond_21
    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ProcessStats;->getCpuSpeedTimes([J)[J

    .line 584
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_27
    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_42

    .line 585
    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v2, v1, v0

    .line 586
    .local v2, "temp":J
    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v4, v1, v0

    iget-object v6, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    aget-wide v6, v6, v0

    sub-long/2addr v4, v6

    aput-wide v4, v1, v0

    .line 587
    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    aput-wide v2, v1, v0

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 591
    .end local v2    # "temp":J
    :cond_42
    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    return-object v1
.end method

.method public final getLastIdleTime()I
    .registers 2

    .prologue
    .line 678
    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .registers 2

    .prologue
    .line 664
    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .registers 2

    .prologue
    .line 669
    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .registers 2

    .prologue
    .line 673
    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .registers 2

    .prologue
    .line 660
    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .registers 2

    .prologue
    .line 655
    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    return-object v0
.end method

.method public final getTotalCpuPercent()F
    .registers 4

    .prologue
    .line 682
    iget v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    iget v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    add-int v0, v1, v2

    .line 684
    .local v0, "denom":I
    if-gtz v0, :cond_10

    .line 685
    const/4 v1, 0x0

    .line 688
    :goto_f
    return v1

    :cond_10
    iget v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    iget v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_f
.end method

.method public final getWorkingStatByPid(I)Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .registers 3
    .param p1, "pid"    # I

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    return-object v0
.end method

.method public final getWorkingStats(I)Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    return-object v0
.end method

.method public init()V
    .registers 4

    .prologue
    .line 273
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    .line 277
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ProcessStats;->update()V

    .line 278
    return-void
.end method

.method public onLoadChanged(FFF)V
    .registers 4
    .param p1, "load1"    # F
    .param p2, "load5"    # F
    .param p3, "load15"    # F

    .prologue
    .line 264
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .registers 4

    .prologue
    .line 744
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 745
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 746
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 747
    iget v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 748
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 749
    iget v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 750
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 751
    iget v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 752
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .registers 32
    .param p1, "now"    # J

    .prologue
    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/application/ProcessStats;->buildWorkingProcs()V

    .line 757
    new-instance v26, Ljava/io/StringWriter;

    invoke-direct/range {v26 .. v26}, Ljava/io/StringWriter;-><init>()V

    .line 758
    .local v26, "sw":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    move-object/from16 v0, v26

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 759
    .local v3, "pw":Ljava/io/PrintWriter;
    const-string v2, "CPU usage from "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    cmp-long v2, p1, v4

    if-lez v2, :cond_161

    .line 762
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 763
    const-string v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 765
    const-string v2, "ms ago"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 773
    :goto_38
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    sub-long v24, v4, v6

    .line 774
    .local v24, "sampleTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleRealTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleRealTime:J

    sub-long v22, v4, v6

    .line 775
    .local v22, "sampleRealTime":J
    const-wide/16 v4, 0x0

    cmp-long v2, v22, v4

    if-lez v2, :cond_17f

    const-wide/16 v4, 0x64

    mul-long v4, v4, v24

    div-long v20, v4, v22

    .line 777
    .local v20, "percAwake":J
    :goto_58
    const-wide/16 v4, 0x64

    cmp-long v2, v20, v4

    if-eqz v2, :cond_6d

    .line 778
    const-string v2, " with "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 779
    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 780
    const-string v2, "% awake"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 783
    :cond_6d
    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIoWaitTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSoftIrqTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    add-int v27, v2, v4

    .line 787
    .local v27, "totalTime":I
    const-string v2, "ProcessStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "totalTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " over sample time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 792
    .local v16, "N":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_c8
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_1a1

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 794
    .local v19, "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eqz v2, :cond_183

    const-string v4, " +"

    :goto_e2
    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_uptime:J

    const-wide/16 v10, 0x5

    add-long/2addr v8, v10

    long-to-int v2, v8

    div-int/lit8 v7, v2, 0xa

    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v19

    iget v13, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    move-object/from16 v0, v19

    iget v14, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/server/enterprise/application/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 798
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    if-nez v2, :cond_19d

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v2, :cond_19d

    .line 799
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 801
    .local v15, "M":I
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_122
    move/from16 v0, v18

    if-ge v0, v15, :cond_19d

    .line 802
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 803
    .local v28, "tst":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eqz v2, :cond_191

    const-string v4, "   +"

    :goto_13a
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_uptime:J

    const-wide/16 v10, 0x5

    add-long/2addr v8, v10

    long-to-int v2, v8

    div-int/lit8 v7, v2, 0xa

    move-object/from16 v0, v28

    iget v8, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    move-object/from16 v0, v28

    iget v9, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/server/enterprise/application/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 801
    add-int/lit8 v18, v18, 0x1

    goto :goto_122

    .line 767
    .end local v15    # "M":I
    .end local v16    # "N":I
    .end local v17    # "i":I
    .end local v18    # "j":I
    .end local v19    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .end local v20    # "percAwake":J
    .end local v22    # "sampleRealTime":J
    .end local v24    # "sampleTime":J
    .end local v27    # "totalTime":I
    .end local v28    # "tst":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    :cond_161
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 768
    const-string v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 769
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 770
    const-string v2, "ms later"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 775
    .restart local v22    # "sampleRealTime":J
    .restart local v24    # "sampleTime":J
    :cond_17f
    const-wide/16 v20, 0x0

    goto/16 :goto_58

    .line 794
    .restart local v16    # "N":I
    .restart local v17    # "i":I
    .restart local v19    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .restart local v20    # "percAwake":J
    .restart local v27    # "totalTime":I
    :cond_183
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    if-eqz v2, :cond_18d

    const-string v4, " -"

    goto/16 :goto_e2

    :cond_18d
    const-string v4, "  "

    goto/16 :goto_e2

    .line 803
    .restart local v15    # "M":I
    .restart local v18    # "j":I
    .restart local v28    # "tst":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    :cond_191
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    if-eqz v2, :cond_19a

    const-string v4, "   -"

    goto :goto_13a

    :cond_19a
    const-string v4, "    "

    goto :goto_13a

    .line 792
    .end local v15    # "M":I
    .end local v18    # "j":I
    .end local v28    # "tst":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    :cond_19d
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_c8

    .line 811
    .end local v19    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    :cond_1a1
    const-string v4, ""

    const/4 v5, -0x1

    const-string v6, "TOTAL"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIoWaitTime:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSoftIrqTime:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move/from16 v7, v27

    invoke-direct/range {v2 .. v14}, Lcom/android/server/enterprise/application/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 813
    invoke-virtual/range {v26 .. v26}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public update()V
    .registers 29

    .prologue
    .line 283
    const-string v4, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    .line 288
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleRealTime:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleRealTime:J

    .line 289
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleRealTime:J

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ProcessStats;->mSystemCpuData:[J

    move-object/from16 v22, v0

    .line 292
    .local v22, "sysCpu":[J
    const-string v4, "/proc/stat"

    sget-object v5, Lcom/android/server/enterprise/application/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-static {v4, v5, v6, v0, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_174

    .line 295
    const/4 v4, 0x0

    aget-wide v4, v22, v4

    const/4 v6, 0x1

    aget-wide v6, v22, v6

    add-long v26, v4, v6

    .line 297
    .local v26, "usertime":J
    const/4 v4, 0x2

    aget-wide v24, v22, v4

    .line 299
    .local v24, "systemtime":J
    const/4 v4, 0x3

    aget-wide v10, v22, v4

    .line 301
    .local v10, "idletime":J
    const/4 v4, 0x4

    aget-wide v12, v22, v4

    .line 302
    .local v12, "iowaittime":J
    const/4 v4, 0x5

    aget-wide v14, v22, v4

    .line 303
    .local v14, "irqtime":J
    const/4 v4, 0x6

    aget-wide v20, v22, v4

    .line 304
    .local v20, "softirqtime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mBaseUserTime:J

    sub-long v4, v26, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    .line 305
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSystemTime:J

    sub-long v4, v24, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    .line 306
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIoWaitTime:J

    sub-long v4, v12, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIoWaitTime:I

    .line 307
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIrqTime:J

    sub-long v4, v14, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    .line 308
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSoftIrqTime:J

    sub-long v4, v20, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSoftIrqTime:I

    .line 309
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIdleTime:J

    sub-long v4, v10, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    .line 312
    const-string v4, "Load"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total U:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-wide v6, v22, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " N:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-wide v6, v22, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " S:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-wide v6, v22, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " I:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-wide v6, v22, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " W:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    aget-wide v6, v22, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Q:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    aget-wide v6, v22, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " O:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x6

    aget-wide v6, v22, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v4, "Load"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rel U:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " S:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " I:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Q:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/enterprise/application/ProcessStats;->mBaseUserTime:J

    .line 321
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSystemTime:J

    .line 322
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIoWaitTime:J

    .line 323
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIrqTime:J

    .line 324
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSoftIrqTime:J

    .line 325
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIdleTime:J

    .line 328
    .end local v10    # "idletime":J
    .end local v12    # "iowaittime":J
    .end local v14    # "irqtime":J
    .end local v20    # "softirqtime":J
    .end local v24    # "systemtime":J
    .end local v26    # "usertime":J
    :cond_174
    const-string v5, "/proc"

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurPids:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurPids:[I

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ProcessStats;->mLoadAverageData:[F

    move-object/from16 v19, v0

    .line 331
    .local v19, "loadAverages":[F
    const-string v4, "/proc/loadavg"

    sget-object v5, Lcom/android/server/enterprise/application/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-static {v4, v5, v6, v7, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_1df

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

    .line 337
    .local v17, "load15":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    cmpl-float v4, v16, v4

    if-nez v4, :cond_1c2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    cmpl-float v4, v18, v4

    if-nez v4, :cond_1c2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    cmpl-float v4, v17, v4

    if-eqz v4, :cond_1df

    .line 338
    :cond_1c2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    .line 339
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    .line 340
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    .line 341
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/application/ProcessStats;->onLoadChanged(FFF)V

    .line 345
    .end local v16    # "load1":F
    .end local v17    # "load15":F
    .end local v18    # "load5":F
    :cond_1df
    const-string v4, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*** TIME TO COLLECT STATS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    .line 349
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    .line 350
    return-void
.end method
