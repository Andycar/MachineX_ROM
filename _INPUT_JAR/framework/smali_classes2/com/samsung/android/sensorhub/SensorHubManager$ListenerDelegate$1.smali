.class Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;-><init>(Lcom/samsung/android/sensorhub/SensorHubManager;Lcom/samsung/android/sensorhub/SensorHubEventListener;Lcom/samsung/android/sensorhub/SensorHub;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/sensorhub/SensorHubManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/sensorhub/SensorHubManager;)V
    .registers 4
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate$1;->val$this$0:Lcom/samsung/android/sensorhub/SensorHubManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 236
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sensorhub/SensorHubEvent;

    .line 237
    .local v0, "t":Lcom/samsung/android/sensorhub/SensorHubEvent;
    iget-object v1, p0, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;

    # getter for: Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Lcom/samsung/android/sensorhub/SensorHubEventListener;
    invoke-static {v1}, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->access$100(Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;)Lcom/samsung/android/sensorhub/SensorHubEventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sensorhub/SensorHubEventListener;->onGetSensorHubData(Lcom/samsung/android/sensorhub/SensorHubEvent;)V

    .line 238
    # getter for: Lcom/samsung/android/sensorhub/SensorHubManager;->sPool:Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;
    invoke-static {}, Lcom/samsung/android/sensorhub/SensorHubManager;->access$200()Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;->returnToPool(Lcom/samsung/android/sensorhub/SensorHubEvent;)V

    .line 239
    return-void
.end method
