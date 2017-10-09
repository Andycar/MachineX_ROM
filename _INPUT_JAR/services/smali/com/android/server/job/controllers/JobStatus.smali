.class public Lcom/android/server/job/controllers/JobStatus;
.super Ljava/lang/Object;
.source "JobStatus.java"


# static fields
.field public static final NO_EARLIEST_RUNTIME:J = 0x0L

.field public static final NO_LATEST_RUNTIME:J = 0x7fffffffffffffffL


# instance fields
.field final chargingConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final connectivityConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final deadlineConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private earliestRunTimeElapsedMillis:J

.field final idleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final job:Landroid/app/job/JobInfo;

.field private latestRunTimeElapsedMillis:J

.field final name:Ljava/lang/String;

.field private final numFailures:I

.field final tag:Ljava/lang/String;

.field final timeDelayConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final uId:I

.field final unmeteredConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/app/job/JobInfo;I)V
    .registers 7
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "uId"    # I

    .prologue
    .line 86
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;II)V

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 90
    .local v0, "elapsedNow":J
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 91
    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 92
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 99
    :goto_17
    return-void

    .line 94
    :cond_18
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    :goto_23
    iput-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 96
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    :goto_30
    iput-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    goto :goto_17

    .line 94
    :cond_33
    const-wide/16 v2, 0x0

    goto :goto_23

    .line 96
    :cond_36
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_30
.end method

.method private constructor <init>(Landroid/app/job/JobInfo;II)V
    .registers 6
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "uId"    # I
    .param p3, "numFailures"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->chargingConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->timeDelayConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->deadlineConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->idleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unmeteredConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->connectivityConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    iput-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 78
    iput p2, p0, Lcom/android/server/job/controllers/JobStatus;->uId:I

    .line 79
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->name:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*job*/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    .line 81
    iput p3, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobInfo;IJJ)V
    .registers 8
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "uId"    # I
    .param p3, "earliestRunTimeElapsedMillis"    # J
    .param p5, "latestRunTimeElapsedMillis"    # J

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;II)V

    .line 112
    iput-wide p3, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 113
    iput-wide p5, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;JJI)V
    .registers 9
    .param p1, "rescheduling"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "newEarliestRuntimeElapsedMillis"    # J
    .param p4, "newLatestRuntimeElapsedMillis"    # J
    .param p6, "backoffAttempt"    # I

    .prologue
    .line 119
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p6}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;II)V

    .line 121
    iput-wide p2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 122
    iput-wide p4, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 123
    return-void
.end method

.method private formatRunTime(JJ)Ljava/lang/String;
    .registers 14
    .param p1, "runtime"    # J
    .param p3, "defaultValue"    # J

    .prologue
    .line 237
    cmp-long v4, p1, p3

    if-nez v4, :cond_8

    .line 238
    const-string/jumbo v4, "none"

    .line 245
    :goto_7
    return-object v4

    .line 240
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 241
    .local v0, "elapsedNow":J
    sub-long v2, p1, v0

    .line 242
    .local v2, "nextRuntime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1d

    .line 243
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 245
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v6, -0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public getEarliestRunTime()J
    .registers 3

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public getJob()Landroid/app/job/JobInfo;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    return-object v0
.end method

.method public getJobId()I
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    return v0
.end method

.method public getLatestRunTimeElapsed()J
    .registers 3

    .prologue
    .line 194
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumFailures()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    return v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getServiceToken()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->uId:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->uId:I

    return v0
.end method

.method public getUserId()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->uId:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public hasChargingConstraint()Z
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v0

    return v0
.end method

.method public hasConnectivityConstraint()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 162
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getNetworkType()I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDeadlineConstraint()Z
    .registers 5

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public hasIdleConstraint()Z
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v0

    return v0
.end method

.method public hasTimingDelayConstraint()Z
    .registers 5

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasUnmeteredConstraint()Z
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getNetworkType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public declared-synchronized isConstraintsSatisfied()Z
    .registers 2

    .prologue
    .line 210
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->chargingConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->timeDelayConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->connectivityConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unmeteredConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_39
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->idleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_4c

    move-result v0

    if-eqz v0, :cond_4a

    :cond_47
    const/4 v0, 0x1

    :goto_48
    monitor-exit p0

    return v0

    :cond_4a
    const/4 v0, 0x0

    goto :goto_48

    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPersisted()Z
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isReady()Z
    .registers 2

    .prologue
    .line 202
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->deadlineConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1a

    move-result v0

    if-eqz v0, :cond_18

    :cond_15
    const/4 v0, 0x1

    :goto_16
    monitor-exit p0

    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_16

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public matches(II)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-ne v0, p2, :cond_e

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->uId:I

    if-ne v0, p1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " jId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",jId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",R=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",N="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",C="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",F="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",P="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-eqz v0, :cond_db

    const-string v0, "(READY)"

    :goto_cc
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_db
    const-string v0, ""

    goto :goto_cc
.end method
