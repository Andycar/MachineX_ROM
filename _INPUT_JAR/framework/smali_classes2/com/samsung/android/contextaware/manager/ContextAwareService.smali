.class public Lcom/samsung/android/contextaware/manager/ContextAwareService;
.super Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;
.source "ContextAwareService.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/IContextObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;,
        Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    }
.end annotation


# static fields
.field public static final BINDER_DIED_OPERATION:I = 0x3

.field public static final NORMAL_OPERATION:I = 0x1

.field private static final NOTIFY_WATING_TIME:I = 0x6

.field public static final RESTORE_OPERATION:I = 0x2


# instance fields
.field private volatile isVersionSetting:Z

.field private mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

.field private mCmdProcessResultNotifyCompletion:Z

.field private mContextCollectionResultNotifyCompletion:Z

.field private mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

.field private mMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

.field private mVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;-><init>()V

    .line 77
    iput-boolean v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 80
    iput-boolean v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    .line 83
    iput v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mVersion:I

    .line 86
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->isVersionSetting:Z

    .line 96
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "context_aware"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "mHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 100
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 101
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_27

    .line 102
    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 118
    :goto_26
    return-void

    .line 107
    :cond_27
    new-instance v2, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;-><init>(Lcom/samsung/android/contextaware/manager/ContextAwareService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    .line 109
    new-instance v2, Lcom/samsung/android/contextaware/manager/ContextManager;

    iget v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mVersion:I

    invoke-direct {v2, p1, v0, v3}, Lcom/samsung/android/contextaware/manager/ContextManager;-><init>(Landroid/content/Context;Landroid/os/Looper;I)V

    iput-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    .line 111
    new-instance v2, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-direct {v2, p1}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    .line 112
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2, v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 114
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextManager;->getCreator()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->setCreator(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 117
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->initializeManager(Lcom/samsung/android/contextaware/manager/ContextManager;)V

    goto :goto_26
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/manager/ContextAwareService;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/manager/ContextAwareService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/manager/ContextAwareService;)Lcom/samsung/android/contextaware/manager/ContextManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/manager/ContextAwareService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/contextaware/manager/ContextAwareService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/manager/ContextAwareService;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    return p1
.end method

.method static synthetic access$602(Lcom/samsung/android/contextaware/manager/ContextAwareService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/manager/ContextAwareService;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    return p1
.end method

.method private displayUsedCountForService(I)V
    .registers 5
    .param p1, "service"    # I

    .prologue
    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "totalCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedServiceCount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subCollectionCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method private doCommendProcess(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .registers 10
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p3, "service"    # I

    .prologue
    const/4 v5, 0x1

    .line 275
    invoke-static {}, Lcom/samsung/android/contextaware/InterruptModeContextList;->getInstance()Lcom/samsung/android/contextaware/InterruptModeContextList;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/contextaware/InterruptModeContextList;->isInterruptModeType(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 277
    const-string v0, "REGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->isUsableService(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 323
    :cond_19
    :goto_19
    return-void

    .line 282
    :cond_1a
    const-string v0, "UNREGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->isUsableService(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 288
    :cond_28
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v0

    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$100(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->registerCmdProcessResultManager(Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;)V

    .line 291
    const-string v0, "REGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 292
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 293
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_59
    invoke-virtual {p2, p3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->increaseServiceCount(I)V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p0, v5}, Lcom/samsung/android/contextaware/manager/ContextManager;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;I)V

    .line 309
    :cond_69
    :goto_69
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->waitForNotifyOperationCheckResult()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 310
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->setRestoreEnable()V

    .line 314
    :cond_7f
    const-string v0, "complete notify the operation result."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->isRestoreEnable()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 317
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->runRestore(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILcom/samsung/android/contextaware/manager/IContextObserver;)V

    goto :goto_19

    .line 298
    :cond_96
    const-string v0, "UNREGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 299
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 300
    invoke-virtual {p2, p3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->decreaseServiceCount(I)V

    .line 301
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_ce

    .line 302
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_ce
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v1, p2

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/contextaware/manager/ContextManager;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;I)V

    goto :goto_69

    .line 319
    :cond_df
    const-string v0, "REGISTER_CMD_RESTORE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 320
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextManager;->notifyInitContext(Ljava/lang/String;)V

    goto/16 :goto_19
.end method

.method private isUsableService(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)Z
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "service"    # I

    .prologue
    .line 808
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private showListenerList()V
    .registers 10

    .prologue
    .line 247
    const-string v7, "===== Context Aware Service List ====="

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 249
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_89

    .line 250
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 251
    .local v4, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 252
    .local v6, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 253
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    move-object v3, v2

    .local v3, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 254
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 255
    .local v5, "service":I
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 256
    .local v0, "count":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Listener : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Service : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_2a

    .line 261
    .end local v0    # "count":I
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .end local v5    # "service":I
    .end local v6    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_89
    return-void
.end method

.method private waitForNotifyOperationCheckResult()Z
    .registers 5

    .prologue
    .line 429
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v2, 0x78

    if-ge v1, v2, :cond_18

    .line 431
    const-wide/16 v2, 0x32

    :try_start_7
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 432
    iget-boolean v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    if-eqz v2, :cond_1a

    iget-boolean v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_10} :catch_14

    if-eqz v2, :cond_1a

    .line 434
    const/4 v2, 0x1

    .line 442
    :goto_13
    return v2

    .line 436
    :catch_14
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 442
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_18
    const/4 v2, 0x0

    goto :goto_13

    .line 429
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final getContextInfo(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I

    .prologue
    const/4 v7, 0x1

    .line 335
    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 338
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getContext 01] Mutex is locked for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 341
    const/4 v1, 0x0

    .line 342
    .local v1, "isListener":Z
    const/4 v2, 0x0

    .line 344
    .local v2, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 345
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    .line 347
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 348
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 349
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    check-cast v2, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 350
    .restart local v2    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$000(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 353
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 354
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_6c
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$000(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;-><init>(Landroid/os/IBinder;Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->registerCmdProcessResultManager(Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;)V

    .line 361
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->addListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V

    .line 363
    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, p0}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    .line 365
    const/4 v1, 0x1

    .line 369
    :cond_93
    if-nez v1, :cond_f7

    .line 370
    sget-object v3, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 377
    :cond_9e
    :goto_9e
    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lcom/samsung/android/contextaware/manager/ContextManager;->unregisterObservers(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    .line 380
    if-eqz v2, :cond_cc

    .line 381
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-ne v3, v7, :cond_10e

    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 383
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->removeListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V

    .line 389
    :cond_cc
    :goto_cc
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->unregisterCmdProcessResultManager()V

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getContext 02] Mutex is unlocked for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_f1
    .catchall {:try_start_6 .. :try_end_f1} :catchall_107

    .line 395
    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 397
    return-void

    .line 372
    :cond_f7
    :try_start_f7
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->waitForNotifyOperationCheckResult()Z

    move-result v3

    if-nez v3, :cond_9e

    .line 373
    sget-object v3, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_106
    .catchall {:try_start_f7 .. :try_end_106} :catchall_107

    goto :goto_9e

    .line 395
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v1    # "isListener":Z
    .end local v2    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :catchall_107
    move-exception v3

    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 384
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v1    # "isListener":Z
    .restart local v2    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :cond_10e
    :try_start_10e
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 385
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_127
    .catchall {:try_start_10e .. :try_end_127} :catchall_107

    goto :goto_cc
.end method

.method public final getVersion()I
    .registers 2

    .prologue
    .line 925
    iget v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mVersion:I

    return v0
.end method

.method public final initializeAutoTest()V
    .registers 2

    .prologue
    .line 836
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->initilizeAutoTest()V

    .line 837
    return-void
.end method

.method public final registerCallback(Landroid/os/IBinder;I)V
    .registers 10
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 137
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[regi 01] Mutex is locked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->initializeRestoreManager()V

    .line 141
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 142
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, "isExistListener":Z
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 146
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 148
    .local v3, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$000(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 151
    const-string v4, "REGISTER_CMD_RESTORE"

    invoke-direct {p0, v4, v3, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->doCommendProcess(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 153
    const/4 v1, 0x1

    .line 157
    .end local v3    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :cond_59
    if-nez v1, :cond_7e

    .line 158
    new-instance v2, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;-><init>(Lcom/samsung/android/contextaware/manager/ContextAwareService;Landroid/os/IBinder;)V

    .line 159
    .local v2, "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    new-instance v4, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$000(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;-><init>(Landroid/os/IBinder;Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;)V

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;
    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$102(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;)Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    .line 161
    const/4 v4, 0x0

    invoke-interface {p1, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 162
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->addListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V

    .line 163
    const-string v4, "REGISTER_CMD_RESTORE"

    invoke-direct {p0, v4, v2, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->doCommendProcess(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 167
    .end local v2    # "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :cond_7e
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->displayUsedCountForService(I)V

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->showListenerList()V

    .line 170
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->unregisterCmdProcessResultManager()V

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[regi 02] Mutex is unlocked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_5 .. :try_end_a9} :catchall_af

    .line 176
    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 178
    return-void

    .line 176
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v1    # "isExistListener":Z
    :catchall_af
    move-exception v4

    iget-object v5, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public final resetCAService(I)V
    .registers 4
    .param p1, "service"    # I

    .prologue
    .line 488
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 491
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[reset 01] Mutex is locked for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset service : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextManager;->reset(Ljava/lang/String;)V

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[reset 02] Mutex is unlocked for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_5 .. :try_end_6d} :catchall_73

    .line 501
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 503
    return-void

    .line 501
    :catchall_73
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final setCALogger(ZZIZ)V
    .registers 5
    .param p1, "isConsole"    # Z
    .param p2, "isFile"    # Z
    .param p3, "level"    # I
    .param p4, "isCaller"    # Z

    .prologue
    .line 826
    invoke-static {p1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->setConsoleLoggingEnable(Z)V

    .line 827
    invoke-static {p2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->setFileLoggingEnable(Z)V

    .line 828
    invoke-static {p3, p4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->setLogOption(IZ)V

    .line 829
    return-void
.end method

.method public final setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z
    .registers 7
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .prologue
    .line 459
    const/4 v0, 0x0

    .line 461
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 464
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setProperty 01] Mutex is locked for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/samsung/android/contextaware/manager/ContextManager;->setProperty(Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setProperty 02] Mutex is unlocked for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_6 .. :try_end_6b} :catchall_71

    .line 473
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 476
    return v0

    .line 473
    :catchall_71
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public final setCmdProcessResultNotifyCompletion(Z)V
    .registers 2
    .param p1, "completion"    # Z

    .prologue
    .line 863
    iput-boolean p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 864
    return-void
.end method

.method public final setScenarioForDebugging(II[B)Z
    .registers 5
    .param p1, "testType"    # I
    .param p2, "delayTime"    # I
    .param p3, "packet"    # [B

    .prologue
    .line 895
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->setScenarioForDebugging(II[B)Z

    move-result v0

    return v0
.end method

.method public final setScenarioForTest(II)Z
    .registers 4
    .param p1, "testType"    # I
    .param p2, "delayTime"    # I

    .prologue
    .line 878
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->setScenarioForTest(II)Z

    move-result v0

    return v0
.end method

.method public final setVersion(I)V
    .registers 4
    .param p1, "version"    # I

    .prologue
    .line 906
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->isVersionSetting:Z

    if-eqz v0, :cond_e

    .line 907
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_VERSION_SETTING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 916
    :goto_d
    return-void

    .line 912
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 913
    iput p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mVersion:I

    .line 914
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/manager/ContextManager;->setVersion(I)V

    .line 915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->isVersionSetting:Z

    goto :goto_d
.end method

.method public final startAutoTest()V
    .registers 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->startAutoTest()V

    .line 845
    return-void
.end method

.method public final stopAutoTest()V
    .registers 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mAutoTest:Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->stopAutoTest()V

    .line 853
    return-void
.end method

.method public final unregisterCallback(Landroid/os/IBinder;I)Z
    .registers 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 194
    const/4 v1, 0x1

    .line 196
    .local v1, "isEmptyListener":Z
    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 199
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[unregi 01] Mutex is locked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->initializeRestoreManager()V

    .line 203
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 204
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    .line 205
    const/4 v2, 0x0

    .line 207
    .local v2, "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 208
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 210
    .local v3, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$000(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 213
    move-object v2, v3

    .line 214
    const-string v4, "UNREGISTER_CMD_RESTORE"

    invoke-direct {p0, v4, v3, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->doCommendProcess(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 219
    .end local v3    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :cond_5a
    if-eqz v2, :cond_66

    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_67

    .line 220
    :cond_66
    const/4 v1, 0x0

    .line 223
    :cond_67
    if-eqz v1, :cond_74

    .line 224
    const/4 v4, 0x0

    invoke-interface {p1, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 225
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->removeListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V

    .line 228
    :cond_74
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->displayUsedCountForService(I)V

    .line 229
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->showListenerList()V

    .line 231
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->unregisterCmdProcessResultManager()V

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[unregi 02] Mutex is unlocked for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_6 .. :try_end_9f} :catchall_a5

    .line 237
    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 240
    return v1

    .line 237
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :catchall_a5
    move-exception v4

    iget-object v5, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 515
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 516
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 517
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 518
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 519
    return-void
.end method
