.class public final Ldalvik/system/ZygoteHooks;
.super Ljava/lang/Object;
.source "ZygoteHooks.java"


# instance fields
.field private token:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativePostForkChild(JILjava/lang/String;)V
.end method

.method private static native nativePreFork()J
.end method

.method private static waitUntilAllThreadsStopped()V
    .registers 4

    .prologue
    .line 85
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/task"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "tasks":Ljava/io/File;
    :goto_7
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_17

    .line 92
    const-wide/16 v2, 0x1

    :try_start_11
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_7

    .line 93
    :catch_15
    move-exception v1

    goto :goto_7

    .line 96
    :cond_17
    return-void
.end method


# virtual methods
.method public postForkChild(ILjava/lang/String;)V
    .registers 5
    .param p1, "debugFlags"    # I
    .param p2, "instructionSet"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-wide v0, p0, Ldalvik/system/ZygoteHooks;->token:J

    invoke-static {v0, v1, p1, p2}, Ldalvik/system/ZygoteHooks;->nativePostForkChild(JILjava/lang/String;)V

    .line 50
    return-void
.end method

.method public postForkCommon()V
    .registers 1

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/Daemons;->start()V

    .line 59
    return-void
.end method

.method public postForkCommonInThread()V
    .registers 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldalvik/system/ZygoteHooks$1;

    invoke-direct {v1, p0}, Ldalvik/system/ZygoteHooks$1;-><init>(Ldalvik/system/ZygoteHooks;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 73
    .local v0, "DaemonsStartThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    return-void
.end method

.method public preFork()V
    .registers 3

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/Daemons;->stop()V

    .line 39
    invoke-static {}, Ldalvik/system/ZygoteHooks;->waitUntilAllThreadsStopped()V

    .line 40
    invoke-static {}, Ldalvik/system/ZygoteHooks;->nativePreFork()J

    move-result-wide v0

    iput-wide v0, p0, Ldalvik/system/ZygoteHooks;->token:J

    .line 41
    return-void
.end method
