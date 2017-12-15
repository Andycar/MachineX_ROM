.class public final Landroid/hardware/scontext/SContextService$Listener;
.super Ljava/lang/Object;
.source "SContextService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Listener"
.end annotation


# instance fields
.field private final mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/scontext/SContextAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/hardware/scontext/SContextService;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextService;Landroid/os/IBinder;)V
    .registers 4
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 632
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    iput-object p2, p0, Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;

    .line 634
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;

    .line 635
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 636
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService$Listener;

    .prologue
    .line 618
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService$Listener;

    .prologue
    .line 618
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService$Listener;

    .prologue
    .line 618
    iget-object v0, p0, Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private handleDiedBinder(I)V
    .registers 4
    .param p1, "service"    # I

    .prologue
    .line 718
    # getter for: Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/scontext/SContextService;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/provider/Provider;

    invoke-virtual {v0}, Landroid/hardware/scontext/provider/Provider;->handleDiedBinder()V

    .line 719
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 10

    .prologue
    const/16 v8, 0x1b

    .line 646
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 648
    :try_start_b
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_145

    .line 649
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 651
    .local v3, "service":I
    const-string v5, "SContextService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "binderDied() : Listener = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", Service = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", used = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f6

    .line 657
    const/4 v4, 0x2

    if-eq v3, v4, :cond_87

    const/16 v4, 0x18

    if-ne v3, v4, :cond_c3

    .line 659
    :cond_87
    # getter for: Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/scontext/SContextService;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 660
    # getter for: Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/scontext/SContextService;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/scontext/provider/Provider;

    invoke-virtual {v4}, Landroid/hardware/scontext/provider/Provider;->onBinderDied()V

    .line 661
    invoke-direct {p0, v3}, Landroid/hardware/scontext/SContextService$Listener;->handleDiedBinder(I)V

    .line 673
    :cond_a9
    :goto_a9
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b6
    .catchall {:try_start_b .. :try_end_b6} :catchall_b8

    goto/16 :goto_11

    .line 692
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "service":I
    :catchall_b8
    move-exception v4

    iget-object v5, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v5}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 664
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v3    # "service":I
    :cond_c3
    if-ne v3, v8, :cond_f0

    .line 665
    :try_start_c5
    # getter for: Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/scontext/SContextService;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f0

    .line 666
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextAttribute;

    .line 667
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    # getter for: Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/scontext/SContextService;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;

    invoke-virtual {v4, p0, v0}, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->removeAction(Landroid/hardware/scontext/SContextService$Listener;Landroid/hardware/scontext/SContextAttribute;)V

    .line 671
    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_f0
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # invokes: Landroid/hardware/scontext/SContextService;->removeSContextService(I)V
    invoke-static {v4, v3}, Landroid/hardware/scontext/SContextService;->access$600(Landroid/hardware/scontext/SContextService;I)V

    goto :goto_a9

    .line 675
    :cond_f6
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 676
    .local v2, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    if-ne v3, v8, :cond_133

    .line 677
    # getter for: Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/scontext/SContextService;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_133

    .line 678
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextAttribute;

    .line 679
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    # getter for: Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/scontext/SContextService;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;

    invoke-virtual {v4, p0, v0}, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->removeAction(Landroid/hardware/scontext/SContextService$Listener;Landroid/hardware/scontext/SContextAttribute;)V

    .line 683
    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_133
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 684
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 688
    .end local v2    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    .end local v3    # "service":I
    :cond_145
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v4, p0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 689
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$700(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 690
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # invokes: Landroid/hardware/scontext/SContextService;->showListenerList()V
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$800(Landroid/hardware/scontext/SContextService;)V
    :try_end_159
    .catchall {:try_start_c5 .. :try_end_159} :catchall_b8

    .line 692
    iget-object v4, p0, Landroid/hardware/scontext/SContextService$Listener;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$300(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 694
    return-void
.end method

.method public callback(Landroid/hardware/scontext/SContextEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    .line 705
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/hardware/scontext/ISContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextCallback;

    move-result-object v0

    .line 706
    .local v0, "cb":Landroid/hardware/scontext/ISContextCallback;
    if-eqz v0, :cond_b

    .line 707
    invoke-interface {v0, p1}, Landroid/hardware/scontext/ISContextCallback;->scontextCallback(Landroid/hardware/scontext/SContextEvent;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 712
    .end local v0    # "cb":Landroid/hardware/scontext/ISContextCallback;
    :cond_b
    :goto_b
    return-void

    .line 709
    :catch_c
    move-exception v1

    .line 710
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SContextService"

    const-string v3, "Listener.callback(): Exception error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method
