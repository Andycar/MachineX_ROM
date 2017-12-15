.class final Landroid/app/Instrumentation$SyncRunnable;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncRunnable"
.end annotation


# instance fields
.field private mComplete:Z

.field private final mTarget:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/Runnable;

    .prologue
    .line 1886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1887
    iput-object p1, p0, Landroid/app/Instrumentation$SyncRunnable;->mTarget:Ljava/lang/Runnable;

    .line 1888
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1891
    iget-object v0, p0, Landroid/app/Instrumentation$SyncRunnable;->mTarget:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1892
    monitor-enter p0

    .line 1893
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Landroid/app/Instrumentation$SyncRunnable;->mComplete:Z

    .line 1894
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1895
    monitor-exit p0

    .line 1896
    return-void

    .line 1895
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public waitForComplete()V
    .registers 2

    .prologue
    .line 1899
    monitor-enter p0

    .line 1900
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Landroid/app/Instrumentation$SyncRunnable;->mComplete:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_b

    .line 1902
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    goto :goto_1

    .line 1903
    :catch_9
    move-exception v0

    goto :goto_1

    .line 1906
    :cond_b
    :try_start_b
    monitor-exit p0

    .line 1907
    return-void

    .line 1906
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_d

    throw v0
.end method
