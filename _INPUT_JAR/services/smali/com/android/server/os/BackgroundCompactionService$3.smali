.class Lcom/android/server/os/BackgroundCompactionService$3;
.super Ljava/lang/Thread;
.source "BackgroundCompactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/os/BackgroundCompactionService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/os/BackgroundCompactionService;

.field final synthetic val$jobParams:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/android/server/os/BackgroundCompactionService;Ljava/lang/String;Landroid/app/job/JobParameters;)V
    .registers 4
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/os/BackgroundCompactionService$3;->this$0:Lcom/android/server/os/BackgroundCompactionService;

    iput-object p3, p0, Lcom/android/server/os/BackgroundCompactionService$3;->val$jobParams:Landroid/app/job/JobParameters;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 173
    const-string v0, "BackgroundCompactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Execute BGCompaction (type2). ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/os/BackgroundCompactionService;->bgc_counts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string/jumbo v0, "sys.sysctl.compact_memory"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/server/os/BackgroundCompactionService$3;->this$0:Lcom/android/server/os/BackgroundCompactionService;

    iget-object v1, p0, Lcom/android/server/os/BackgroundCompactionService$3;->val$jobParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/os/BackgroundCompactionService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 176
    sget v0, Lcom/android/server/os/BackgroundCompactionService;->bgc_counts:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/os/BackgroundCompactionService;->bgc_counts:I

    .line 177
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    const/16 v1, 0x322

    # getter for: Lcom/android/server/os/BackgroundCompactionService;->sCompactionServiceName:Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/server/os/BackgroundCompactionService;->access$000()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const-wide/32 v2, 0x4100a0

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/BackgroundCompactionService;->job_idle:Landroid/app/job/JobInfo;

    .line 181
    const-string v0, "BackgroundCompactionService"

    const-string v1, "compact_memory command done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v0, "BackgroundCompactionService"

    const-string v1, "Schedule Type2 BGCompaction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v0, Lcom/android/server/os/BackgroundCompactionService;->js_idle:Landroid/app/job/JobScheduler;

    sget-object v1, Lcom/android/server/os/BackgroundCompactionService;->job_idle:Landroid/app/job/JobInfo;

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 185
    return-void
.end method
