.class Lcom/android/server/location/GpsMeasurementsProvider$1;
.super Ljava/lang/Object;
.source "GpsMeasurementsProvider.java"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsMeasurementsProvider;->onMeasurementsAvailable(Landroid/location/GpsMeasurementsEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
        "<",
        "Landroid/location/IGpsMeasurementsListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsMeasurementsProvider;

.field final synthetic val$event:Landroid/location/GpsMeasurementsEvent;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsMeasurementsProvider;Landroid/location/GpsMeasurementsEvent;)V
    .registers 3

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/server/location/GpsMeasurementsProvider$1;->this$0:Lcom/android/server/location/GpsMeasurementsProvider;

    iput-object p2, p0, Lcom/android/server/location/GpsMeasurementsProvider$1;->val$event:Landroid/location/GpsMeasurementsEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsMeasurementsListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/IGpsMeasurementsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/location/GpsMeasurementsProvider$1;->val$event:Landroid/location/GpsMeasurementsEvent;

    invoke-interface {p1, v0}, Landroid/location/IGpsMeasurementsListener;->onGpsMeasurementsReceived(Landroid/location/GpsMeasurementsEvent;)V

    .line 42
    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    check-cast p1, Landroid/location/IGpsMeasurementsListener;

    .end local p1    # "x0":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsMeasurementsProvider$1;->execute(Landroid/location/IGpsMeasurementsListener;)V

    return-void
.end method
