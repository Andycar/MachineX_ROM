.class public final Lcom/android/internal/app/ProcessStats$ServiceState;
.super Lcom/android/internal/app/ProcessStats$DurationsTable;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceState"
.end annotation


# static fields
.field public static final SERVICE_BOUND:I = 0x2

.field static final SERVICE_COUNT:I = 0x4

.field public static final SERVICE_EXEC:I = 0x3

.field public static final SERVICE_RUN:I = 0x0

.field public static final SERVICE_STARTED:I = 0x1


# instance fields
.field mBoundCount:I

.field mBoundStartTime:J

.field public mBoundState:I

.field mExecCount:I

.field mExecStartTime:J

.field public mExecState:I

.field mOwner:Ljava/lang/Object;

.field public final mPackage:Ljava/lang/String;

.field mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

.field public final mProcessName:Ljava/lang/String;

.field mRestarting:Z

.field mRunCount:I

.field mRunStartTime:J

.field public mRunState:I

.field mStarted:Z

.field mStartedCount:I

.field mStartedStartTime:J

.field public mStartedState:I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V
    .registers 7
    .param p1, "processStats"    # Lcom/android/internal/app/ProcessStats;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;

    .prologue
    const/4 v0, -0x1

    .line 3503
    invoke-direct {p0, p1, p3}, Lcom/android/internal/app/ProcessStats$DurationsTable;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V

    .line 3484
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    .line 3490
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    .line 3494
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    .line 3498
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    .line 3504
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    .line 3505
    iput-object p4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    .line 3506
    iput-object p5, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3507
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ProcessStats$ServiceState;IIJIJ)J
    .registers 10
    .param p0, "x0"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # I
    .param p6, "x5"    # J

    .prologue
    .line 3470
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/app/ProcessStats$ServiceState;->getDuration(IIJIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDuration(IIJIJ)J
    .registers 14
    .param p1, "opType"    # I
    .param p2, "curState"    # I
    .param p3, "startTime"    # J
    .param p5, "memFactor"    # I
    .param p6, "now"    # J

    .prologue
    .line 3731
    mul-int/lit8 v1, p5, 0x4

    add-int v0, p1, v1

    .line 3732
    .local v0, "state":I
    invoke-virtual {p0, v0, p6, p7}, Lcom/android/internal/app/ProcessStats$ServiceState;->getDuration(IJ)J

    move-result-wide v2

    .line 3733
    .local v2, "time":J
    if-ne p2, p5, :cond_d

    .line 3734
    sub-long v4, p6, p3

    add-long/2addr v2, v4

    .line 3736
    :cond_d
    return-wide v2
.end method

.method private updateRunning(IJ)V
    .registers 8
    .param p1, "memFactor"    # I
    .param p2, "now"    # J

    .prologue
    const/4 v1, -0x1

    .line 3642
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-ne v2, v1, :cond_d

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-ne v2, v1, :cond_d

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v1, :cond_28

    :cond_d
    move v0, p1

    .line 3644
    .local v0, "state":I
    :goto_e
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    if-eq v2, v0, :cond_27

    .line 3645
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    if-eq v2, v1, :cond_2a

    .line 3646
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x0

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    sub-long v2, p2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3651
    :cond_23
    :goto_23
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    .line 3652
    iput-wide p2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    .line 3654
    :cond_27
    return-void

    .end local v0    # "state":I
    :cond_28
    move v0, v1

    .line 3642
    goto :goto_e

    .line 3648
    .restart local v0    # "state":I
    :cond_2a
    if-eq v0, v1, :cond_23

    .line 3649
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    goto :goto_23
.end method


# virtual methods
.method add(Lcom/android/internal/app/ProcessStats$ServiceState;)V
    .registers 4
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats$ServiceState;

    .prologue
    .line 3586
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDurations(Lcom/android/internal/app/ProcessStats$DurationsTable;)V

    .line 3587
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    .line 3588
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    .line 3589
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    .line 3590
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    .line 3591
    return-void
.end method

.method public applyNewOwner(Ljava/lang/Object;)V
    .registers 7
    .param p1, "newOwner"    # Ljava/lang/Object;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 3510
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-eq v2, p1, :cond_13

    .line 3511
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v2, :cond_14

    .line 3512
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    .line 3513
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->incActiveServices(Ljava/lang/String;)V

    .line 3541
    :cond_13
    :goto_13
    return-void

    .line 3517
    :cond_14
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    .line 3518
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-nez v2, :cond_22

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-ne v2, v4, :cond_22

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v4, :cond_13

    .line 3519
    :cond_22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3520
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-eqz v2, :cond_2d

    .line 3524
    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 3526
    :cond_2d
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v2, v4, :cond_34

    .line 3530
    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 3532
    :cond_34
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v4, :cond_13

    .line 3536
    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    goto :goto_13
.end method

.method public clearCurrentOwner(Ljava/lang/Object;Z)V
    .registers 10
    .param p1, "owner"    # Ljava/lang/Object;
    .param p2, "silently"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 3544
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-ne v2, p1, :cond_ef

    .line 3545
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->decActiveServices(Ljava/lang/String;)V

    .line 3546
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-nez v2, :cond_19

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-ne v2, v6, :cond_19

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v6, :cond_ec

    .line 3547
    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3548
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-eqz v2, :cond_62

    .line 3549
    if-nez p2, :cond_5f

    .line 3550
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cleared while started: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    :cond_5f
    invoke-virtual {p0, v5, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 3556
    :cond_62
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v2, v6, :cond_a7

    .line 3557
    if-nez p2, :cond_a4

    .line 3558
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cleared while bound: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    :cond_a4
    invoke-virtual {p0, v5, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 3564
    :cond_a7
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v6, :cond_ec

    .line 3565
    if-nez p2, :cond_e9

    .line 3566
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cleared while exec: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    :cond_e9
    invoke-virtual {p0, v5, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    .line 3573
    .end local v0    # "now":J
    :cond_ec
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    .line 3575
    :cond_ef
    return-void
.end method

.method commitStateTime(J)V
    .registers 8
    .param p1, "now"    # J

    .prologue
    const/4 v1, -0x1

    .line 3622
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    if-eq v0, v1, :cond_14

    .line 3623
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x0

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3624
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    .line 3626
    :cond_14
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v0, v1, :cond_27

    .line 3627
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3629
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    .line 3631
    :cond_27
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v0, v1, :cond_3a

    .line 3632
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3633
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    .line 3635
    :cond_3a
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v0, v1, :cond_4d

    .line 3636
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x3

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3637
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    .line 3639
    :cond_4d
    return-void
.end method

.method public isInUse()Z
    .registers 2

    .prologue
    .line 3578
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isRestarting()Z
    .registers 2

    .prologue
    .line 3582
    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    return v0
.end method

.method readFromParcel(Landroid/os/Parcel;)Z
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3611
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ServiceState;->readDurationsFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3612
    const/4 v0, 0x0

    .line 3618
    :goto_7
    return v0

    .line 3614
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    .line 3615
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    .line 3616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    .line 3617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    .line 3618
    const/4 v0, 0x1

    goto :goto_7
.end method

.method resetSafely(J)V
    .registers 8
    .param p1, "now"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 3594
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats$ServiceState;->resetDurationsSafely()V

    .line 3595
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    if-eq v0, v3, :cond_2a

    move v0, v1

    :goto_b
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    .line 3596
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v0, v3, :cond_2c

    move v0, v1

    :goto_12
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    .line 3597
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v0, v3, :cond_2e

    move v0, v1

    :goto_19
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    .line 3598
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v0, v3, :cond_30

    :goto_1f
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    .line 3599
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    .line 3600
    return-void

    :cond_2a
    move v0, v2

    .line 3595
    goto :goto_b

    :cond_2c
    move v0, v2

    .line 3596
    goto :goto_12

    :cond_2e
    move v0, v2

    .line 3597
    goto :goto_19

    :cond_30
    move v1, v2

    .line 3598
    goto :goto_1f
.end method

.method public setBound(ZIJ)V
    .registers 10
    .param p1, "bound"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .prologue
    const/4 v1, -0x1

    .line 3695
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v2, :cond_23

    .line 3696
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without owner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3698
    :cond_23
    if-eqz p1, :cond_43

    move v0, p2

    .line 3699
    .local v0, "state":I
    :goto_26
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v2, v0, :cond_42

    .line 3700
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v2, v1, :cond_45

    .line 3701
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x2

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    sub-long v2, p3, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3706
    :cond_3b
    :goto_3b
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    .line 3707
    iput-wide p3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    .line 3708
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateRunning(IJ)V

    .line 3710
    :cond_42
    return-void

    .end local v0    # "state":I
    :cond_43
    move v0, v1

    .line 3698
    goto :goto_26

    .line 3703
    .restart local v0    # "state":I
    :cond_45
    if-eqz p1, :cond_3b

    .line 3704
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    goto :goto_3b
.end method

.method public setExecuting(ZIJ)V
    .registers 10
    .param p1, "executing"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .prologue
    const/4 v1, -0x1

    .line 3713
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v2, :cond_23

    .line 3714
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without owner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3716
    :cond_23
    if-eqz p1, :cond_43

    move v0, p2

    .line 3717
    .local v0, "state":I
    :goto_26
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v0, :cond_42

    .line 3718
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v1, :cond_45

    .line 3719
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x3

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    sub-long v2, p3, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3723
    :cond_3b
    :goto_3b
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    .line 3724
    iput-wide p3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    .line 3725
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateRunning(IJ)V

    .line 3727
    :cond_42
    return-void

    .end local v0    # "state":I
    :cond_43
    move v0, v1

    .line 3716
    goto :goto_26

    .line 3720
    .restart local v0    # "state":I
    :cond_45
    if-eqz p1, :cond_3b

    .line 3721
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    goto :goto_3b
.end method

.method public setRestarting(ZIJ)V
    .registers 6
    .param p1, "restarting"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .prologue
    .line 3665
    iput-boolean p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    .line 3666
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateStartedState(IJ)V

    .line 3667
    return-void
.end method

.method public setStarted(ZIJ)V
    .registers 8
    .param p1, "started"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .prologue
    .line 3657
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_22

    .line 3658
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    :cond_22
    iput-boolean p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    .line 3661
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateStartedState(IJ)V

    .line 3662
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateStartedState(IJ)V
    .registers 12
    .param p1, "memFactor"    # I
    .param p2, "now"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 3670
    iget v6, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v6, v5, :cond_46

    move v2, v3

    .line 3671
    .local v2, "wasStarted":Z
    :goto_8
    iget-boolean v6, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-nez v6, :cond_10

    iget-boolean v6, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    if-eqz v6, :cond_48

    :cond_10
    move v0, v3

    .line 3672
    .local v0, "started":Z
    :goto_11
    if-eqz v0, :cond_4a

    move v1, p1

    .line 3673
    .local v1, "state":I
    :goto_14
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v3, v1, :cond_45

    .line 3674
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v3, v5, :cond_4c

    .line 3675
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    iget-wide v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    sub-long v4, p2, v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3680
    :cond_29
    :goto_29
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    .line 3681
    iput-wide p2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    .line 3682
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3683
    if-eq v2, v0, :cond_42

    .line 3684
    if-eqz v0, :cond_55

    .line 3685
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/internal/app/ProcessStats$ProcessState;->incStartedServices(IJLjava/lang/String;)V

    .line 3690
    :cond_42
    :goto_42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateRunning(IJ)V

    .line 3692
    :cond_45
    return-void

    .end local v0    # "started":Z
    .end local v1    # "state":I
    .end local v2    # "wasStarted":Z
    :cond_46
    move v2, v4

    .line 3670
    goto :goto_8

    .restart local v2    # "wasStarted":Z
    :cond_48
    move v0, v4

    .line 3671
    goto :goto_11

    .restart local v0    # "started":Z
    :cond_4a
    move v1, v5

    .line 3672
    goto :goto_14

    .line 3677
    .restart local v1    # "state":I
    :cond_4c
    if-eqz v0, :cond_29

    .line 3678
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    goto :goto_29

    .line 3687
    :cond_55
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/internal/app/ProcessStats$ProcessState;->decStartedServices(IJLjava/lang/String;)V

    goto :goto_42
.end method

.method writeToParcel(Landroid/os/Parcel;J)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J

    .prologue
    .line 3603
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ServiceState;->writeDurationsToParcel(Landroid/os/Parcel;)V

    .line 3604
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3605
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3606
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3607
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3608
    return-void
.end method
