.class public Landroid/hardware/scontext/SContextService;
.super Landroid/hardware/scontext/ISContextService$Stub;
.source "SContextService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextService$ServiceHandler;,
        Landroid/hardware/scontext/SContextService$Listener;
    }
.end annotation


# static fields
.field private static final FEATURE_SCONTEXT_LITE:Ljava/lang/String; = "com.sec.feature.scontext_lite"

.field private static final FEATURE_SENSORHUB:Ljava/lang/String; = "com.sec.feature.sensorhub"

.field private static final TAG:Ljava/lang/String; = "SContextService"

.field private static mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/scontext/provider/Provider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DEBUG_LEVEL_LOW:I

.field mAvailableServiceMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mEventListener:Landroid/hardware/scontext/provider/EventListener;

.field private mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

.field private final mLatestInfo:Landroid/os/Bundle;

.field private mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/scontext/SContextService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/scontext/SContextService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/scontext/SContextService$Listener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    .line 83
    invoke-direct {p0}, Landroid/hardware/scontext/ISContextService$Stub;-><init>()V

    .line 57
    const/16 v9, 0x4f4c

    iput v9, p0, Landroid/hardware/scontext/SContextService;->DEBUG_LEVEL_LOW:I

    .line 61
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    .line 63
    new-instance v9, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 67
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 70
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mLatestInfo:Landroid/os/Bundle;

    .line 796
    new-instance v9, Landroid/hardware/scontext/SContextService$1;

    invoke-direct {v9, p0}, Landroid/hardware/scontext/SContextService$1;-><init>(Landroid/hardware/scontext/SContextService;)V

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    .line 84
    iput-object p1, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    .line 85
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 86
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-string v9, "com.sec.feature.scontext_lite"

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4d

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d3

    .line 88
    :cond_4d
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v9, "scontext"

    invoke-direct {v0, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 90
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 91
    .local v2, "looper":Landroid/os/Looper;
    if-nez v2, :cond_66

    .line 92
    const-string v9, "SContextService"

    const-string v10, "looper is null."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    .end local v2    # "looper":Landroid/os/Looper;
    :goto_65
    return-void

    .line 95
    .restart local v0    # "handlerThread":Landroid/os/HandlerThread;
    .restart local v2    # "looper":Landroid/os/Looper;
    :cond_66
    new-instance v9, Landroid/hardware/scontext/SContextService$ServiceHandler;

    invoke-direct {v9, p0, v2}, Landroid/hardware/scontext/SContextService$ServiceHandler;-><init>(Landroid/hardware/scontext/SContextService;Landroid/os/Looper;)V

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    .line 96
    new-instance v9, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v9, v10}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 97
    const/4 v8, 0x0

    .line 98
    .local v8, "version":I
    const/4 v7, 0x0

    .line 99
    .local v7, "scontextVersion":Landroid/hardware/scontext/SContextVersion;
    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c6

    .line 100
    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v8

    .line 101
    new-instance v7, Landroid/hardware/scontext/SContextVersion;

    .end local v7    # "scontextVersion":Landroid/hardware/scontext/SContextVersion;
    invoke-direct {v7, v8, v10}, Landroid/hardware/scontext/SContextVersion;-><init>(IZ)V

    .line 106
    .restart local v7    # "scontextVersion":Landroid/hardware/scontext/SContextVersion;
    :goto_89
    invoke-virtual {v7}, Landroid/hardware/scontext/SContextVersion;->getAvailableServiceMap()Ljava/util/HashMap;

    move-result-object v9

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 107
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mAvailableServiceMap:Ljava/util/HashMap;

    if-eqz v9, :cond_d3

    .line 108
    new-instance v6, Landroid/hardware/scontext/SContextProvider;

    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mAvailableServiceMap:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/hardware/scontext/SContextService;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v6, p1, v9, v10, v8}, Landroid/hardware/scontext/SContextProvider;-><init>(Landroid/content/Context;Ljava/util/HashMap;Landroid/hardware/scontext/provider/EventListener;I)V

    .line 110
    .local v6, "scontextProvider":Landroid/hardware/scontext/SContextProvider;
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 111
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_a6
    :goto_a6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d3

    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 113
    .local v3, "next":I
    invoke-virtual {v6, v3}, Landroid/hardware/scontext/SContextProvider;->getProvider(I)Landroid/hardware/scontext/provider/Provider;

    move-result-object v5

    .line 114
    .local v5, "provider":Landroid/hardware/scontext/provider/Provider;
    if-eqz v5, :cond_a6

    .line 115
    sget-object v9, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a6

    .line 103
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "next":I
    .end local v5    # "provider":Landroid/hardware/scontext/provider/Provider;
    .end local v6    # "scontextProvider":Landroid/hardware/scontext/SContextProvider;
    :cond_c6
    const-string v9, "com.sec.feature.scontext_lite"

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v8

    .line 104
    new-instance v7, Landroid/hardware/scontext/SContextVersion;

    .end local v7    # "scontextVersion":Landroid/hardware/scontext/SContextVersion;
    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/hardware/scontext/SContextVersion;-><init>(IZ)V

    .restart local v7    # "scontextVersion":Landroid/hardware/scontext/SContextVersion;
    goto :goto_89

    .line 120
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    .end local v2    # "looper":Landroid/os/Looper;
    .end local v7    # "scontextVersion":Landroid/hardware/scontext/SContextVersion;
    .end local v8    # "version":I
    :cond_d3
    const-string v9, "SContextService"

    const-string v10, "SContextService()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65
