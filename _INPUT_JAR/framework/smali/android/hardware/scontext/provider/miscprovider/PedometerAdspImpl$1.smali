.class Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$1;
.super Ljava/lang/Object;
.source "PedometerAdspImpl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;)V
    .registers 2

    .prologue
    .line 411
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$1;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 416
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 421
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$1;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;

    # invokes: Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->parseEvent(Landroid/hardware/SensorEvent;)V
    invoke-static {v0, p1}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->access$000(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;Landroid/hardware/SensorEvent;)V

    .line 422
    return-void
.end method
