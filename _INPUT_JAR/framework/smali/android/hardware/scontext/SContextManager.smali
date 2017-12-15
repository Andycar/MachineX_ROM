.class public Landroid/hardware/scontext/SContextManager;
.super Ljava/lang/Object;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextManager"


# instance fields
.field private mAvailableServiceMap:Ljava/util/HashMap;
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

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;

.field private mSContextService:Landroid/hardware/scontext/ISContextService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "mainLooper"    # Landroid/os/Looper;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 132
    const-string/jumbo v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/scontext/ISContextService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    .line 134
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    .line 135
    return-void
.end method

.method private checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z
    .registers 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 1136
    const/4 v0, 0x0

    .line 1137
    .local v0, "res":Z
    if-nez p1, :cond_c

    .line 1138
    const-string v2, "SContextManager"

    const-string v3, "Listener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1142
    .end local v0    # "res":Z
    .local v1, "res":I
    :goto_b
    return v1

    .line 1141
    .end local v1    # "res":I
    .restart local v0    # "res":Z
    :cond_c
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    move v1, v0

    .line 1142
    .restart local v1    # "res":I
    goto :goto_b
.end method

.method private getAvailableServiceMap()Ljava/util/HashMap;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1094
    const/4 v2, 0x0

    .line 1096
    .local v2, "serviceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_1
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3}, Landroid/hardware/scontext/ISContextService;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_c

    .line 1100
    :goto_b
    return-object v2

    .line 1097
    :catch_c
    move-exception v1

    .line 1098
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SContextManager"

    const-string v4, "RemoteException in getAvailableServiceMap: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method private getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .registers 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;

    .prologue
    .line 1110
    if-eqz p1, :cond_a

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1111
    :cond_a
    const/4 v2, 0x0

    .line 1125
    :cond_b
    :goto_b
    return-object v2

    .line 1114
    :cond_c
    const/4 v2, 0x0

    .line 1116
    .local v2, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1117
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;>;"
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .line 1119
    .local v0, "delegate":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1120
    move-object v2, v0

    .line 1121
    goto :goto_b
.end method


# virtual methods
.method public changeParameters(Landroid/hardware/scontext/SContextListener;II)Z
    .registers 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 888
    const/4 v0, 0x0

    .line 889
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v2, 0x2

    if-ne p2, v2, :cond_e

    .line 890
    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(I)V

    .line 894
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_9
    :goto_9
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 896
    .local v1, "res":Z
    return v1

    .line 891
    .end local v1    # "res":Z
    :cond_e
    const/16 v2, 0x21

    if-ne p2, v2, :cond_9

    .line 892
    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>(I)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .registers 16
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 862
    const/4 v0, 0x0

    .line 863
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_c

    .line 864
    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(IDD)V

    .line 866
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_c
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .line 868
    .local v6, "res":Z
    return v6
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .registers 14
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 835
    const/4 v0, 0x0

    .line 836
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x23

    if-ne p2, v1, :cond_f

    .line 837
    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v1, 0x1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    .line 840
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_f
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .line 842
    .local v6, "res":Z
    return v6
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z
    .registers 9
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    const/4 v2, 0x0

    .line 783
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v3

    if-nez v3, :cond_a

    .line 813
    :cond_9
    :goto_9
    return v2

    .line 787
    :cond_a
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 791
    const/4 v3, 0x2

    if-eq p2, v3, :cond_1f

    const/16 v3, 0x21

    if-eq p2, v3, :cond_1f

    const/16 v3, 0x23

    if-eq p2, v3, :cond_1f

    const/16 v3, 0x25

    if-ne p2, v3, :cond_9

    .line 796
    :cond_1f
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 798
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_2d

    .line 799
    const-string v3, "SContextManager"

    const-string v4, "  .changeParameters : SContextListener is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 804
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2, p3}, Landroid/hardware/scontext/ISContextService;->changeParameters(Landroid/os/IBinder;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 805
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .changeParameters : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_5b} :catch_5d

    .line 811
    :cond_5b
    :goto_5b
    const/4 v2, 0x1

    goto :goto_9

    .line 808
    :catch_5d
    move-exception v0

    .line 809
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in changeParameters: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b
.end method

