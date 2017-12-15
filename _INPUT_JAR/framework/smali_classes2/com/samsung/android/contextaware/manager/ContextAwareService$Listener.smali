.class public final Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
.super Ljava/lang/Object;
.source "ContextAwareService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/manager/ContextAwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Listener"
.end annotation


# instance fields
.field private mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

.field private final mServices:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/manager/ContextAwareService;Landroid/os/IBinder;)V
    .registers 4
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-object p2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    .line 545
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    .line 546
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;)Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p1, "x1"    # Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILandroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 526
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->callback(ILandroid/os/Bundle;)V

    return-void
.end method

.method private declared-synchronized callback(ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 595
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v3}, Lcom/samsung/android/contextaware/manager/IContextAwareCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/contextaware/manager/IContextAwareCallback;

    move-result-object v0

    .line 597
    .local v0, "callback":Lcom/samsung/android/contextaware/manager/IContextAwareCallback;
    if-eqz v0, :cond_12

    .line 598
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/contextaware/manager/IContextAwareCallback;->caCallback(ILandroid/os/Bundle;)V

    .line 599
    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    const/4 v4, 0x1

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z
    invoke-static {v3, v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->access$502(Lcom/samsung/android/contextaware/manager/ContextAwareService;Z)Z
    :try_end_12
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_12} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_22
    .catchall {:try_start_1 .. :try_end_12} :catchall_2a

    .line 606
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1f

    .line 608
    .end local v0    # "callback":Lcom/samsung/android/contextaware/manager/IContextAwareCallback;
    :goto_15
    monitor-exit p0

    return-void

    .line 601
    :catch_17
    move-exception v1

    .line 602
    .local v1, "de":Landroid/os/DeadObjectException;
    :try_start_18
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_2a

    .line 606
    :try_start_1b
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_15

    .line 595
    .end local v1    # "de":Landroid/os/DeadObjectException;
    :catchall_1f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 603
    :catch_22
    move-exception v2

    .line 604
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_23
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2a

    .line 606
    :try_start_26
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_15

    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_2a
    move-exception v3

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v3
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_1f
.end method


# virtual methods
.method public binderDied()V
    .registers 11

    .prologue
    .line 556
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->access$300(Lcom/samsung/android/contextaware/manager/ContextAwareService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 559
    :try_start_9
    const-string v0, "[binderDied 01] Mutex is locked for binderDied"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 562
    .local v9, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 563
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    move-object v7, v6

    .local v7, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 564
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 566
    .local v8, "service":I
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;
    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->access$400(Lcom/samsung/android/contextaware/manager/ContextAwareService;)Lcom/samsung/android/contextaware/manager/ContextManager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    const/4 v5, 0x3

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/contextaware/manager/ContextManager;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;I)V
    :try_end_48
    .catchall {:try_start_9 .. :try_end_48} :catchall_49

    goto :goto_19

    .line 581
    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v7    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v8    # "service":I
    .end local v9    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_49
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->access$300(Lcom/samsung/android/contextaware/manager/ContextAwareService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 577
    .restart local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v7    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v9    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_54
    :try_start_54
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->removeListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V

    .line 578
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 579
    const-string v0, "[binderDied 02] Mutex is unlocked for binderDied"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_54 .. :try_end_66} :catchall_49

    .line 581
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    # getter for: Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->access$300(Lcom/samsung/android/contextaware/manager/ContextAwareService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 583
    return-void
.end method

.method public decreaseServiceCount(I)V
    .registers 6
    .param p1, "service"    # I

    .prologue
    .line 644
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 645
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 653
    :goto_19
    return-void

    .line 651
    :cond_1a
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 652
    .local v0, "count":I
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19
.end method

.method public getServices()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 616
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public increaseServiceCount(I)V
    .registers 6
    .param p1, "service"    # I

    .prologue
    .line 626
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 627
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 635
    :goto_19
    return-void

    .line 633
    :cond_1a
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 634
    .local v0, "count":I
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19
.end method

.method public final setContextCollectionResultNotifyCompletion(Z)V
    .registers 3
    .param p1, "completion"    # Z

    .prologue
    .line 672
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    # setter for: Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z
    invoke-static {v0, p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->access$502(Lcom/samsung/android/contextaware/manager/ContextAwareService;Z)Z

    .line 673
    return-void
.end method