.end method

.method static synthetic access$1000(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/scontext/SContextService;I)V
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextService;->removeSContextService(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/scontext/SContextService;)V
    .registers 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/hardware/scontext/SContextService;->showListenerList()V

    return-void
.end method

.method static synthetic access$900(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;

    .prologue
    .line 49
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private addSContextService(ILandroid/hardware/scontext/SContextAttribute;)V
    .registers 6
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    .line 472
    sget-object v0, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 473
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextService;->sendAttribute(ILandroid/hardware/scontext/SContextAttribute;)V

    .line 474
    sget-object v0, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/provider/Provider;

    invoke-virtual {v0}, Landroid/hardware/scontext/provider/Provider;->add()V

    .line 475
    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSContextService() : service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_3a
    return-void
.end method

.method private encodeLog(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 593
    const-string/jumbo v5, "ro.debug_level"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 594
    .local v4, "state":Ljava/lang/String;
    const/4 v0, -0x1

    .line 595
    .local v0, "debug_level":I
    const-string v2, ""

    .line 596
    .local v2, "outStr":Ljava/lang/String;
    const-string v5, "Unknown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    move-object v3, v2

    .line 610
    .end local v2    # "outStr":Ljava/lang/String;
    .local v3, "outStr":Ljava/lang/String;
    :goto_15
    return-object v3

    .line 601
    .end local v3    # "outStr":Ljava/lang/String;
    .restart local v2    # "outStr":Ljava/lang/String;
    :cond_16
    const/4 v5, 0x2

    :try_start_17
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_20} :catch_28

    move-result v0

    .line 606
    const/16 v5, 0x4f4c

    if-eq v0, v5, :cond_26

    .line 607
    move-object v2, p1

    :cond_26
    move-object v3, v2

    .line 610
    .end local v2    # "outStr":Ljava/lang/String;
    .restart local v3    # "outStr":Ljava/lang/String;
    goto :goto_15

    .line 602
    .end local v3    # "outStr":Ljava/lang/String;
    .restart local v2    # "outStr":Ljava/lang/String;
    :catch_28
    move-exception v1

    .local v1, "ne":Ljava/lang/NumberFormatException;
    move-object v3, v2

    .line 603
    .end local v2    # "outStr":Ljava/lang/String;
    .restart local v3    # "outStr":Ljava/lang/String;
    goto :goto_15
.end method

.method private notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 575
    const-string v1, ""

    .line 577
    .local v1, "client":Ljava/lang/String;
    :try_start_2
    invoke-static {p1}, Landroid/hardware/scontext/ISContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextCallback;

    move-result-object v0

    .line 578
    .local v0, "cb":Landroid/hardware/scontext/ISContextCallback;
    if-eqz v0, :cond_c

    .line 579
    invoke-interface {v0}, Landroid/hardware/scontext/ISContextCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_43

    move-result-object v1

    .line 584
    .end local v0    # "cb":Landroid/hardware/scontext/ISContextCallback;
    :cond_c
    :goto_c
    const-string v3, "SContextService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", client="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v1}, Landroid/hardware/scontext/SContextService;->encodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return-void

    .line 581
    :catch_43
    move-exception v2

    .line 582
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method private removeSContextService(I)V
    .registers 5
    .param p1, "service"    # I

    .prologue
    .line 485
    sget-object v0, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 486
    sget-object v0, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/provider/Provider;

    invoke-virtual {v0}, Landroid/hardware/scontext/provider/Provider;->remove()V

    .line 487
    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeSContextService() : service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_38
    return-void
.end method

.method private sendAttribute(ILandroid/hardware/scontext/SContextAttribute;)V
    .registers 6
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    .line 459
    sget-object v0, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 460
    sget-object v0, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/provider/Provider;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/scontext/provider/Provider;->setAttribute(ILandroid/hardware/scontext/SContextAttribute;)V

    .line 461
    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendAttribute() : service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_38
    return-void
.end method

.method private showListenerList()V
    .registers 8

    .prologue
    .line 556
    const-string v4, "SContextService"

    const-string v5, "===== SContext Service List ====="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 558
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextService$Listener;

    .line 559
    .local v2, "next":Landroid/hardware/scontext/SContextService$Listener;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 560
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 561
    .local v3, "service":I
    const-string v4, "SContextService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listener : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Service : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 566
    .end local v1    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "next":Landroid/hardware/scontext/SContextService$Listener;
    .end local v3    # "service":I
    :cond_5c
    return-void
.end method

.method private declared-synchronized updateSContext(ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "event"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 498
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_11

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_68

    move-result v2

    if-nez v2, :cond_13

    .line 514
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    .line 501
    :cond_13
    :try_start_13
    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getReportingMode(I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_23

    .line 502
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mLatestInfo:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 505
    :cond_23
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 506
    new-instance v1, Landroid/hardware/scontext/SContextEvent;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextEvent;-><init>()V

    .line 507
    .local v1, "scontextEvent":Landroid/hardware/scontext/SContextEvent;
    invoke-virtual {v1, p1, p2}, Landroid/hardware/scontext/SContextEvent;->setSContextEvent(ILandroid/os/Bundle;)V

    .line 508
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 509
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 510
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 511
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    invoke-virtual {v2, v0}, Landroid/hardware/scontext/SContextService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 512
    const-string v2, "SContextService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSContext() : event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_13 .. :try_end_67} :catchall_68

    goto :goto_11

    .line 498
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "scontextEvent":Landroid/hardware/scontext/SContextEvent;
    :catchall_68
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public changeParameters(Landroid/os/IBinder;ILandroid/hardware/scontext/SContextAttribute;)Z
    .registers 13
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .param p3, "attribute"    # Landroid/hardware/scontext/SContextAttribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    const/4 v4, 0x0

    .line 286
    .local v4, "res":Z
    if-nez p3, :cond_5

    move v5, v4

    .line 325
    .end local v4    # "res":Z
    .local v5, "res":I
    :goto_4
    return v5

    .line 290
    .end local v5    # "res":I
    .restart local v4    # "res":Z
    :cond_5
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 292
    const/4 v1, 0x0

    .line 294
    .local v1, "listener":Landroid/hardware/scontext/SContextService$Listener;
    :try_start_b
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/scontext/SContextService$Listener;

    .line 296
    .local v3, "next":Landroid/hardware/scontext/SContextService$Listener;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 297
    move-object v1, v3

    .line 302
    .end local v3    # "next":Landroid/hardware/scontext/SContextService$Listener;
    :cond_28
    if-nez v1, :cond_38

    .line 303
    const-string v6, "SContextService"

    const-string v7, "cannot change parameters! : this listener is not registered."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_c2

    .line 323
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v5, v4

    .restart local v5    # "res":I
    goto :goto_4

    .line 307
    .end local v5    # "res":I
    :cond_38
    :try_start_38
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 308
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 309
    .local v2, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 310
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService$Listener;->access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService$Listener;->access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-direct {p0, p2, p3}, Landroid/hardware/scontext/SContextService;->sendAttribute(ILandroid/hardware/scontext/SContextAttribute;)V

    .line 315
    const-string v6, "SContextService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeParameters() : service = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_38 .. :try_end_96} :catchall_c2

    .line 316
    const/4 v4, 0x1

    .line 323
    .end local v2    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    :goto_97
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v5, v4

    .line 325
    .restart local v5    # "res":I
    goto/16 :goto_4

    .line 318
    .end local v5    # "res":I
    :cond_9f
    :try_start_9f
    const-string v6, "SContextService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot change parameters! : This service ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") is not used."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catchall {:try_start_9f .. :try_end_c1} :catchall_c2

    goto :goto_97

    .line 323
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :catchall_c2
    move-exception v6

    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 525
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3f

    .line 526
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump SContextService from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " without permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    :cond_3e
    return-void

    .line 531
    :cond_3f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "listener count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    const-string v6, "===== SContext Service List ====="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_66
    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 534
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/scontext/SContextService$Listener;

    .line 536
    .local v4, "next":Landroid/hardware/scontext/SContextService$Listener;
    :try_start_72
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/scontext/ISContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextCallback;

    move-result-object v0

    .line 537
    .local v0, "cb":Landroid/hardware/scontext/ISContextCallback;
    if-eqz v0, :cond_66

    .line 538
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Client Listener ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Landroid/hardware/scontext/ISContextCallback;->getListenerInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service Listener ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_b8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e9

    .line 541
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 542
    .local v5, "service":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Service : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e2
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_e2} :catch_e3

    goto :goto_b8

    .line 546
    .end local v0    # "cb":Landroid/hardware/scontext/ISContextCallback;
    .end local v3    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v5    # "service":I
    :catch_e3
    move-exception v1

    .line 547
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_66

    .line 544
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "cb":Landroid/hardware/scontext/ISContextCallback;
    .restart local v3    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_e9
    :try_start_e9
    const-string v6, "\n"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ee
    .catch Landroid/os/RemoteException; {:try_start_e9 .. :try_end_ee} :catch_e3

    goto/16 :goto_66
.end method

.method public getAvailableServiceMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mAvailableServiceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public initializeService(Landroid/os/IBinder;I)V
    .registers 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 339
    const/4 v1, 0x0

    .line 341
    .local v1, "listener":Landroid/hardware/scontext/SContextService$Listener;
    :try_start_6
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 342
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextService$Listener;

    .line 343
    .local v2, "next":Landroid/hardware/scontext/SContextService$Listener;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 344
    move-object v1, v2

    .line 349
    .end local v2    # "next":Landroid/hardware/scontext/SContextService$Listener;
    :cond_2d
    if-nez v1, :cond_3c

    .line 350
    const-string v3, "SContextService"

    const-string v4, "cannot initialize scontext service! : this listener is not registered."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_a3

    .line 366
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 368
    :goto_3b
    return-void

    .line 354
    :cond_3c
    :try_start_3c
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 355
    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextService;->removeSContextService(I)V

    .line 356
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService$Listener;->access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/scontext/SContextAttribute;

    invoke-direct {p0, p2, v3}, Landroid/hardware/scontext/SContextService;->addSContextService(ILandroid/hardware/scontext/SContextAttribute;)V

    .line 357
    const-string v3, "SContextService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeSContextService() : service = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_3c .. :try_end_7a} :catchall_a3

    .line 366
    :goto_7a
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3b

    .line 361
    :cond_80
    :try_start_80
    const-string v3, "SContextService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot initialize scontext service! : This service ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is not used."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_80 .. :try_end_a2} :catchall_a3

    goto :goto_7a

    .line 366
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :catchall_a3
    move-exception v3

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public registerCallback(Landroid/os/IBinder;ILandroid/hardware/scontext/SContextAttribute;)V
    .registers 15
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .param p3, "attribute"    # Landroid/hardware/scontext/SContextAttribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x1b

    .line 134
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 136
    const/4 v3, 0x0

    .line 137
    .local v3, "listener":Landroid/hardware/scontext/SContextService$Listener;
    const/4 v5, 0x0

    .line 138
    .local v5, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    if-nez p3, :cond_11

    .line 199
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 201
    :goto_10
    return-void

    .line 142
    :cond_11
    :try_start_11
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_139

    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/scontext/SContextService$Listener;

    .line 144
    .local v7, "next":Landroid/hardware/scontext/SContextService$Listener;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v7}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_126

    move-result v8

    if-eqz v8, :cond_17

    .line 145
    move-object v3, v7

    move-object v4, v3

    .line 150
    .end local v3    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    .end local v7    # "next":Landroid/hardware/scontext/SContextService$Listener;
    .local v4, "listener":Landroid/hardware/scontext/SContextService$Listener;
    :goto_2f
    if-nez v4, :cond_136

    .line 151
    :try_start_31
    new-instance v3, Landroid/hardware/scontext/SContextService$Listener;

    invoke-direct {v3, p0, p1}, Landroid/hardware/scontext/SContextService$Listener;-><init>(Landroid/hardware/scontext/SContextService;Landroid/os/IBinder;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_12d

    .line 152
    .end local v4    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    .restart local v3    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    const/4 v8, 0x0

    :try_start_37
    invoke-interface {p1, v3, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 153
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :goto_3f
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_aa

    .line 157
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService$Listener;->access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v8, "registerCallback"

    invoke-direct {p0, p1, v8}, Landroid/hardware/scontext/SContextService;->notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 161
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b1

    .line 162
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_7a
    .catchall {:try_start_37 .. :try_end_7a} :catchall_126

    .line 163
    .end local v5    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    .local v6, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    :try_start_7a
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-direct {p0, p2, p3}, Landroid/hardware/scontext/SContextService;->addSContextService(ILandroid/hardware/scontext/SContextAttribute;)V

    .line 166
    if-ne p2, v10, :cond_133

    .line 167
    sget-object v8, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_133

    .line 168
    sget-object v8, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;

    invoke-virtual {v8, v3, p3}, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->addAction(Landroid/hardware/scontext/SContextService$Listener;Landroid/hardware/scontext/SContextAttribute;)V
    :try_end_a6
    .catchall {:try_start_7a .. :try_end_a6} :catchall_130

    move-object v5, v6

    .line 196
    .end local v6    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    .restart local v5    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_a7
    :goto_a7
    :try_start_a7
    invoke-direct {p0}, Landroid/hardware/scontext/SContextService;->showListenerList()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_126

    .line 199
    :cond_aa
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_10

    .line 173
    :cond_b1
    :try_start_b1
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/ArrayList;

    move-object v5, v0

    .line 174
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const/4 v8, 0x2

    if-ne p2, v8, :cond_e9

    .line 177
    sget-object v8, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e9

    .line 178
    sget-object v8, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/scontext/provider/Provider;

    invoke-virtual {v8, p2, p3}, Landroid/hardware/scontext/provider/Provider;->setAttribute(ILandroid/hardware/scontext/SContextAttribute;)V

    .line 181
    :cond_e9
    if-ne p2, v10, :cond_106

    .line 182
    sget-object v8, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_106

    .line 183
    sget-object v8, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;

    invoke-virtual {v8, v3, p3}, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->addAction(Landroid/hardware/scontext/SContextService$Listener;Landroid/hardware/scontext/SContextAttribute;)V

    .line 187
    :cond_106
    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getReportingMode(I)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_a7

    .line 188
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mLatestInfo:Landroid/os/Bundle;

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 190
    .local v1, "context":Landroid/os/Bundle;
    if-eqz v1, :cond_a7

    .line 191
    invoke-direct {p0, p2, v1}, Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    :try_end_125
    .catchall {:try_start_b1 .. :try_end_125} :catchall_126

    goto :goto_a7

    .line 199
    .end local v1    # "context":Landroid/os/Bundle;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :catchall_126
    move-exception v8

    :goto_127
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8

    .end local v3    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    .restart local v4    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    :catchall_12d
    move-exception v8

    move-object v3, v4

    .end local v4    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    .restart local v3    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    goto :goto_127

    .end local v5    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    .restart local v6    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    :catchall_130
    move-exception v8

    move-object v5, v6

    .end local v6    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    .restart local v5    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    goto :goto_127

    .end local v5    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    .restart local v6    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_133
    move-object v5, v6

    .end local v6    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    .restart local v5    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    goto/16 :goto_a7

    .end local v3    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    .restart local v4    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    :cond_136
    move-object v3, v4

    .end local v4    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    .restart local v3    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    goto/16 :goto_3f

    :cond_139
    move-object v4, v3

    .end local v3    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    .restart local v4    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    goto/16 :goto_2f
.end method

.method public requestToUpdate(Landroid/os/IBinder;I)V
    .registers 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 391
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 393
    const/4 v1, 0x0

    .line 395
    .local v1, "listener":Landroid/hardware/scontext/SContextService$Listener;
    :try_start_6
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 396
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextService$Listener;

    .line 397
    .local v2, "next":Landroid/hardware/scontext/SContextService$Listener;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 398
    move-object v1, v2

    .line 403
    .end local v2    # "next":Landroid/hardware/scontext/SContextService$Listener;
    :cond_2d
    if-nez v1, :cond_3c

    .line 404
    const-string v3, "SContextService"

    const-string v4, "cannot initialize scontext service! : this listener is not registered."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_88

    .line 415
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 417
    :goto_3b
    return-void

    .line 408
    :cond_3c
    :try_start_3c
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 409
    sget-object v3, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 410
    sget-object v3, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/scontext/provider/Provider;

    invoke-virtual {v3}, Landroid/hardware/scontext/provider/Provider;->requestToUpdate()V

    .line 411
    const-string v3, "SContextService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestToUpdate() : service = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_3c .. :try_end_82} :catchall_88

    .line 415
    :cond_82
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3b

    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :catchall_88
    move-exception v3

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public setReferenceData(I[B)Z
    .registers 7
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    .line 428
    const/4 v0, 0x0

    .line 430
    .local v0, "res":Z
    if-nez p2, :cond_5

    move v1, v0

    .line 449
    .end local v0    # "res":Z
    .local v1, "res":I
    :goto_4
    return v1

    .line 434
    .end local v1    # "res":I
    .restart local v0    # "res":Z
    :cond_5
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 436
    :try_start_a
    sget-object v2, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 437
    sget-object v2, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/provider/Provider;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/scontext/provider/Provider;->setReferenceData(I[B)Z
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_59

    move-result v0

    .line 447
    :goto_2a
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v1, v0

    .line 449
    .restart local v1    # "res":I
    goto :goto_4

    .line 439
    .end local v1    # "res":I
    :cond_31
    :try_start_31
    sget-object v2, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x25

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 440
    sget-object v2, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x25

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/provider/Provider;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/scontext/provider/Provider;->setReferenceData(I[B)Z
    :try_end_50
    .catchall {:try_start_31 .. :try_end_50} :catchall_59

    move-result v0

    goto :goto_2a

    .line 447
    :cond_52
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v1, v0

    .restart local v1    # "res":I
    goto :goto_4

    .end local v1    # "res":I
    :catchall_59
    move-exception v2

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public unregisterCallback(Landroid/os/IBinder;I)Z
    .registers 13
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x1b

    .line 213
    const/4 v2, 0x1

    .line 215
    .local v2, "isDeletableListener":Z
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 217
    const/4 v3, 0x0

    .line 219
    .local v3, "listener":Landroid/hardware/scontext/SContextService$Listener;
    :try_start_9
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/scontext/SContextService$Listener;

    .line 221
    .local v5, "next":Landroid/hardware/scontext/SContextService$Listener;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 222
    move-object v3, v5

    .line 227
    .end local v5    # "next":Landroid/hardware/scontext/SContextService$Listener;
    :cond_26
    if-eqz v3, :cond_d8

    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 228
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService$Listener;->access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextAttribute;

    .line 229
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 230
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService$Listener;->access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string/jumbo v6, "unregisterCallback"

    invoke-direct {p0, p1, v6}, Landroid/hardware/scontext/SContextService;->notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 232
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 234
    .local v4, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    const-string v6, "SContextService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unregisterCallback() : Listener = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Service = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", used = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_f6

    .line 239
    if-ne p2, v9, :cond_c9

    .line 240
    sget-object v6, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 241
    sget-object v6, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;

    invoke-virtual {v6, v3, v0}, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->removeAction(Landroid/hardware/scontext/SContextService$Listener;Landroid/hardware/scontext/SContextAttribute;)V

    .line 245
    :cond_c9
    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextService;->removeSContextService(I)V

    .line 246
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :goto_d5
    invoke-direct {p0}, Landroid/hardware/scontext/SContextService;->showListenerList()V

    .line 260
    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    .end local v4    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_d8
    if-eqz v3, :cond_e4

    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e5

    .line 261
    :cond_e4
    const/4 v2, 0x0

    .line 264
    :cond_e5
    if-eqz v2, :cond_f0

    .line 265
    const/4 v6, 0x0

    invoke-interface {p1, v3, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 266
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_f0
    .catchall {:try_start_9 .. :try_end_f0} :catchall_120

    .line 269
    :cond_f0
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 271
    return v2

    .line 248
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    .restart local v4    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_f6
    if-ne p2, v9, :cond_113

    .line 249
    :try_start_f8
    sget-object v6, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_113

    .line 250
    sget-object v6, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;

    invoke-virtual {v6, v3, v0}, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->removeAction(Landroid/hardware/scontext/SContextService$Listener;Landroid/hardware/scontext/SContextAttribute;)V

    .line 254
    :cond_113
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 255
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11f
    .catchall {:try_start_f8 .. :try_end_11f} :catchall_120

    goto :goto_d5

    .line 269
    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    .end local v4    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    :catchall_120
    move-exception v6

    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method
