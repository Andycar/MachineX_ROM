.class Lcom/samsung/android/contextaware/manager/fault/RegisterCmdOperationRestore;
.super Lcom/samsung/android/contextaware/manager/fault/RestoreTransaction;
.source "RegisterCmdOperationRestore.java"


# direct methods
.method protected constructor <init>(Lcom/samsung/android/contextaware/manager/ContextManager;)V
    .registers 2
    .param p1, "manager"    # Lcom/samsung/android/contextaware/manager/ContextManager;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/manager/fault/RestoreTransaction;-><init>(Lcom/samsung/android/contextaware/manager/ContextManager;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected final getRestoreType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    const-string v0, "REGISTER_CMD_RESTORE"

    return-object v0
.end method

.method protected final runRestore(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILcom/samsung/android/contextaware/manager/IContextObserver;)V
    .registers 10
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "service"    # I
    .param p3, "observer"    # Lcom/samsung/android/contextaware/manager/IContextObserver;

    .prologue
    .line 53
    if-nez p1, :cond_8

    .line 54
    const-string v0, "listener is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 77
    :cond_7
    :goto_7
    return-void

    .line 58
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_15

    .line 59
    const-string/jumbo v0, "token is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_7

    .line 63
    :cond_15
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_31
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/fault/RegisterCmdOperationRestore;->getContextManager()Lcom/samsung/android/contextaware/manager/ContextManager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/contextaware/manager/ContextManager;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;I)V

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 74
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 75
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->removeListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V

    goto :goto_7
.end method
