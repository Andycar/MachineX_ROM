.class Ljava/lang/Daemons$GCDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GCDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/Daemons$GCDaemon;


# instance fields
.field private count:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 325
    new-instance v0, Ljava/lang/Daemons$GCDaemon;

    invoke-direct {v0}, Ljava/lang/Daemons$GCDaemon;-><init>()V

    sput-object v0, Ljava/lang/Daemons$GCDaemon;->INSTANCE:Ljava/lang/Daemons$GCDaemon;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/Daemons$1;)V

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/Daemons$GCDaemon;->count:I

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Daemons$GCDaemon;
    .registers 1

    .prologue
    .line 324
    sget-object v0, Ljava/lang/Daemons$GCDaemon;->INSTANCE:Ljava/lang/Daemons$GCDaemon;

    return-object v0
.end method


# virtual methods
.method public requestGC()V
    .registers 2

    .prologue
    .line 329
    monitor-enter p0

    .line 330
    :try_start_1
    iget v0, p0, Ljava/lang/Daemons$GCDaemon;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/Daemons$GCDaemon;->count:I

    .line 331
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 332
    monitor-exit p0

    .line 333
    return-void

    .line 332
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public run()V
    .registers 2

    .prologue
    .line 336
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Daemons$GCDaemon;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 338
    :try_start_6
    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_7} :catch_12

    .line 340
    :goto_7
    :try_start_7
    iget v0, p0, Ljava/lang/Daemons$GCDaemon;->count:I

    if-nez v0, :cond_14

    .line 341
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_7

    .line 344
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    :try_start_11
    throw v0
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_12} :catch_12

    .line 346
    :catch_12
    move-exception v0

    goto :goto_0

    .line 343
    :cond_14
    :try_start_14
    iget v0, p0, Ljava/lang/Daemons$GCDaemon;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/lang/Daemons$GCDaemon;->count:I

    .line 344
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_f

    .line 345
    :try_start_1b
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->concurrentGC()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_22} :catch_12

    goto :goto_0

    .line 349
    :cond_23
    return-void
.end method
