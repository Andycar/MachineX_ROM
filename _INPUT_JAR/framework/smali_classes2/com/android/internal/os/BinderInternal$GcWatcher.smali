.class final Lcom/android/internal/os/BinderInternal$GcWatcher;
.super Ljava/lang/Object;
.source "BinderInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GcWatcher"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->handleGc()V

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/internal/os/BinderInternal;->sLastGcTime:J

    .line 43
    sget-object v2, Lcom/android/internal/os/BinderInternal;->sGcWatchers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 44
    :try_start_c
    sget-object v1, Lcom/android/internal/os/BinderInternal;->sGcWatchers:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/internal/os/BinderInternal;->sTmpWatchers:[Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Runnable;

    sput-object v1, Lcom/android/internal/os/BinderInternal;->sTmpWatchers:[Ljava/lang/Runnable;

    .line 45
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_2f

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    sget-object v1, Lcom/android/internal/os/BinderInternal;->sTmpWatchers:[Ljava/lang/Runnable;

    array-length v1, v1

    if-ge v0, v1, :cond_32

    .line 47
    sget-object v1, Lcom/android/internal/os/BinderInternal;->sTmpWatchers:[Ljava/lang/Runnable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2c

    .line 48
    sget-object v1, Lcom/android/internal/os/BinderInternal;->sTmpWatchers:[Ljava/lang/Runnable;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 46
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 45
    .end local v0    # "i":I
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1

    .line 51
    .restart local v0    # "i":I
    :cond_32
    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/android/internal/os/BinderInternal$GcWatcher;

    invoke-direct {v2}, Lcom/android/internal/os/BinderInternal$GcWatcher;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/internal/os/BinderInternal;->sGcWatcher:Ljava/lang/ref/WeakReference;

    .line 52
    return-void
.end method
