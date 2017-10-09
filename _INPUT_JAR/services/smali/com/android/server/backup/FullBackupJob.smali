.class public Lcom/android/server/backup/FullBackupJob;
.super Landroid/app/job/JobService;
.source "FullBackupJob.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final JOB_ID:I = 0x5038

.field private static final TAG:Ljava/lang/String; = "FullBackupJob"

.field private static sIdleService:Landroid/content/ComponentName;


# instance fields
.field mParams:Landroid/app/job/JobParameters;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 30
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/backup/FullBackupJob;->sIdleService:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;J)V
    .registers 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "minDelay"    # J

    .prologue
    const/4 v5, 0x1

    .line 38
    const-string v2, "jobscheduler"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 39
    .local v1, "js":Landroid/app/job/JobScheduler;
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const/16 v3, 0x5038

    sget-object v4, Lcom/android/server/backup/FullBackupJob;->sIdleService:Landroid/content/ComponentName;

    invoke-direct {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v2, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 43
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_28

    .line 44
    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 46
    :cond_28
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 47
    return-void
.end method


# virtual methods
.method public finishBackupPass()V
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    if-eqz v0, :cond_d

    .line 52
    iget-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/FullBackupJob;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    .line 55
    :cond_d
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    .line 62
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    .line 63
    .local v0, "service":Lcom/android/server/backup/BackupManagerService;
    invoke-virtual {v0, p0}, Lcom/android/server/backup/BackupManagerService;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z

    move-result v1

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    if-eqz v1, :cond_e

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/FullBackupJob;->mParams:Landroid/app/job/JobParameters;

    .line 70
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    .line 71
    .local v0, "service":Lcom/android/server/backup/BackupManagerService;
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->endFullBackup()V

    .line 73
    .end local v0    # "service":Lcom/android/server/backup/BackupManagerService;
    :cond_e
    const/4 v1, 0x0

    return v1
.end method
