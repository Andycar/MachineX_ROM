.class Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;
.super Landroid/location/IGpsMeasurementsListener$Stub;
.source "GpsMeasurementListenerTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsMeasurementListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/GpsMeasurementListenerTransport;


# direct methods
.method private constructor <init>(Landroid/location/GpsMeasurementListenerTransport;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;->this$0:Landroid/location/GpsMeasurementListenerTransport;

    invoke-direct {p0}, Landroid/location/IGpsMeasurementsListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/GpsMeasurementListenerTransport;Landroid/location/GpsMeasurementListenerTransport$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/location/GpsMeasurementListenerTransport;
    .param p2, "x1"    # Landroid/location/GpsMeasurementListenerTransport$1;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;-><init>(Landroid/location/GpsMeasurementListenerTransport;)V

    return-void
.end method


# virtual methods
.method public onGpsMeasurementsReceived(Landroid/location/GpsMeasurementsEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/location/GpsMeasurementsEvent;

    .prologue
    .line 55
    new-instance v0, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport$1;

    invoke-direct {v0, p0, p1}, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport$1;-><init>(Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;Landroid/location/GpsMeasurementsEvent;)V

    .line 63
    .local v0, "operation":Landroid/location/LocalListenerHelper$ListenerOperation;, "Landroid/location/LocalListenerHelper$ListenerOperation<Landroid/location/GpsMeasurementsEvent$Listener;>;"
    iget-object v1, p0, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;->this$0:Landroid/location/GpsMeasurementListenerTransport;

    invoke-virtual {v1, v0}, Landroid/location/GpsMeasurementListenerTransport;->foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V

    .line 64
    return-void
.end method
