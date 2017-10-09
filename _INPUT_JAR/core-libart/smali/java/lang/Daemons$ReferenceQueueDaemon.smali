.class Ljava/lang/Daemons$ReferenceQueueDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReferenceQueueDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 125
    new-instance v0, Ljava/lang/Daemons$ReferenceQueueDaemon;

    invoke-direct {v0}, Ljava/lang/Daemons$ReferenceQueueDaemon;-><init>()V

    sput-object v0, Ljava/lang/Daemons$ReferenceQueueDaemon;->INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/Daemons$1;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Daemons$ReferenceQueueDaemon;
    .registers 1

    .prologue
    .line 124
    sget-object v0, Ljava/lang/Daemons$ReferenceQueueDaemon;->INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;

    return-object v0
.end method

.method private enqueue(Ljava/lang/ref/Reference;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const/4 v2, 0x0

    .line 146
    :goto_1
    if-eqz p1, :cond_18

    .line 149
    iget-object v1, p1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    if-ne p1, v1, :cond_f

    .line 150
    move-object v0, p1

    .line 151
    .local v0, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    iput-object v2, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 152
    const/4 p1, 0x0

    .line 158
    :goto_b
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->enqueueInternal()Z

    goto :goto_1

    .line 154
    .end local v0    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_f
    iget-object v0, p1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 155
    .restart local v0    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    iget-object v1, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    iput-object v1, p1, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    .line 156
    iput-object v2, v0, Ljava/lang/ref/Reference;->pendingNext:Ljava/lang/ref/Reference;

    goto :goto_b

    .line 160
    .end local v0    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_18
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 128
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Daemons$ReferenceQueueDaemon;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 131
    :try_start_6
    const-class v3, Ljava/lang/ref/ReferenceQueue;

    monitor-enter v3
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_16

    .line 132
    :goto_9
    :try_start_9
    sget-object v2, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    if-nez v2, :cond_18

    .line 133
    const-class v2, Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_9

    .line 137
    :catchall_13
    move-exception v2

    monitor-exit v3
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    :try_start_15
    throw v2
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_16} :catch_16

    .line 138
    :catch_16
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 135
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_18
    :try_start_18
    sget-object v1, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    .line 136
    .local v1, "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const/4 v2, 0x0

    sput-object v2, Ljava/lang/ref/ReferenceQueue;->unenqueued:Ljava/lang/ref/Reference;

    .line 137
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_13

    .line 141
    invoke-direct {p0, v1}, Ljava/lang/Daemons$ReferenceQueueDaemon;->enqueue(Ljava/lang/ref/Reference;)V

    goto :goto_0

    .line 143
    .end local v1    # "list":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_22
    return-void
.end method
