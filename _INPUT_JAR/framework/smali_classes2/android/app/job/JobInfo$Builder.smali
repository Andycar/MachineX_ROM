.class public final Landroid/app/job/JobInfo$Builder;
.super Ljava/lang/Object;
.source "JobInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBackoffPolicy:I

.field private mBackoffPolicySet:Z

.field private mExtras:Landroid/os/PersistableBundle;

.field private mHasEarlyConstraint:Z

.field private mHasLateConstraint:Z

.field private mInitialBackoffMillis:J

.field private mIntervalMillis:J

.field private mIsPeriodic:Z

.field private mIsPersisted:Z

.field private mJobId:I

.field private mJobService:Landroid/content/ComponentName;

.field private mMaxExecutionDelayMillis:J

.field private mMinLatencyMillis:J

.field private mNetworkType:I

.field private mRequiresCharging:Z

.field private mRequiresDeviceIdle:Z


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;)V
    .registers 5
    .param p1, "jobId"    # I
    .param p2, "jobService"    # Landroid/content/ComponentName;

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 303
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    .line 304
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    .line 316
    iput-object p2, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    .line 317
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    .line 318
    return-void
.end method

.method static synthetic access$000(Landroid/app/job/JobInfo$Builder;)I
    .registers 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 285
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    return v0
.end method

.method static synthetic access$100(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;
    .registers 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 285
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/app/job/JobInfo$Builder;)J
    .registers 3
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 285
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    return-wide v0
.end method

.method static synthetic access$1100(Landroid/app/job/JobInfo$Builder;)J
    .registers 3
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 285
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    return-wide v0
.end method

.method static synthetic access$1200(Landroid/app/job/JobInfo$Builder;)I
    .registers 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 285
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    return v0
.end method

.method static synthetic access$1300(Landroid/app/job/JobInfo$Builder;)Z
    .registers 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 285
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/app/job/JobInfo$Builder;)Z
    .registers 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 285
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    return v0
.end method

.method static synthetic access$200(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 285
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/job/JobInfo$Builder;)Z
    .registers 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 285
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mRequiresCharging:Z

    return v0
.end method

.method static synthetic access$400(Landroid/app/job/JobInfo$Builder;)Z
    .registers 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 285
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mRequiresDeviceIdle:Z

    return v0
.end method

.method static synthetic access$500(Landroid/app/job/JobInfo$Builder;)I
    .registers 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 285
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    return v0
.end method

.method static synthetic access$600(Landroid/app/job/JobInfo$Builder;)J
    .registers 3
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 285
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/app/job/JobInfo$Builder;)J
    .registers 3
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 285
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/app/job/JobInfo$Builder;)Z
    .registers 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 285
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    return v0
.end method

.method static synthetic access$900(Landroid/app/job/JobInfo$Builder;)Z
    .registers 2
    .param p0, "x0"    # Landroid/app/job/JobInfo$Builder;

    .prologue
    .line 285
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    return v0
.end method


# virtual methods
.method public build()Landroid/app/job/JobInfo;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 449
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mRequiresCharging:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mRequiresDeviceIdle:Z

    if-nez v0, :cond_1e

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    if-nez v0, :cond_1e

    .line 451
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You\'re trying to build a job with no constraints, this is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_1e
    new-instance v0, Landroid/os/PersistableBundle;

    iget-object v1, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 456
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    if-eqz v0, :cond_39

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_39

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call setOverrideDeadline() on a periodic job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_39
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    if-eqz v0, :cond_4b

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4b

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call setMinimumLatency() on a periodic job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_4b
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    if-eqz v0, :cond_5b

    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mRequiresDeviceIdle:Z

    if-eqz v0, :cond_5b

    .line 465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An idle mode job will not respect any back-off policy, so calling setBackoffCriteria with setRequiresDeviceIdle is an error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_5b
    new-instance v0, Landroid/app/job/JobInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo$1;)V

    return-object v0
.end method

.method public setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;
    .registers 5
    .param p1, "initialBackoffMillis"    # J
    .param p3, "backoffPolicy"    # I

    .prologue
    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    .line 426
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    .line 427
    iput p3, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    .line 428
    return-object p0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .prologue
    .line 325
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 326
    return-object p0
.end method

.method public setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    .registers 4
    .param p1, "minLatencyMillis"    # J

    .prologue
    .line 391
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    .line 393
    return-object p0
.end method

.method public setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    .registers 4
    .param p1, "maxExecutionDelayMillis"    # J

    .prologue
    .line 404
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    .line 406
    return-object p0
.end method

.method public setPeriodic(J)Landroid/app/job/JobInfo$Builder;
    .registers 4
    .param p1, "intervalMillis"    # J

    .prologue
    const/4 v0, 0x1

    .line 376
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    .line 377
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    .line 378
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    .line 379
    return-object p0
.end method

.method public setPersisted(Z)Landroid/app/job/JobInfo$Builder;
    .registers 2
    .param p1, "isPersisted"    # Z

    .prologue
    .line 440
    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    .line 441
    return-object p0
.end method

.method public setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;
    .registers 2
    .param p1, "networkType"    # I

    .prologue
    .line 338
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    .line 339
    return-object p0
.end method

.method public setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;
    .registers 2
    .param p1, "requiresCharging"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mRequiresCharging:Z

    .line 349
    return-object p0
.end method

.method public setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;
    .registers 2
    .param p1, "requiresDeviceIdle"    # Z

    .prologue
    .line 363
    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mRequiresDeviceIdle:Z

    .line 364
    return-object p0
.end method
