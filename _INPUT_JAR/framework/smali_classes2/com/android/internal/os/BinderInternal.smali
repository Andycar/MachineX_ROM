.class public Lcom/android/internal/os/BinderInternal;
.super Ljava/lang/Object;
.source "BinderInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderInternal$GcWatcher;
    }
.end annotation


# static fields
.field static sGcWatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/os/BinderInternal$GcWatcher;",
            ">;"
        }
    .end annotation
.end field

.field static sGcWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static sLastGcTime:J

.field static sTmpWatchers:[Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/android/internal/os/BinderInternal$GcWatcher;

    invoke-direct {v1}, Lcom/android/internal/os/BinderInternal$GcWatcher;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/os/BinderInternal;->sGcWatcher:Ljava/lang/ref/WeakReference;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/os/BinderInternal;->sGcWatchers:Ljava/util/ArrayList;

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    sput-object v0, Lcom/android/internal/os/BinderInternal;->sTmpWatchers:[Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static addGcWatcher(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "watcher"    # Ljava/lang/Runnable;

    .prologue
    .line 56
    sget-object v1, Lcom/android/internal/os/BinderInternal;->sGcWatchers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 57
    :try_start_3
    sget-object v0, Lcom/android/internal/os/BinderInternal;->sGcWatchers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    monitor-exit v1

    .line 59
    return-void

    .line 58
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static final native disableBackgroundScheduling(Z)V
.end method

.method static forceBinderGc()V
    .registers 1

    .prologue
    .line 103
    const-string v0, "Binder"

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static forceGc(Ljava/lang/String;)V
    .registers 2
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 98
    const/16 v0, 0xab5

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 99
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 100
    return-void
.end method

.method public static final native getContextObject()Landroid/os/IBinder;
.end method

.method public static getLastGcTime()J
    .registers 2

    .prologue
    .line 78
    sget-wide v0, Lcom/android/internal/os/BinderInternal;->sLastGcTime:J

    return-wide v0
.end method

.method static final native handleGc()V
.end method

.method public static final native joinThreadPool()V
.end method
