.class public Lcom/samsung/android/contextaware/manager/ListenerListManager;
.super Ljava/lang/Object;
.source "ListenerListManager.java"


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/manager/ListenerListManager;


# instance fields
.field private mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/creator/ContextProviderCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;
    .registers 2

    .prologue
    .line 49
    sget-object v0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->instance:Lcom/samsung/android/contextaware/manager/ListenerListManager;

    if-nez v0, :cond_13

    .line 50
    const-class v1, Lcom/samsung/android/contextaware/manager/ListenerListManager;

    monitor-enter v1

    .line 51
    :try_start_7
    sget-object v0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->instance:Lcom/samsung/android/contextaware/manager/ListenerListManager;

    if-nez v0, :cond_12

    .line 52
    new-instance v0, Lcom/samsung/android/contextaware/manager/ListenerListManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ListenerListManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->instance:Lcom/samsung/android/contextaware/manager/ListenerListManager;

    .line 54
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 56
    :cond_13
    sget-object v0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->instance:Lcom/samsung/android/contextaware/manager/ListenerListManager;

    return-object v0

    .line 54
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private getUsedSubCollectionCount(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "aggregator"    # Ljava/lang/String;
    .param p2, "service"    # Ljava/lang/String;

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, "count":I
    iget-object v6, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/creator/ContextProviderCreator;>;"
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_59

    .line 188
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;

    .line 189
    .local v1, "creator":Lcom/samsung/android/contextaware/creator/ContextProviderCreator;
    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    instance-of v6, v1, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;

    if-eqz v6, :cond_7

    .line 191
    check-cast v1, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;

    .end local v1    # "creator":Lcom/samsung/android/contextaware/creator/ContextProviderCreator;
    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getSubCollectionList(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    .line 193
    .local v4, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 197
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_31
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 198
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 199
    .local v5, "subCollector":Ljava/lang/String;
    if-eqz v5, :cond_31

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_31

    .line 202
    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->isAggregator(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 203
    invoke-direct {p0, v5, p2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    add-int/2addr v0, v6

    .line 206
    :cond_50
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 213
    .end local v3    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/String;>;"
    .end local v5    # "subCollector":Ljava/lang/String;
    :cond_59
    return v0
.end method

.method private isAggregator(Ljava/lang/String;)Z
    .registers 5
    .param p1, "collector"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/creator/ContextProviderCreator;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 225
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;

    .line 226
    .local v0, "creator":Lcom/samsung/android/contextaware/creator/ContextProviderCreator;
    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    instance-of v2, v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;

    if-eqz v2, :cond_6

    .line 228
    const/4 v2, 0x1

    .line 232
    .end local v0    # "creator":Lcom/samsung/android/contextaware/creator/ContextProviderCreator;
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method


# virtual methods
.method protected final addListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .prologue
    .line 75
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 76
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_f
    return-void
.end method

.method protected final getListener(Landroid/os/IBinder;)Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;>;"
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 103
    .local v2, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 104
    move-object v1, v2

    .line 109
    .end local v2    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :cond_1e
    return-object v1
.end method

.method protected final getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final getUsedServiceCount(Ljava/lang/String;)I
    .registers 8
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 134
    .local v0, "count":I
    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;>;"
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 136
    .local v3, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v2

    .line 137
    .local v2, "key":I
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 138
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_7

    .line 142
    .end local v2    # "key":I
    .end local v3    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :cond_3d
    return v0
.end method

.method public final getUsedSubCollectionCount(Ljava/lang/String;)I
    .registers 11
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 155
    .local v1, "count":I
    iget-object v8, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;>;"
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_46

    .line 156
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 157
    .local v7, "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    invoke-virtual {v7}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 158
    .local v6, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 159
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    move-object v4, v3

    .local v4, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 160
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 162
    .local v5, "key":I
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_20

    .line 167
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    add-int/2addr v1, v8

    .line 168
    goto :goto_20

    .line 171
    .end local v0    # "code":Ljava/lang/String;
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v4    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v5    # "key":I
    .end local v6    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7    # "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :cond_46
    return v1
.end method

.method public final getUsedTotalCount(Ljava/lang/String;)I
    .registers 4
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedServiceCount(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final removeListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .prologue
    .line 87
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 88
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    :cond_f
    return-void
.end method

.method protected final setCreator(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/creator/ContextProviderCreator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "creator":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/creator/ContextProviderCreator;>;"
    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/ListenerListManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 244
    return-void
.end method
