.class Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider$1;
.super Ljava/lang/Object;
.source "SensorHubProvider.java"

# interfaces
.implements Lcom/samsung/android/sensorhub/SensorHubEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;)V
    .registers 2

    .prologue
    .line 154
    iput-object p1, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider$1;->this$0:Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSensorHubData(Lcom/samsung/android/sensorhub/SensorHubEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/samsung/android/sensorhub/SensorHubEvent;

    .prologue
    .line 158
    iget-object v2, p1, Lcom/samsung/android/sensorhub/SensorHubEvent;->sensorhub:Lcom/samsung/android/sensorhub/SensorHub;

    invoke-virtual {v2}, Lcom/samsung/android/sensorhub/SensorHub;->getType()I

    move-result v1

    .line 159
    .local v1, "type":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v0, "context":Landroid/os/Bundle;
    packed-switch v1, :pswitch_data_22

    .line 166
    :goto_e
    return-void

    .line 162
    :pswitch_f
    const-string v2, "Values"

    iget-object v3, p1, Lcom/samsung/android/sensorhub/SensorHubEvent;->values:[F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 163
    iget-object v2, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider$1;->this$0:Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;

    # getter for: Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v2}, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->access$000(Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v2

    const/4 v3, 0x7

    invoke-interface {v2, v3, v0}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_e

    .line 160
    nop

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_f
    .end packed-switch
.end method
