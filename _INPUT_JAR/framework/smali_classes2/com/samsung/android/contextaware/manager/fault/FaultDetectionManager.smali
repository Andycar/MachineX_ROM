.class public Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;
.super Ljava/lang/Object;
.source "FaultDetectionManager.java"


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;


# instance fields
.field private mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

.field private mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;
    .registers 2

    .prologue
    .line 44
    sget-object v0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->instance:Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    if-nez v0, :cond_13

    .line 45
    const-class v1, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    monitor-enter v1

    .line 46
    :try_start_7
    sget-object v0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->instance:Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    if-nez v0, :cond_12

    .line 47
    new-instance v0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->instance:Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    .line 49
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 51
    :cond_13
    sget-object v0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->instance:Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    return-object v0

    .line 49
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public final getCmdProcessResultObserver()Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    return-object v0
.end method

.method public final initializeManager(Lcom/samsung/android/contextaware/manager/ContextManager;)V
    .registers 3
    .param p1, "manager"    # Lcom/samsung/android/contextaware/manager/ContextManager;

    .prologue
    .line 61
    new-instance v0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;-><init>(Lcom/samsung/android/contextaware/manager/ContextManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    .line 62
    return-void
.end method

.method public final initializeRestoreManager()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    if-nez v0, :cond_a

    .line 107
    const-string v0, "mRestoreManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 111
    :goto_9
    return-void

    .line 110
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->initializeManager()V

    goto :goto_9
.end method

.method public final isRestoreEnable()Z
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    if-nez v0, :cond_b

    .line 131
    const-string v0, "mRestoreManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->isRestoreEnable()Z

    move-result v0

    goto :goto_a
.end method

.method public final registerCmdProcessResultManager(Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;)V
    .registers 3
    .param p1, "manager"    # Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    if-eqz v0, :cond_a

    .line 80
    const-string v0, "mCmdProcessResultManager is already registered"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 84
    :goto_9
    return-void

    .line 83
    :cond_a
    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    goto :goto_9
.end method

.method public final runRestore(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILcom/samsung/android/contextaware/manager/IContextObserver;)V
    .registers 6
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p3, "service"    # I
    .param p4, "observer"    # Lcom/samsung/android/contextaware/manager/IContextObserver;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    if-nez v0, :cond_a

    .line 150
    const-string v0, "mRestoreManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 154
    :goto_9
    return-void

    .line 153
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->runRestore(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILcom/samsung/android/contextaware/manager/IContextObserver;)V

    goto :goto_9
.end method

.method public final setRestoreEnable()V
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    if-nez v0, :cond_a

    .line 118
    const-string v0, "mRestoreManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 122
    :goto_9
    return-void

    .line 121
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->setRestoreEnable()V

    goto :goto_9
.end method

.method public final terminateManager()V
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    .line 69
    return-void
.end method

.method public final unregisterCmdProcessResultManager()V
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    .line 91
    return-void
.end method

.method public final updateContextAwareServiceFatalError()V
    .registers 1

    .prologue
    .line 161
    return-void
.end method

.method public final updateSensorHubFatalError()V
    .registers 1

    .prologue
    .line 168
    return-void
.end method
