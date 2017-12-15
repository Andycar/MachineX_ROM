.class public Landroid/app/JobSchedulerImpl;
.super Landroid/app/job/JobScheduler;
.source "JobSchedulerImpl.java"


# instance fields
.field mBinder:Landroid/app/job/IJobScheduler;


# direct methods
.method constructor <init>(Landroid/app/job/IJobScheduler;)V
    .registers 2
    .param p1, "binder"    # Landroid/app/job/IJobScheduler;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/job/JobScheduler;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    .line 37
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .registers 3
    .param p1, "jobId"    # I

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0, p1}, Landroid/app/job/IJobScheduler;->cancel(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 54
    :goto_5
    return-void

    .line 52
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public cancelAll()V
    .registers 2

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v0}, Landroid/app/job/IJobScheduler;->cancelAll()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 62
    :goto_5
    return-void

    .line 60
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public getAllPendingJobs()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v1}, Landroid/app/job/IJobScheduler;->getAllPendingJobs()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 69
    :goto_6
    return-object v1

    .line 68
    :catch_7
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public schedule(Landroid/app/job/JobInfo;)I
    .registers 4
    .param p1, "job"    # Landroid/app/job/JobInfo;

    .prologue
    .line 42
    :try_start_0
    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v1, p1}, Landroid/app/job/IJobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 44
    :goto_6
    return v1

    .line 43
    :catch_7
    move-exception v0

    .line 44
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method
