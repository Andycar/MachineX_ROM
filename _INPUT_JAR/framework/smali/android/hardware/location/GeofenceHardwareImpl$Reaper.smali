.class Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
.super Ljava/lang/Object;
.source "GeofenceHardwareImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reaper"
.end annotation


# instance fields
.field private mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

.field private mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

.field private mMonitoringType:I

.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareCallback;I)V
    .registers 4
    .param p2, "c"    # Landroid/hardware/location/IGeofenceHardwareCallback;
    .param p3, "monitoringType"    # I

    .prologue
    .line 777
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    iput-object p2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 779
    iput p3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    .line 780
    return-void
.end method

.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareMonitorCallback;I)V
    .registers 4
    .param p2, "c"    # Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .param p3, "monitoringType"    # I

    .prologue
    .line 782
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput-object p2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 784
    iput p3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    .line 785
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    .prologue
    .line 790
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    if-eqz v2, :cond_33

    .line 791
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->access$1000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 792
    .local v0, "m":Landroid/os/Message;
    iget v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 793
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mGeofenceHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->access$1000(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 799
    .end local v0    # "m":Landroid/os/Message;
    :cond_1e
    :goto_1e
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->access$1200(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 800
    .local v1, "reaperMessage":Landroid/os/Message;
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mReaperHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->access$1200(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 801
    return-void

    .line 794
    .end local v1    # "reaperMessage":Landroid/os/Message;
    :cond_33
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    if-eqz v2, :cond_1e

    .line 795
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->access$1100(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 796
    .restart local v0    # "m":Landroid/os/Message;
    iget v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 797
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mCallbacksHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->access$1100(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1e
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 814
    if-nez p1, :cond_6

    move v1, v2

    .line 818
    :cond_5
    :goto_5
    return v1

    .line 815
    :cond_6
    if-eq p1, p0, :cond_5

    move-object v0, p1

    .line 817
    check-cast v0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    .line 818
    .local v0, "rhs":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    if-ne v3, v4, :cond_1d

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    if-ne v3, v4, :cond_1d

    iget v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    iget v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    if-eq v3, v4, :cond_5

    :cond_1d
    move v1, v2

    goto :goto_5
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 805
    const/16 v0, 0x11

    .line 806
    .local v0, "result":I
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_d
    add-int/lit16 v0, v1, 0x20f

    .line 807
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    if-eqz v3, :cond_1b

    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1b
    add-int v0, v1, v2

    .line 808
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    add-int v0, v1, v2

    .line 809
    return v0

    :cond_24
    move v1, v2

    .line 806
    goto :goto_d
.end method
