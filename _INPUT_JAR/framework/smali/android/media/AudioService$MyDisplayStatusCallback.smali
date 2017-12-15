.class Landroid/media/AudioService$MyDisplayStatusCallback;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDisplayStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .registers 2

    .prologue
    .line 6603
    iput-object p1, p0, Landroid/media/AudioService$MyDisplayStatusCallback;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/media/AudioService;
    .param p2, "x1"    # Landroid/media/AudioService$1;

    .prologue
    .line 6603
    invoke-direct {p0, p1}, Landroid/media/AudioService$MyDisplayStatusCallback;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 5
    .param p1, "status"    # I

    .prologue
    .line 6605
    iget-object v0, p0, Landroid/media/AudioService$MyDisplayStatusCallback;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;
    invoke-static {v0}, Landroid/media/AudioService;->access$7500(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 6606
    iget-object v0, p0, Landroid/media/AudioService$MyDisplayStatusCallback;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;
    invoke-static {v0}, Landroid/media/AudioService;->access$7500(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    monitor-enter v1

    .line 6607
    :try_start_f
    iget-object v2, p0, Landroid/media/AudioService$MyDisplayStatusCallback;->this$0:Landroid/media/AudioService;

    const/4 v0, -0x1

    if-eq p1, v0, :cond_37

    const/4 v0, 0x1

    :goto_15
    # setter for: Landroid/media/AudioService;->mHdmiCecSink:Z
    invoke-static {v2, v0}, Landroid/media/AudioService;->access$10002(Landroid/media/AudioService;Z)Z

    .line 6609
    iget-object v0, p0, Landroid/media/AudioService$MyDisplayStatusCallback;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->isPlatformTelevision()Z
    invoke-static {v0}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/media/AudioService$MyDisplayStatusCallback;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mHdmiCecSink:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$10000(Landroid/media/AudioService;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 6610
    iget-object v0, p0, Landroid/media/AudioService$MyDisplayStatusCallback;->this$0:Landroid/media/AudioService;

    iget v2, v0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 6612
    :cond_30
    iget-object v0, p0, Landroid/media/AudioService$MyDisplayStatusCallback;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->checkAllFixedVolumeDevices()V
    invoke-static {v0}, Landroid/media/AudioService;->access$10100(Landroid/media/AudioService;)V

    .line 6613
    monitor-exit v1

    .line 6615
    :cond_36
    return-void

    .line 6607
    :cond_37
    const/4 v0, 0x0

    goto :goto_15

    .line 6613
    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_f .. :try_end_3b} :catchall_39

    throw v0
.end method
