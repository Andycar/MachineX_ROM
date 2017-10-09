.class public Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngineWrapper;
.super Ljava/lang/Object;
.source "SensoryWakeUpEngineWrapper.java"


# static fields
.field private static uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;
    .registers 3

    .prologue
    .line 21
    const-class v1, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngineWrapper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    if-nez v0, :cond_1c

    .line 25
    const-string v0, "SensoryWakeUpEngineWrapper"

    const-string v2, "getInstance() : make new SensoryWakeUpEngine"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;->init()V

    .line 31
    new-instance v0, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    invoke-direct {v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;-><init>()V

    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    .line 45
    :goto_18
    sget-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_24

    monitor-exit v1

    return-object v0

    .line 39
    :cond_1c
    :try_start_1c
    const-string v0, "SensoryWakeUpEngineWrapper"

    const-string v2, "getInstance() : get existed SensoryWakeUpEngine"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_24

    goto :goto_18

    .line 21
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method
