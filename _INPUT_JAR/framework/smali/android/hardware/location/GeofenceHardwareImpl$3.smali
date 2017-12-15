.class Landroid/hardware/location/GeofenceHardwareImpl$3;
.super Landroid/os/Handler;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .registers 2

    .prologue
    .line 691
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 699
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_6e

    .line 729
    :cond_5
    :goto_5
    return-void

    .line 701
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 702
    .local v1, "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 703
    .local v3, "monitoringType":I
    new-instance v4, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {v4, v5, v1, v3}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareCallback;I)V

    .line 704
    .local v4, "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->access$900(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 705
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->access$900(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    invoke-interface {v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 708
    .local v0, "b":Landroid/os/IBinder;
    const/4 v5, 0x0

    :try_start_2d
    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_5

    .line 709
    :catch_31
    move-exception v5

    goto :goto_5

    .line 713
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "callback":Landroid/hardware/location/IGeofenceHardwareCallback;
    .end local v3    # "monitoringType":I
    .end local v4    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    :pswitch_33
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 714
    .local v2, "monitorCallback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 716
    .restart local v3    # "monitoringType":I
    new-instance v4, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {v4, v5, v2, v3}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareMonitorCallback;I)V

    .line 717
    .restart local v4    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->access$900(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 718
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->access$900(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    invoke-interface {v2}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 721
    .restart local v0    # "b":Landroid/os/IBinder;
    const/4 v5, 0x0

    :try_start_5a
    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_5

    .line 722
    :catch_5e
    move-exception v5

    goto :goto_5

    .line 726
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "monitorCallback":Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .end local v3    # "monitoringType":I
    .end local v4    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    :pswitch_60
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    .line 727
    .restart local v4    # "r":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    iget-object v5, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    # getter for: Landroid/hardware/location/GeofenceHardwareImpl;->mReapers:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/hardware/location/GeofenceHardwareImpl;->access$900(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 699
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_33
        :pswitch_60
    .end packed-switch
.end method
