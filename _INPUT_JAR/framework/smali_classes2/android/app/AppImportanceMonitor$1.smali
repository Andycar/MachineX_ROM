.class Landroid/app/AppImportanceMonitor$1;
.super Landroid/app/IProcessObserver$Stub;
.source "AppImportanceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppImportanceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/AppImportanceMonitor;


# direct methods
.method constructor <init>(Landroid/app/AppImportanceMonitor;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Landroid/app/AppImportanceMonitor$1;->this$0:Landroid/app/AppImportanceMonitor;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 51
    return-void
.end method

.method public onProcessDied(II)V
    .registers 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 64
    iget-object v0, p0, Landroid/app/AppImportanceMonitor$1;->this$0:Landroid/app/AppImportanceMonitor;

    iget-object v1, v0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    monitor-enter v1

    .line 65
    :try_start_5
    iget-object v0, p0, Landroid/app/AppImportanceMonitor$1;->this$0:Landroid/app/AppImportanceMonitor;

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/app/AppImportanceMonitor;->updateImportanceLocked(IIIZ)V

    .line 67
    monitor-exit v1

    .line 68
    return-void

    .line 67
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public onProcessStateChanged(III)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I

    .prologue
    .line 55
    iget-object v0, p0, Landroid/app/AppImportanceMonitor$1;->this$0:Landroid/app/AppImportanceMonitor;

    iget-object v1, v0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    monitor-enter v1

    .line 56
    :try_start_5
    iget-object v0, p0, Landroid/app/AppImportanceMonitor$1;->this$0:Landroid/app/AppImportanceMonitor;

    invoke-static {p3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/app/AppImportanceMonitor;->updateImportanceLocked(IIIZ)V

    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 59
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0
.end method
