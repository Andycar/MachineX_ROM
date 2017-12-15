.class public abstract Lcom/samsung/android/contextaware/manager/ContextComponent;
.super Ljava/lang/Object;
.source "ContextComponent.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/IContextProvider;
.implements Lcom/samsung/android/contextaware/manager/IContextObservable;
.implements Lcom/samsung/android/contextaware/manager/ICmdProcessResultObservable;


# instance fields
.field private final mContextBean:Lcom/samsung/android/contextaware/manager/ContextBean;

.field private final mContextObserver:Lcom/samsung/android/contextaware/manager/ContextObserverManager;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextBean;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextBean;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextComponent;->mContextBean:Lcom/samsung/android/contextaware/manager/ContextBean;

    .line 41
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextObserverManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/manager/ContextObserverManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextComponent;->mContextObserver:Lcom/samsung/android/contextaware/manager/ContextObserverManager;

    .line 42
    return-void
.end method

.method private clearContextBean()V
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextComponent;->mContextBean:Lcom/samsung/android/contextaware/manager/ContextBean;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->clearContextBean()V

    .line 356
    return-void
.end method

.method private notifyObserver(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->display()V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextComponent;->mContextObserver:Lcom/samsung/android/contextaware/manager/ContextObserverManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextObserverManager;->notifyObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->clearContextBean()V

    .line 158
    return-void
.end method


# virtual methods
.method protected checkNotifyCondition()Z
    .registers 2

    .prologue
    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->clearContextBean()V

    .line 63
    return-void
.end method

.method protected clearAccordingToRequest()V
    .registers 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->clear()V

    .line 263
    return-void
.end method

.method public disable()V
    .registers 1

    .prologue
    .line 97
    return-void
.end method

.method protected disableForStop(I)V
    .registers 2
    .param p1, "operation"    # I

    .prologue
    .line 178
    return-void
.end method

.method protected display()V
    .registers 1

    .prologue
    .line 419
    return-void
.end method

.method public enable()V
    .registers 1

    .prologue
    .line 90
    return-void
.end method

.method protected enableForStart(I)V
    .registers 2
    .param p1, "operation"    # I

    .prologue
    .line 168
    return-void
.end method

.method protected final getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextComponent;->mContextBean:Lcom/samsung/android/contextaware/manager/ContextBean;

    return-object v0
.end method

.method protected getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .prologue
    .line 311
    return-void
.end method

.method public abstract getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;
.end method

.method public getContextType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    const-string v0, ""

    return-object v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 399
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getInitContextBundle()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getUsedServiceCount()I
    .registers 3

    .prologue
    .line 224
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedServiceCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final getUsedSubCollectionCount()I
    .registers 3

    .prologue
    .line 234
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final getUsedTotalCount()I
    .registers 3

    .prologue
    .line 214
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected initialize()V
    .registers 1

    .prologue
    .line 49
    return-void
.end method

.method protected final isRunning()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getUsedTotalCount()I

    move-result v1

    if-lt v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextComponent;->mContextObserver:Lcom/samsung/android/contextaware/manager/ContextObserverManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextObserverManager;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 412
    return-void
.end method

.method protected notifyFaultDetectionResult()V
    .registers 1

    .prologue
    .line 199
    return-void
.end method

.method protected notifyInitContext()V
    .registers 3

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getInitContextBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 297
    .local v0, "contextBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_d

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->notifyObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 300
    :cond_d
    return-void
.end method

.method public final notifyObserver()V
    .registers 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->checkNotifyCondition()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->getContextBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->notifyObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 144
    :cond_15
    return-void
.end method

.method public pause()V
    .registers 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->disable()V

    .line 243
    return-void
.end method

.method protected registerApPowerObserver()V
    .registers 1

    .prologue
    .line 185
    return-void
.end method

.method public final registerCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextComponent;->mContextObserver:Lcom/samsung/android/contextaware/manager/ContextObserverManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/manager/ContextObserverManager;->registerCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    .line 369
    return-void
.end method

.method public final registerObserver(Lcom/samsung/android/contextaware/manager/IContextObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/IContextObserver;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextComponent;->mContextObserver:Lcom/samsung/android/contextaware/manager/ContextObserverManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/manager/ContextObserverManager;->registerObserver(Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    .line 118
    return-void
.end method

.method protected reset()V
    .registers 1

    .prologue
    .line 256
    return-void
.end method

.method public resume()V
    .registers 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->enable()V

    .line 250
    return-void
.end method

.method protected final setProperty(ILjava/lang/Object;)Z
    .registers 4
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 323
    .local p2, "value":Ljava/lang/Object;, "TE;"
    if-nez p2, :cond_a

    .line 324
    const-string/jumbo v0, "value is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 325
    const/4 v0, 0x0

    .line 328
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->setPropertyValue(ILjava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method public setPropertyValue(ILjava/lang/Object;)Z
    .registers 4
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 341
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    return v0
.end method

.method public abstract start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
.end method

.method public abstract stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
.end method

.method protected terminate()V
    .registers 1

    .prologue
    .line 56
    return-void
.end method

.method protected unregisterApPowerObserver()V
    .registers 1

    .prologue
    .line 192
    return-void
.end method

.method public final unregisterCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextComponent;->mContextObserver:Lcom/samsung/android/contextaware/manager/ContextObserverManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/manager/ContextObserverManager;->unregisterCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    .line 382
    return-void
.end method

.method public final unregisterObserver(Lcom/samsung/android/contextaware/manager/IContextObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/IContextObserver;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextComponent;->mContextObserver:Lcom/samsung/android/contextaware/manager/ContextObserverManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/manager/ContextObserverManager;->unregisterObserver(Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    .line 130
    return-void
.end method

.method public updateApPowerStatusForPreparedCollection()V
    .registers 1

    .prologue
    .line 349
    return-void
.end method