.method public getFeatureLevel(I)I
    .registers 4
    .param p1, "service"    # I

    .prologue
    .line 966
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 967
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 969
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public initializeSContextService(Landroid/hardware/scontext/SContextListener;I)V
    .registers 8
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 720
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x3

    if-eq p2, v2, :cond_a

    .line 738
    :cond_9
    :goto_9
    return-void

    .line 724
    :cond_a
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 726
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_18

    .line 727
    const-string v2, "SContextManager"

    const-string v3, "  .initializeSContextService : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 732
    :cond_18
    :try_start_18
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->initializeService(Landroid/os/IBinder;I)V

    .line 733
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .initializeSContextService : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_43} :catch_44

    goto :goto_9

    .line 735
    :catch_44
    move-exception v0

    .line 736
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in initializeSContextService: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public isAvailableService(I)Z
    .registers 5
    .param p1, "service"    # I

    .prologue
    .line 949
    const/4 v0, 0x0

    .line 950
    .local v0, "res":Z
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v1, :cond_b

    .line 951
    invoke-direct {p0}, Landroid/hardware/scontext/SContextManager;->getAvailableServiceMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 953
    :cond_b
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-eqz v1, :cond_19

    .line 954
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 956
    :cond_19
    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I)Z
    .registers 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    packed-switch p2, :pswitch_data_74

    .line 218
    :pswitch_4
    new-instance v0, Landroid/hardware/scontext/SContextAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 221
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :goto_9
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 223
    .local v1, "res":Z
    return v1

    .line 150
    .end local v1    # "res":Z
    :pswitch_e
    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>()V

    .line 151
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 154
    :pswitch_14
    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>()V

    .line 155
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 158
    :pswitch_1a
    new-instance v0, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>()V

    .line 159
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 162
    :pswitch_20
    new-instance v0, Landroid/hardware/scontext/SContextEnvironmentAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextEnvironmentAttribute;-><init>()V

    .line 163
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 166
    :pswitch_26
    new-instance v0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;-><init>()V

    .line 167
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 170
    :pswitch_2c
    new-instance v0, Landroid/hardware/scontext/SContextShakeMotionAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextShakeMotionAttribute;-><init>()V

    .line 171
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 174
    :pswitch_32
    new-instance v0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;-><init>()V

    .line 175
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 178
    :pswitch_38
    new-instance v0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;-><init>()V

    .line 179
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 182
    :pswitch_3e
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;-><init>()V

    .line 183
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 186
    :pswitch_44
    new-instance v0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;-><init>()V

    .line 187
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 190
    :pswitch_4a
    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;-><init>()V

    .line 191
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 194
    :pswitch_50
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;-><init>()V

    .line 195
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 198
    :pswitch_56
    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>()V

    .line 199
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 202
    :pswitch_5c
    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>()V

    .line 203
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 206
    :pswitch_62
    new-instance v0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;-><init>()V

    .line 207
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 210
    :pswitch_68
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>()V

    .line 211
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 214
    :pswitch_6e
    new-instance v0, Landroid/hardware/scontext/SContextExerciseAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextExerciseAttribute;-><init>()V

    .line 215
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 148
    :pswitch_data_74
    .packed-switch 0x2
        :pswitch_e
        :pswitch_14
        :pswitch_4
        :pswitch_4
        :pswitch_1a
        :pswitch_4
        :pswitch_20
        :pswitch_26
        :pswitch_4
        :pswitch_4
        :pswitch_2c
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_32
        :pswitch_38
        :pswitch_4
        :pswitch_4
        :pswitch_3e
        :pswitch_44
        :pswitch_4a
        :pswitch_50
        :pswitch_4
        :pswitch_4
        :pswitch_56
        :pswitch_4
        :pswitch_5c
        :pswitch_62
        :pswitch_68
        :pswitch_6e
    .end packed-switch
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;II)Z
    .registers 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v2, 0x3

    if-ne p2, v2, :cond_e

    .line 347
    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>(I)V

    .line 357
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_9
    :goto_9
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 359
    .local v1, "res":Z
    return v1

    .line 348
    .end local v1    # "res":Z
    :cond_e
    const/4 v2, 0x6

    if-ne p2, v2, :cond_17

    .line 349
    new-instance v0, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>(I)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 350
    :cond_17
    const/16 v2, 0x10

    if-ne p2, v2, :cond_21

    .line 351
    new-instance v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;-><init>(I)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 352
    :cond_21
    const/16 v2, 0x21

    if-ne p2, v2, :cond_2b

    .line 353
    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>(I)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9

    .line 354
    :cond_2b
    const/16 v2, 0x24

    if-ne p2, v2, :cond_9

    .line 355
    new-instance v0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;-><init>(I)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_9
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .registers 16
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_c

    .line 495
    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(IDD)V

    .line 497
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_c
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .line 499
    .local v6, "res":Z
    return v6
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;III)Z
    .registers 8
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x8

    if-ne p2, v2, :cond_f

    .line 435
    new-instance v0, Landroid/hardware/scontext/SContextEnvironmentAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextEnvironmentAttribute;-><init>(II)V

    .line 442
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_a
    :goto_a
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 444
    .local v1, "res":Z
    return v1

    .line 436
    .end local v1    # "res":Z
    :cond_f
    const/16 v2, 0xc

    if-ne p2, v2, :cond_19

    .line 437
    new-instance v0, Landroid/hardware/scontext/SContextShakeMotionAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextShakeMotionAttribute;-><init>(II)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_a

    .line 438
    :cond_19
    const/16 v2, 0x1d

    if-ne p2, v2, :cond_a

    .line 439
    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;-><init>(II)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_a
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIDI)Z
    .registers 15
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # D
    .param p7, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 555
    const/4 v1, 0x0

    .line 556
    .local v1, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x9

    if-ne p2, v2, :cond_e

    .line 557
    new-instance v1, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;

    .end local v1    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v2, p3

    move v3, p4

    move-wide v4, p5

    move v6, p7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;-><init>(IIDI)V

    .line 559
    .restart local v1    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_e
    invoke-virtual {p0, p1, p2, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v0

    .line 561
    .local v0, "res":Z
    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIII)Z
    .registers 13
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v4, 0x5dc

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x23

    if-ne p2, v1, :cond_10

    .line 468
    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move v2, p4

    move v3, p5

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    .line 471
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_10
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .line 473
    .local v6, "res":Z
    return v6
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .registers 10
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x1c

    if-ne p2, v2, :cond_a

    .line 589
    new-instance v0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4, p5, p6}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;-><init>(IIII)V

    .line 591
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_a
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 593
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIIII)Z
    .registers 15
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .param p7, "arg5"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 626
    const/4 v0, 0x0

    .line 627
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x18

    if-ne p2, v1, :cond_14

    .line 628
    new-instance v0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;-><init>(IIIII)V

    .line 632
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_f
    :goto_f
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .line 634
    .local v6, "res":Z
    return v6

    .line 629
    .end local v6    # "res":Z
    :cond_14
    const/16 v1, 0x23

    if-ne p2, v1, :cond_f

    .line 630
    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_f
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIZ)Z
    .registers 9
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x17

    if-ne p2, v2, :cond_a

    .line 525
    new-instance v0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4, p5}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;-><init>(IIZ)V

    .line 527
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_a
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 529
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z
    .registers 9
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    const/4 v2, 0x0

    .line 294
    if-nez p3, :cond_4

    .line 322
    :cond_3
    :goto_3
    return v2

    .line 297
    :cond_4
    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 302
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 306
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 308
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_21

    .line 309
    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .end local v1    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Handler;)V

    .line 310
    .restart local v1    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_21
    :try_start_21
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2, p3}, Landroid/hardware/scontext/ISContextService;->registerCallback(Landroid/os/IBinder;ILandroid/hardware/scontext/SContextAttribute;)V

    .line 315
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .registerListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_4c} :catch_4e

    .line 322
    :goto_4c
    const/4 v2, 0x1

    goto :goto_3

    .line 318
    :catch_4e
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in registerListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[I)Z
    .registers 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x1b

    if-ne p2, v2, :cond_a

    .line 380
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;-><init>([I)V

    .line 382
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_a
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 384
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[II)Z
    .registers 8
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # [I
    .param p4, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x1e

    if-ne p2, v2, :cond_a

    .line 407
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;-><init>([II)V

    .line 410
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_a
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 412
    .local v1, "res":Z
    return v1
.end method

.method public requestToUpdate(Landroid/hardware/scontext/SContextListener;I)V
    .registers 8
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 912
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 940
    :goto_6
    return-void

    .line 916
    :cond_7
    const/4 v2, 0x2

    if-eq p2, v2, :cond_22

    const/16 v2, 0x19

    if-eq p2, v2, :cond_22

    const/16 v2, 0x1a

    if-eq p2, v2, :cond_22

    const/16 v2, 0x1d

    if-eq p2, v2, :cond_22

    const/16 v2, 0x26

    if-eq p2, v2, :cond_22

    .line 921
    const-string v2, "SContextManager"

    const-string v3, "  .requestToUpdate : This service is not supported!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 925
    :cond_22
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 927
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_30

    .line 928
    const-string v2, "SContextManager"

    const-string v3, "  .requestToUpdate : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 933
    :cond_30
    :try_start_30
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->requestToUpdate(Landroid/os/IBinder;I)V

    .line 934
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .requestToUpdate : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_5b} :catch_5c

    goto :goto_6

    .line 937
    :catch_5c
    move-exception v0

    .line 938
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in changeParameters: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z
    .registers 12
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    .line 1036
    const/4 v5, 0x0

    .line 1037
    .local v5, "res":Z
    iget-object v7, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    if-eqz v7, :cond_7

    if-nez p2, :cond_9

    :cond_7
    move v6, v5

    .line 1085
    .end local v5    # "res":Z
    .local v6, "res":I
    :goto_8
    return v6

    .line 1041
    .end local v6    # "res":I
    .restart local v5    # "res":Z
    :cond_9
    invoke-virtual {p2, p1}, Landroid/hardware/scontext/SContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1042
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_11

    move v6, v5

    .line 1043
    .restart local v6    # "res":I
    goto :goto_8

    .line 1047
    .end local v6    # "res":I
    :cond_11
    sparse-switch p1, :sswitch_data_78

    :cond_14
    :goto_14
    move v6, v5

    .line 1085
    .restart local v6    # "res":I
    goto :goto_8

    .line 1049
    .end local v6    # "res":I
    :sswitch_16
    :try_start_16
    const-string/jumbo v7, "net_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4e

    const-string v7, "gram_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 1050
    const-string/jumbo v7, "net_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 1051
    .local v4, "netData":[B
    const-string v7, "gram_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 1052
    .local v2, "gramData":[B
    if-eqz v4, :cond_38

    if-nez v2, :cond_3a

    :cond_38
    move v6, v5

    .line 1053
    .restart local v6    # "res":I
    goto :goto_8

    .line 1055
    .end local v6    # "res":I
    :cond_3a
    iget-object v7, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/4 v8, 0x1

    invoke-interface {v7, v8, v4}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/4 v8, 0x2

    invoke-interface {v7, v8, v2}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1059
    const/4 v5, 0x1

    goto :goto_14

    .end local v2    # "gramData":[B
    .end local v4    # "netData":[B
    :cond_4e
    move v6, v5

    .line 1062
    .restart local v6    # "res":I
    goto :goto_8

    .line 1066
    .end local v6    # "res":I
    :sswitch_50
    const-string v7, "luminance_config_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 1067
    const-string v7, "luminance_config_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 1068
    .local v3, "luminanceConfigData":[B
    if-nez v3, :cond_62

    move v6, v5

    .line 1069
    .restart local v6    # "res":I
    goto :goto_8

    .line 1071
    .end local v6    # "res":I
    :cond_62
    iget-object v7, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/4 v8, 0x0

    invoke-interface {v7, v8, v3}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_68} :catch_6f

    move-result v7

    if-eqz v7, :cond_14

    .line 1073
    const/4 v5, 0x1

    goto :goto_14

    .end local v3    # "luminanceConfigData":[B
    :cond_6d
    move v6, v5

    .line 1076
    .restart local v6    # "res":I
    goto :goto_8

    .line 1082
    .end local v6    # "res":I
    :catch_6f
    move-exception v1

    .line 1083
    .local v1, "e":Landroid/os/RemoteException;
    const-string v7, "SContextManager"

    const-string v8, "RemoteException in initializeSContextService: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 1047
    :sswitch_data_78
    .sparse-switch
        0x10 -> :sswitch_16
        0x25 -> :sswitch_50
    .end sparse-switch
.end method

.method public setReferenceData(I[B[B)Z
    .registers 8
    .param p1, "service"    # I
    .param p2, "data1"    # [B
    .param p3, "data2"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 990
    const/4 v1, 0x0

    .line 991
    .local v1, "res":Z
    const/4 v0, 0x0

    .line 992
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    if-eqz p2, :cond_6

    if-nez p3, :cond_8

    :cond_6
    move v2, v1

    .line 1000
    .end local v1    # "res":Z
    .local v2, "res":I
    :goto_7
    return v2

    .line 996
    .end local v2    # "res":I
    .restart local v1    # "res":Z
    :cond_8
    const/16 v3, 0x10

    if-ne p1, v3, :cond_11

    .line 997
    new-instance v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p2, p3}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;-><init>([B[B)V

    .line 999
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_11
    invoke-virtual {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    move v2, v1

    .line 1000
    .restart local v2    # "res":I
    goto :goto_7
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;)V
    .registers 9
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;

    .prologue
    .line 643
    if-eqz p1, :cond_6

    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v4, :cond_7

    .line 665
    :cond_6
    :goto_6
    return-void

    .line 647
    :cond_7
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 648
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 649
    .local v3, "service":I
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v2

    .line 650
    .local v2, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-eqz v2, :cond_6

    .line 655
    :try_start_27
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v4, v2, v3}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 656
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 657
    const-string v4, "SContextManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .unregisterListener : listener = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_4c} :catch_4d

    goto :goto_6

    .line 660
    :catch_4d
    move-exception v0

    .line 661
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "SContextManager"

    const-string v5, "RemoteException in unregisterListener: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    .registers 8
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 675
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 696
    :goto_6
    return-void

    .line 679
    :cond_7
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 681
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_15

    .line 682
    const-string v2, "SContextManager"

    const-string v3, "  .unregisterListener : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 687
    :cond_15
    :try_start_15
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 688
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 690
    :cond_22
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .unregisterListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_48} :catch_49

    goto :goto_6

    .line 693
    :catch_49
    move-exception v0

    .line 694
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in unregisterListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method
