.class Ljava/lang/Daemons$HeapTrimmerDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeapTrimmerDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/Daemons$HeapTrimmerDaemon;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 304
    new-instance v0, Ljava/lang/Daemons$HeapTrimmerDaemon;

    invoke-direct {v0}, Ljava/lang/Daemons$HeapTrimmerDaemon;-><init>()V

    sput-object v0, Ljava/lang/Daemons$HeapTrimmerDaemon;->INSTANCE:Ljava/lang/Daemons$HeapTrimmerDaemon;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/Daemons$1;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/Daemons$HeapTrimmerDaemon;
    .registers 1

    .prologue
    .line 303
    sget-object v0, Ljava/lang/Daemons$HeapTrimmerDaemon;->INSTANCE:Ljava/lang/Daemons$HeapTrimmerDaemon;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 307
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Daemons$HeapTrimmerDaemon;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 309
    :try_start_6
    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_7} :catch_13

    .line 310
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 311
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_15

    .line 312
    :try_start_b
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->trimHeap()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_12} :catch_13

    goto :goto_0

    .line 313
    :catch_13
    move-exception v0

    goto :goto_0

    .line 311
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw v0
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_18} :catch_13

    .line 316
    :cond_18
    return-void
.end method
