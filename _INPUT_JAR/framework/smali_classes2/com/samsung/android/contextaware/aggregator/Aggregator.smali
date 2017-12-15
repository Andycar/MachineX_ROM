.class public abstract Lcom/samsung/android/contextaware/aggregator/Aggregator;
.super Lcom/samsung/android/contextaware/manager/ContextProvider;
.source "Aggregator.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/IContextObserver;
.implements Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;


# instance fields
.field private mAggregatorFaultDetectionResult:Z

.field private final mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 6
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p5, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    .local p4, "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/samsung/android/contextaware/manager/ContextProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 69
    iput-object p4, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    return-void
.end method


# virtual methods
.method protected final checkFaultDetectionResult()Z
    .registers 2

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    return v0
.end method

.method protected final clearExtension()V
    .registers 4

    .prologue
    .line 158
    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isRunning()Z

    move-result v2

    if-nez v2, :cond_7

    .line 169
    :cond_6
    return-void

    .line 162
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 163
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    .line 165
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_d

    .line 166
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->clear()V

    goto :goto_d
.end method

.method protected final disableExtension()V
    .registers 4

    .prologue
    .line 264
    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isDisable()Z

    move-result v2

    if-nez v2, :cond_7

    .line 275
    :cond_6
    return-void

    .line 268
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 269
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    .line 271
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_d

    .line 272
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->disable()V

    goto :goto_d
.end method

.method protected final disableForStop(Z)V
    .registers 2
    .param p1, "restore"    # Z

    .prologue
    .line 462
    return-void
.end method

.method protected final enableExtension()V
    .registers 4

    .prologue
    .line 246
    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isEnable()Z

    move-result v2

    if-nez v2, :cond_7

    .line 258
    :cond_6
    return-void

    .line 250
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 251
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 252
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    .line 253
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_d

    .line 254
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 255
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->enable()V

    goto :goto_d
.end method

.method protected final enableForStart(Z)V
    .registers 2
    .param p1, "restore"    # Z

    .prologue
    .line 451
    return-void
.end method

.method protected final getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .prologue
    .line 286
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_NOT_SUPPORT_CMD:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 377
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->checkFaultDetectionResult()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 378
    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->SUCCESS:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 389
    :goto_12
    return-object v0

    .line 382
    :cond_13
    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SUB_COLLECTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_12
.end method

.method protected final getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;
    .registers 6
    .param p1, "collectionName"    # Ljava/lang/String;

    .prologue
    .line 327
    const/4 v2, 0x0

    .line 329
    .local v2, "subCollectionObj":Lcom/samsung/android/contextaware/manager/ContextComponent;
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 330
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 331
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    .line 332
    .local v1, "obj":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_7

    .line 335
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 336
    move-object v2, v1

    .line 341
    .end local v1    # "obj":Lcom/samsung/android/contextaware/manager/ContextComponent;
    :cond_20
    return-object v2
.end method

.method protected final getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method protected final initialize()V
    .registers 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->initializeAggregator()V

    .line 92
    return-void
.end method

.method protected initializeAggregator()V
    .registers 1

    .prologue
    .line 76
    return-void
.end method

.method protected final initializeFaultDetectionResult()V
    .registers 2

    .prologue
    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    .line 240
    return-void
.end method

.method protected final notifyApStatus()V
    .registers 5

    .prologue
    .line 304
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 305
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    .line 307
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_6

    .line 310
    instance-of v2, v1, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;

    if-eqz v2, :cond_22

    move-object v2, v1

    .line 311
    check-cast v2, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;

    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getAPStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->updateAPStatus(I)V

    .line 313
    :cond_22
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->updateApPowerStatusForPreparedCollection()V

    goto :goto_6

    .line 315
    .end local v1    # "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    :cond_26
    const/4 v2, 0x0

    invoke-super {p0, v2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->setAPStatus(I)V

    .line 316
    return-void
.end method

.method public pause()V
    .registers 4

    .prologue
    .line 206
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 207
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    .line 209
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_6

    .line 210
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->pause()V

    goto :goto_6

    .line 214
    .end local v1    # "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    :cond_18
    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->pause()V

    .line 215
    return-void
.end method

.method protected final registerObserver()V
    .registers 4

    .prologue
    .line 175
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 176
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 177
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    .line 178
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_6

    .line 179
    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->registerObserver(Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    .line 180
    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->registerCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    goto :goto_6

    .line 183
    .end local v1    # "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    :cond_1b
    return-void
.end method

.method public resume()V
    .registers 4

    .prologue
    .line 224
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 225
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 226
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    .line 227
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_6

    .line 228
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->resume()V

    goto :goto_6

    .line 232
    .end local v1    # "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    :cond_18
    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->resume()V

    .line 233
    return-void
.end method

.method public final start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->initializeFaultDetectionResult()V

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->registerObserver()V

    .line 117
    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 118
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 119
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    .line 121
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_12

    .line 122
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    goto :goto_12

    .line 127
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    .end local v1    # "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    :cond_24
    invoke-super {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 128
    return-void
.end method

.method public final stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->initializeFaultDetectionResult()V

    .line 141
    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isDisable()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 142
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 143
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    .line 145
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_f

    .line 146
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    goto :goto_f

    .line 151
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    .end local v1    # "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    :cond_21
    invoke-super {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 152
    return-void
.end method

.method protected final terminate()V
    .registers 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->unregisterObserver()V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->terminateAggregator()V

    .line 103
    return-void
.end method

.method protected terminateAggregator()V
    .registers 1

    .prologue
    .line 82
    return-void
.end method

.method protected final unregisterObserver()V
    .registers 4

    .prologue
    .line 189
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 190
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextComponent;

    .line 192
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_6

    .line 193
    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->unregisterObserver(Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    .line 194
    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;->unregisterCmdProcessResultObserver(Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;)V

    goto :goto_6

    .line 197
    .end local v1    # "next":Lcom/samsung/android/contextaware/manager/ContextComponent;
    :cond_1b
    return-void
.end method

.method protected updateApSleep()V
    .registers 1

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->notifyApStatus()V

    .line 353
    return-void
.end method

.method protected updateApWakeup()V
    .registers 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->notifyApStatus()V

    .line 364
    return-void
.end method

.method public final updateCmdProcessResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 413
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 431
    :cond_c
    :goto_c
    return-void

    .line 417
    :cond_d
    const-string v0, "CheckResult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : SubCollection("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    const-string v2, "Service"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") process result is failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public abstract updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
.end method
