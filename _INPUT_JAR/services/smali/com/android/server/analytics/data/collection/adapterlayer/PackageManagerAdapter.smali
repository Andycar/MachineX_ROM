.class public Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;
.super Ljava/lang/Object;
.source "PackageManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageManagerAdapter"

.field private static mContext:Landroid/content/Context;

.field private static mIPackageManager:Landroid/content/pm/IPackageManager;

.field private static mInstance:Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;


# instance fields
.field private final mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    .line 110
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 97
    const-class v1, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;

    if-nez v0, :cond_1d

    .line 98
    sput-object p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;

    invoke-direct {v0}, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;-><init>()V

    sput-object v0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;

    .line 100
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 104
    :cond_1d
    sget-object v0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    monitor-exit v1

    return-object v0

    .line 97
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 89
    if-nez p0, :cond_4

    .line 93
    :cond_3
    :goto_3
    return-object v1

    .line 89
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p0

    goto :goto_3

    .line 90
    :catch_10
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PackageManagerAdapter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public getProcessCpuUsage(I)J
    .registers 11
    .param p1, "pid"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 113
    iget-object v3, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 115
    iget-object v3, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v0

    .line 116
    .local v0, "count":I
    const/4 v2, 0x0

    .line 117
    .local v2, "stat":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_1b

    .line 118
    iget-object v3, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v2

    .line 119
    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v3, p1, :cond_1e

    .line 124
    :cond_1b
    if-nez v2, :cond_21

    .line 138
    :goto_1d
    return-wide v6

    .line 117
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 128
    :cond_21
    iget-object v3, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v3

    iget-object v8, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v8

    add-int/2addr v3, v8

    int-to-long v4, v3

    .line 131
    .local v4, "totalCPUTime":J
    cmp-long v3, v4, v6

    if-nez v3, :cond_43

    .line 132
    const-wide/16 v4, 0x1

    .line 138
    :cond_43
    iget v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v6, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x64

    int-to-long v6, v3

    div-long/2addr v6, v4

    goto :goto_1d
.end method

.method public initProcessStats()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 143
    return-void
.end method
