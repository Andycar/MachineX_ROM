.class public final Lcom/android/server/UiThread;
.super Lcom/android/server/ServiceThread;
.source "UiThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/UiThread;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    .line 31
    const-string v0, "android.ui"

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 32
    return-void
.end method

.method private static ensureThreadLocked()V
    .registers 2

    .prologue
    .line 35
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    if-nez v0, :cond_1d

    .line 36
    new-instance v0, Lcom/android/server/UiThread;

    invoke-direct {v0}, Lcom/android/server/UiThread;-><init>()V

    sput-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    .line 37
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    invoke-virtual {v0}, Lcom/android/server/UiThread;->start()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    invoke-virtual {v1}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/UiThread;->sHandler:Landroid/os/Handler;

    .line 40
    :cond_1d
    return-void
.end method

.method public static get()Lcom/android/server/UiThread;
    .registers 2

    .prologue
    .line 43
    const-class v1, Lcom/android/server/UiThread;

    monitor-enter v1

    .line 44
    :try_start_3
    invoke-static {}, Lcom/android/server/UiThread;->ensureThreadLocked()V

    .line 45
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    monitor-exit v1

    return-object v0

    .line 46
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
    .line 50
    const-class v1, Lcom/android/server/UiThread;

    monitor-enter v1

    .line 51
    :try_start_3
    invoke-static {}, Lcom/android/server/UiThread;->ensureThreadLocked()V

    .line 52
    sget-object v0, Lcom/android/server/UiThread;->sHandler:Landroid/os/Handler;

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
