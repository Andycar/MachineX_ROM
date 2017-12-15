.class Landroid/hardware/camera2/legacy/PerfMeasurement;
.super Ljava/lang/Object;
.source "PerfMeasurement.java"


# static fields
.field public static final DEFAULT_MAX_QUERIES:I = 0x3

.field private static final FAILED_TIMING:J = -0x2L

.field private static final NO_DURATION_YET:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "PerfMeasurement"


# instance fields
.field private mCollectedCpuDurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCollectedGpuDurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCollectedTimestamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCompletedQueryCount:I

.field private mCpuDurationsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeContext:J

.field private mStartTimeNs:J

.field private mTimestampQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    .line 95
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeCreateContext(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    .line 96
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "maxQueries"    # I

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    .line 106
    const/4 v0, 0x1

    if-ge p1, v0, :cond_35

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxQueries is less than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_35
    invoke-static {p1}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeCreateContext(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    .line 108
    return-void
.end method

.method private getNextGlDuration()J
    .registers 5

    .prologue
    .line 229
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    invoke-static {v2, v3}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeGetNextGlDuration(J)J

    move-result-wide v0

    .line 230
    .local v0, "duration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_12

    .line 231
    iget v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    .line 233
    :cond_12
    return-wide v0
.end method

.method public static isGlTimingSupported()Z
    .registers 1

    .prologue
    .line 116
    invoke-static {}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeQuerySupport()Z

    move-result v0

    return v0
.end method

.method private static native nativeCreateContext(I)J
.end method

.method private static native nativeDeleteContext(J)V
.end method

.method protected static native nativeGetNextGlDuration(J)J
.end method

.method private static native nativeQuerySupport()Z
.end method

.method protected static native nativeStartGlTimer(J)V
.end method

.method protected static native nativeStopGlTimer(J)V
.end method


# virtual methods
.method public addTimestamp(J)V
    .registers 6
    .param p1, "timestamp"    # J

    .prologue
    .line 209
    iget-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public dumpPerformanceData(Ljava/lang/String;)V
    .registers 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 135
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_60

    .local v0, "dump":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .line 136
    :try_start_b
    const-string/jumbo v4, "timestamp gpu_duration cpu_duration\n"

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 137
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_44

    .line 138
    const-string v4, "%d %d %d\n"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 143
    :cond_44
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 144
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 145
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_53} :catch_88
    .catchall {:try_start_b .. :try_end_53} :catchall_9f

    .line 146
    if-eqz v0, :cond_5a

    if-eqz v5, :cond_84

    :try_start_57
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_5b
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_60

    .line 149
    .end local v0    # "dump":Ljava/io/BufferedWriter;
    .end local v2    # "i":I
    :cond_5a
    :goto_5a
    return-void

    .line 146
    .restart local v0    # "dump":Ljava/io/BufferedWriter;
    .restart local v2    # "i":I
    :catch_5b
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_5c
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_5a

    .end local v0    # "dump":Ljava/io/BufferedWriter;
    .end local v2    # "i":I
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_60
    move-exception v1

    .line 147
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "PerfMeasurement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing data dump to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 146
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "dump":Ljava/io/BufferedWriter;
    .restart local v2    # "i":I
    :cond_84
    :try_start_84
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_60

    goto :goto_5a

    .line 135
    .end local v2    # "i":I
    :catch_88
    move-exception v4

    :try_start_89
    throw v4
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    .line 146
    :catchall_8a
    move-exception v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_8e
    if-eqz v0, :cond_95

    if-eqz v5, :cond_9b

    :try_start_92
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_95} :catch_96
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_60

    :cond_95
    :goto_95
    :try_start_95
    throw v4

    :catch_96
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_95

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_9b
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_9e} :catch_60

    goto :goto_95

    :catchall_9f
    move-exception v4

    goto :goto_8e
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 246
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeDeleteContext(J)V

    .line 247
    return-void
.end method

.method public getCompletedQueryCount()I
    .registers 2

    .prologue
    .line 241
    iget v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    return v0
.end method

.method public startTimer()V
    .registers 3

    .prologue
    .line 162
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeStartGlTimer(J)V

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mStartTimeNs:J

    .line 164
    return-void
.end method

.method public stopTimer()V
    .registers 11

    .prologue
    const-wide/16 v6, -0x1

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 179
    .local v2, "endTimeNs":J
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    iget-wide v8, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mStartTimeNs:J

    sub-long v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 181
    iget-wide v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    invoke-static {v4, v5}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeStopGlTimer(J)V

    .line 185
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/PerfMeasurement;->getNextGlDuration()J

    move-result-wide v0

    .line 186
    .local v0, "duration":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_4e

    .line 187
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v8, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6f

    move-wide v4, v6

    :goto_36
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v5, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7c

    :goto_47
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_4e
    const-wide/16 v4, -0x2

    cmp-long v4, v0, v4

    if-nez v4, :cond_6e

    .line 195
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_61

    .line 196
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 198
    :cond_61
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6e

    .line 199
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 202
    :cond_6e
    return-void

    .line 188
    :cond_6f
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_36

    .line 190
    :cond_7c
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_47
.end method
