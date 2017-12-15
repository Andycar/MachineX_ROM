.class public Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;
.super Lcom/samsung/android/contextaware/aggregator/Aggregator;
.source "MovingAggregator.java"


# static fields
.field public static final PEDESTRIAN_MOVE:I = 0x0

.field public static final PEDESTRIAN_STOP:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field public static final VEHICLE_MOVE:I = 0x2

.field public static final VEHICLE_STOP:I = 0x3


# instance fields
.field private mOldMode:I

.field private mOldMove:I

.field private mOldTransMethod:I


# direct methods
.method public constructor <init>(ILjava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 10
    .param p1, "version"    # I
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    const/4 v2, 0x0

    .line 74
    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/contextaware/aggregator/Aggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 75
    return-void
.end method

.method private notifyMovingContext(III)V
    .registers 7
    .param p1, "move"    # I
    .param p2, "transMethod"    # I
    .param p3, "mode"    # I

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "names":[Ljava/lang/String;
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 218
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 219
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 221
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->notifyObserver()V

    .line 223
    iput p1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMove:I

    .line 224
    iput p2, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    .line 225
    iput p3, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    .line 226
    return-void
.end method

.method private updateMovingMode(I)I
    .registers 4
    .param p1, "transMethod"    # I

    .prologue
    .line 177
    const/4 v0, -0x1

    .line 179
    .local v0, "movingMode":I
    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    packed-switch v1, :pswitch_data_14

    .line 196
    const/4 v0, -0x1

    .line 200
    :goto_7
    return v0

    .line 182
    :pswitch_8
    const/4 v1, 0x1

    if-ne p1, v1, :cond_d

    .line 183
    const/4 v0, 0x6

    goto :goto_7

    .line 185
    :cond_d
    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    .line 187
    goto :goto_7

    .line 193
    :pswitch_10
    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    .line 194
    goto :goto_7

    .line 179
    nop

    :pswitch_data_14
    .packed-switch -0x1
        :pswitch_8
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method private updatePedestrianStatus(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 123
    const-string v3, "PedestrianStatus"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 124
    .local v1, "pedestrianStatus":I
    const/4 v0, 0x0

    .line 125
    .local v0, "move":I
    const/4 v2, 0x0

    .line 127
    .local v2, "transMethod":I
    packed-switch v1, :pswitch_data_24

    .line 149
    const/4 v0, -0x1

    .line 150
    const/4 v2, -0x1

    .line 154
    :goto_d
    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->updateMovingMode(I)I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->notifyMovingContext(III)V

    .line 155
    return-void

    .line 129
    :pswitch_15
    const/4 v0, -0x1

    .line 130
    const/4 v2, -0x1

    .line 131
    goto :goto_d

    .line 133
    :pswitch_18
    const/4 v0, 0x1

    .line 134
    const/4 v2, 0x0

    .line 135
    goto :goto_d

    .line 137
    :pswitch_1b
    const/4 v0, 0x0

    .line 138
    const/4 v2, 0x0

    .line 139
    goto :goto_d

    .line 141
    :pswitch_1e
    const/4 v0, 0x1

    .line 142
    const/4 v2, 0x1

    .line 143
    goto :goto_d

    .line 145
    :pswitch_21
    const/4 v0, 0x0

    .line 146
    const/4 v2, 0x1

    .line 147
    goto :goto_d

    .line 127
    :pswitch_data_24
    .packed-switch -0x1
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method

.method private updatePedometerData(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 164
    const-string v0, "StepStatus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    .line 165
    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMove:I

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->updateMovingMode(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->notifyMovingContext(III)V

    .line 167
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 100
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 101
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->clear()V

    .line 103
    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMove:I

    .line 104
    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    .line 105
    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "names":[Ljava/lang/String;
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMove:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 110
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 111
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 113
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->notifyObserver()V

    .line 114
    return-void
.end method

.method public final disable()V
    .registers 1

    .prologue
    .line 294
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 295
    return-void
.end method

.method public final enable()V
    .registers 1

    .prologue
    .line 289
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 290
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 235
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_MOVING:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 267
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "move"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "transMethod"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mode"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .registers 1

    .prologue
    .line 246
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .registers 1

    .prologue
    .line 256
    return-object p0
.end method

.method protected final initializeAggregator()V
    .registers 4

    .prologue
    .line 85
    sget-object v1, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;

    .line 87
    .local v0, "locatoinAggregator":Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;
    if-eqz v0, :cond_18

    .line 88
    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/builtin/LocationAggregator;->setPropertyValue(ILjava/lang/Object;)Z

    .line 91
    :cond_18
    return-void
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 279
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 280
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->updatePedestrianStatus(Landroid/os/Bundle;)V

    .line 285
    :cond_f
    :goto_f
    return-void

    .line 281
    :cond_10
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 283
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/aggregator/builtin/MovingAggregator;->updatePedometerData(Landroid/os/Bundle;)V

    goto :goto_f
.end method
