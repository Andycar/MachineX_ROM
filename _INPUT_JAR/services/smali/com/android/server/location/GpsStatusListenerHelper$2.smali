.class Lcom/android/server/location/GpsStatusListenerHelper$2;
.super Lcom/android/server/location/GpsStatusListenerHelper$Operation;
.source "GpsStatusListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsStatusListenerHelper;->onStatusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsStatusListenerHelper;

.field final synthetic val$isNavigating:Z


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsStatusListenerHelper;Z)V
    .registers 4

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/server/location/GpsStatusListenerHelper$2;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    iput-boolean p2, p0, Lcom/android/server/location/GpsStatusListenerHelper$2;->val$isNavigating:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GpsStatusListenerHelper$Operation;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;Lcom/android/server/location/GpsStatusListenerHelper$1;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsStatusListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/server/location/GpsStatusListenerHelper$2;->val$isNavigating:Z

    if-eqz v0, :cond_8

    .line 46
    invoke-interface {p1}, Landroid/location/IGpsStatusListener;->onGpsStarted()V

    .line 50
    :goto_7
    return-void

    .line 48
    :cond_8
    invoke-interface {p1}, Landroid/location/IGpsStatusListener;->onGpsStopped()V

    goto :goto_7
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
    .line 42
    check-cast p1, Landroid/location/IGpsStatusListener;

    .end local p1    # "x0":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsStatusListenerHelper$2;->execute(Landroid/location/IGpsStatusListener;)V

    return-void
.end method
