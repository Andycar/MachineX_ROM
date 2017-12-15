.class public Landroid/os/SystemService;
.super Ljava/lang/Object;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemService$State;
    }
.end annotation


# static fields
.field private static sPropertyLock:Ljava/lang/Object;

.field private static sStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/SystemService$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Landroid/os/SystemService;->sStates:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Landroid/os/SystemService$1;

    invoke-direct {v0}, Landroid/os/SystemService$1;-><init>()V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Landroid/os/SystemService;->sStates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static getState(Ljava/lang/String;)Landroid/os/SystemService$State;
    .registers 5
    .param p0, "service"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init.svc."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "rawState":Ljava/lang/String;
    sget-object v2, Landroid/os/SystemService;->sStates:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemService$State;

    .line 81
    .local v1, "state":Landroid/os/SystemService$State;
    if-eqz v1, :cond_22

    .line 84
    .end local v1    # "state":Landroid/os/SystemService$State;
    :goto_21
    return-object v1

    .restart local v1    # "state":Landroid/os/SystemService$State;
    :cond_22
    sget-object v1, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    goto :goto_21
.end method

.method public static isRunning(Ljava/lang/String;)Z
    .registers 3
    .param p0, "service"    # Ljava/lang/String;

    .prologue
    .line 99
    sget-object v0, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    invoke-static {p0}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStopped(Ljava/lang/String;)Z
    .registers 3
    .param p0, "service"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-object v0, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    invoke-static {p0}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static restart(Ljava/lang/String;)V
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "ctl.restart"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static start(Ljava/lang/String;)V
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, "ctl.start"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static stop(Ljava/lang/String;)V
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "ctl.stop"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static varargs waitForAnyStopped([Ljava/lang/String;)V
    .registers 8
    .param p0, "services"    # [Ljava/lang/String;

    .prologue
    .line 133
    :goto_0
    sget-object v5, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 134
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_4
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v2, :cond_1b

    aget-object v3, v0, v1

    .line 135
    .local v3, "service":Ljava/lang/String;
    sget-object v4, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    invoke-static {v3}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 136
    monitor-exit v5
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_22

    return-void

    .line 134
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 141
    .end local v3    # "service":Ljava/lang/String;
    :cond_1b
    :try_start_1b
    sget-object v4, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_20} :catch_25
    .catchall {:try_start_1b .. :try_end_20} :catchall_22

    .line 144
    :goto_20
    :try_start_20
    monitor-exit v5

    goto :goto_0

    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_22
    move-exception v4

    monitor-exit v5
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_22

    throw v4

    .line 142
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    :catch_25
    move-exception v4

    goto :goto_20
.end method

.method public static waitForState(Ljava/lang/String;Landroid/os/SystemService$State;J)V
    .registers 12
    .param p0, "service"    # Ljava/lang/String;
    .param p1, "state"    # Landroid/os/SystemService$State;
    .param p2, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v2, v4, p2

    .line 109
    .local v2, "endMillis":J
    :goto_6
    sget-object v4, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 110
    :try_start_9
    invoke-static {p0}, Landroid/os/SystemService;->getState(Ljava/lang/String;)Landroid/os/SystemService$State;

    move-result-object v0

    .line 111
    .local v0, "currentState":Landroid/os/SystemService$State;
    invoke-virtual {p1, v0}, Landroid/os/SystemService$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 112
    monitor-exit v4

    return-void

    .line 115
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-ltz v1, :cond_58

    .line 116
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currently "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; waited "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    .end local v0    # "currentState":Landroid/os/SystemService$State;
    :catchall_55
    move-exception v1

    monitor-exit v4
    :try_end_57
    .catchall {:try_start_9 .. :try_end_57} :catchall_55

    throw v1

    .line 121
    .restart local v0    # "currentState":Landroid/os/SystemService$State;
    :cond_58
    :try_start_58
    sget-object v1, Landroid/os/SystemService;->sPropertyLock:Ljava/lang/Object;

    invoke-virtual {v1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5d} :catch_5f
    .catchall {:try_start_58 .. :try_end_5d} :catchall_55

    .line 124
    :goto_5d
    :try_start_5d
    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_55

    goto :goto_6

    .line 122
    :catch_5f
    move-exception v1

    goto :goto_5d
.end method
