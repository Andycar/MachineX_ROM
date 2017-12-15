.class Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;
.super Ljava/lang/Object;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sensorhub/SensorHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorHubEventPool"
.end annotation


# instance fields
.field private mNumItemsInPool:I

.field private final mPool:[Lcom/samsung/android/sensorhub/SensorHubEvent;

.field private final mPoolSize:I

.field final synthetic this$0:Lcom/samsung/android/sensorhub/SensorHubManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sensorhub/SensorHubManager;I)V
    .registers 4
    .param p2, "poolSize"    # I

    .prologue
    .line 87
    iput-object p1, p0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->this$0:Lcom/samsung/android/sensorhub/SensorHubManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p2, p0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->mPoolSize:I

    .line 89
    iput p2, p0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->mNumItemsInPool:I

    .line 90
    new-array v0, p2, [Lcom/samsung/android/sensorhub/SensorHubEvent;

    iput-object v0, p0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->mPool:[Lcom/samsung/android/sensorhub/SensorHubEvent;

    .line 91
    return-void
.end method

.method private createSensorHubEvent()Lcom/samsung/android/sensorhub/SensorHubEvent;
    .registers 3

    .prologue
    .line 84
    new-instance v0, Lcom/samsung/android/sensorhub/SensorHubEvent;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lcom/samsung/android/sensorhub/SensorHubEvent;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method getFromPool()Lcom/samsung/android/sensorhub/SensorHubEvent;
    .registers 5

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "t":Lcom/samsung/android/sensorhub/SensorHubEvent;
    monitor-enter p0

    .line 96
    :try_start_2
    iget v2, p0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->mNumItemsInPool:I

    if-lez v2, :cond_1b

    .line 97
    iget v2, p0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->mPoolSize:I

    iget v3, p0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->mNumItemsInPool:I

    sub-int v0, v2, v3

    .line 98
    .local v0, "index":I
    iget-object v2, p0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->mPool:[Lcom/samsung/android/sensorhub/SensorHubEvent;

    aget-object v1, v2, v0

    .line 99
    iget-object v2, p0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->mPool:[Lcom/samsung/android/sensorhub/SensorHubEvent;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 100
    iget v2, p0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->mNumItemsInPool:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->mNumItemsInPool:I

    .line 102
    .end local v0    # "index":I
    :cond_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_23

    .line 103
    if-nez v1, :cond_22

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->createSensorHubEvent()Lcom/samsung/android/sensorhub/SensorHubEvent;

    move-result-object v1

    .line 106
    :cond_22
    return-object v1

    .line 102
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v2
.end method

.method returnToPool(Lcom/samsung/android/sensorhub/SensorHubEvent;)V
    .registers 5
    .param p1, "t"    # Lcom/samsung/android/sensorhub/SensorHubEvent;

    .prologue
    .line 110
    monitor-enter p0

    .line 111
    :try_start_1
    iget v1, p0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->mNumItemsInPool:I

    iget v2, p0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->mPoolSize:I

    if-ge v1, v2, :cond_17

    .line 112
    iget v1, p0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->mNumItemsInPool:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->mNumItemsInPool:I

    .line 113
    iget v1, p0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->mPoolSize:I

    iget v2, p0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->mNumItemsInPool:I

    sub-int v0, v1, v2

    .line 114
    .local v0, "index":I
    iget-object v1, p0, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->mPool:[Lcom/samsung/android/sensorhub/SensorHubEvent;

    aput-object p1, v1, v0

    .line 116
    .end local v0    # "index":I
    :cond_17
    monitor-exit p0

    .line 117
    return-void

    .line 116
    :catchall_19
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v1
.end method
