.class public Lcom/samsung/android/contextaware/manager/ContextManager;
.super Ljava/lang/Object;
.source "ContextManager.java"


# instance fields
.field private final mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/creator/ContextProviderCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/utilbundle/IUtilManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "version"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v6, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;

    invoke-direct {v6, p1}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;-><init>(Landroid/content/Context;)V

    .line 66
    .local v6, "sensorHubParserConcreteCreator":Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->getPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v3

    invoke-direct {v2, p1, p2, v3, p3}, Lcom/samsung/android/contextaware/creator/builtin/AndroidRunnerConcreteCreator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->getPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v3

    invoke-direct {v2, p1, p2, v3, p3}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 73
    .local v1, "creator":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/creator/ContextProviderCreator;>;"
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v7, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/creator/builtin/SensorHubParserConcreteCreator;->getPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v4

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAlarmManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubMultiModeParser;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextManager;->initializeUtil(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method private initializeUtil(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mUtilManager:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/utilbundle/IUtilManager;

    .line 303
    .local v0, "i":Lcom/samsung/android/contextaware/utilbundle/IUtilManager;
    invoke-interface {v0, p1}, Lcom/samsung/android/contextaware/utilbundle/IUtilManager;->initializeManager(Landroid/content/Context;)V

    goto :goto_6

    .line 305
    .end local v0    # "i":Lcom/samsung/android/contextaware/utilbundle/IUtilManager;
    :cond_16
    return-void
.end method


# virtual methods
.method protected final getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "observer"    # Lcom/samsung/android/contextaware/manager/IContextObserver;

    .prologue
    .line 163
    invoke-virtual {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    .line 164
    .local v0, "provider":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v0, :cond_23

    .line 165
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/contextaware/manager/ContextProvider;->registerObserver(Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    .line 166
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getCmdProcessResultObserver()Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->registerCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    .line 168
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V

    .line 170
    :cond_23
    return-void
.end method

.method protected final getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;
    .registers 6
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 264
    const/4 v2, 0x0

    .line 266
    .local v2, "obj":Lcom/samsung/android/contextaware/manager/ContextComponent;
    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 267
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/creator/ContextProviderCreator;>;"
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 268
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;

    .line 269
    .local v0, "creator":Lcom/samsung/android/contextaware/creator/ContextProviderCreator;
    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 270
    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v2

    .line 275
    .end local v0    # "creator":Lcom/samsung/android/contextaware/creator/ContextProviderCreator;
    :cond_1f
    return-object v2
.end method

.method protected final getCreator()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/creator/ContextProviderCreator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final notifyInitContext(Ljava/lang/String;)V
    .registers 4
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    .line 251
    .local v0, "provider":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v0, :cond_d

    .line 252
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->notifyInitContext()V

    .line 254
    :cond_d
    return-void
.end method

.method protected removeContextProviderObj(Ljava/lang/String;)V
    .registers 5
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 286
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/creator/ContextProviderCreator;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 287
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;

    .line 288
    .local v0, "creator":Lcom/samsung/android/contextaware/creator/ContextProviderCreator;
    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 289
    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->removeContextObj(Ljava/lang/String;)V

    .line 293
    .end local v0    # "creator":Lcom/samsung/android/contextaware/creator/ContextProviderCreator;
    :cond_1d
    return-void
.end method

.method protected final reset(Ljava/lang/String;)V
    .registers 5
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    .line 218
    .local v0, "component":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-nez v0, :cond_14

    .line 219
    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_NOT_RUNNING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 241
    :goto_13
    return-void

    .line 225
    :cond_14
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    .line 226
    .local v1, "provider":Lcom/samsung/android/contextaware/manager/ContextProvider;
    if-nez v1, :cond_28

    .line 227
    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_NOT_RUNNING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_13

    .line 233
    :cond_28
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 234
    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_NOT_RUNNING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_13

    .line 240
    :cond_3c
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->clearAccordingToRequest()V

    goto :goto_13
.end method

.method protected final setProperty(Ljava/lang/String;ILjava/lang/Object;)Z
    .registers 6
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "ITE;)Z"
        }
    .end annotation

    .prologue
    .line 203
    .local p3, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    .line 204
    .local v0, "provider":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v0, :cond_f

    .line 205
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/samsung/android/contextaware/manager/ContextProvider;->setProperty(ILjava/lang/Object;)Z

    move-result v1

    .line 207
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method protected final setVersion(I)V
    .registers 4
    .param p1, "version"    # I

    .prologue
    .line 324
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 325
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/creator/ContextProviderCreator;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 326
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;

    invoke-static {p1}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;->setVersion(I)V

    goto :goto_6

    .line 328
    :cond_16
    return-void
.end method

.method public final start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;I)V
    .registers 8
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "observer"    # Lcom/samsung/android/contextaware/manager/IContextObserver;
    .param p4, "operation"    # I

    .prologue
    .line 102
    invoke-virtual {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    .line 103
    .local v0, "provider":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v0, :cond_1f

    .line 104
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/contextaware/manager/ContextProvider;->registerObserver(Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    .line 105
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getCmdProcessResultObserver()Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->registerCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    .line 107
    invoke-virtual {v0, p1, p4}, Lcom/samsung/android/contextaware/manager/ContextComponent;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 109
    :cond_1f
    return-void
.end method

.method public final stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;I)V
    .registers 10
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "observer"    # Lcom/samsung/android/contextaware/manager/IContextObserver;
    .param p4, "resultObserver"    # Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;
    .param p5, "operation"    # I

    .prologue
    .line 128
    invoke-virtual {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v1

    .line 129
    .local v1, "provider":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_33

    .line 130
    invoke-virtual {v1, p1, p5}, Lcom/samsung/android/contextaware/manager/ContextComponent;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 131
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v0

    .line 133
    .local v0, "key":I
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_34

    .line 148
    .end local v0    # "key":I
    :cond_33
    :goto_33
    return-void

    .line 137
    .restart local v0    # "key":I
    :cond_34
    if-eqz p4, :cond_41

    .line 138
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/samsung/android/contextaware/manager/ContextProvider;->unregisterCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    .line 146
    :goto_3d
    invoke-virtual {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextManager;->removeContextProviderObj(Ljava/lang/String;)V

    goto :goto_33

    .line 141
    :cond_41
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getCmdProcessResultObserver()Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/manager/ContextProvider;->unregisterCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    goto :goto_3d
.end method

.method protected final unregisterObservers(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;)V
    .registers 6
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/samsung/android/contextaware/manager/IContextObserver;

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    .line 183
    .local v0, "provider":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v0, :cond_15

    .line 185
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getCmdProcessResultObserver()Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->unregisterCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    .line 188
    :cond_15
    return-void
.end method
