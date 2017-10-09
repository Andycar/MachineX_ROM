.class public final Lcom/android/server/FgThread;
.super Lcom/android/server/ServiceThread;
.source "FgThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/FgThread;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    .line 34
    const-string v0, "android.fg"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 35
    return-void
.end method

.method private static ensureThreadLocked()V
    .registers 2

    .prologue
    .line 38
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    if-nez v0, :cond_1d

    .line 39
    new-instance v0, Lcom/android/server/FgThread;

    invoke-direct {v0}, Lcom/android/server/FgThread;-><init>()V

    sput-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    .line 40
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    invoke-virtual {v0}, Lcom/android/server/FgThread;->start()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;

    .line 43
    :cond_1d
    return-void
.end method

.method public static get()Lcom/android/server/FgThread;
    .registers 2

    .prologue
    .line 46
    const-class v1, Lcom/android/server/UiThread;

    monitor-enter v1

    .line 47
    :try_start_3
    invoke-static {}, Lcom/android/server/FgThread;->ensureThreadLocked()V

    .line 48
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 53
    const-class v1, Lcom/android/server/UiThread;

    monitor-enter v1

    .line 54
    :try_start_3
    invoke-static {}, Lcom/android/server/FgThread;->ensureThreadLocked()V

    .line 55
    sget-object v0, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
