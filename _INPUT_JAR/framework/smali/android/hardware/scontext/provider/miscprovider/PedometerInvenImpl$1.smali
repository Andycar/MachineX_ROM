.class Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;
.super Ljava/lang/Object;
.source "PedometerInvenImpl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)V
    .registers 2

    .prologue
    .line 417
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 422
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 427
    return-void
.end method
