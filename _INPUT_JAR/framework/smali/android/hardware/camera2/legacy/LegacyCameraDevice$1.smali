.class Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/LegacyCameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBusy()V
    .registers 3

    .prologue
    .line 170
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mIdle:Landroid/os/ConditionVariable;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$200(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 172
    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->DEBUG:Z
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 173
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$100(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onBusy called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_1b
    return-void
.end method

.method public onCaptureResult(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/RequestHolder;)V
    .registers 6
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;

    .prologue
    .line 200
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    # invokes: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getExtrasFromRequest(Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;
    invoke-static {v1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$300(Landroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;

    move-result-object v0

    .line 202
    .local v0, "extras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$500(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$4;

    invoke-direct {v2, p0, p2, p1, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$4;-><init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/legacy/RequestHolder;J)V
    .registers 12
    .param p1, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "timestamp"    # J

    .prologue
    .line 179
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    # invokes: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getExtrasFromRequest(Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;
    invoke-static {v0, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$300(Landroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;

    move-result-object v3

    .line 181
    .local v3, "extras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$500(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$3;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$3;-><init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CaptureResultExtras;J)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    return-void
.end method

.method public onConfiguring()V
    .registers 3

    .prologue
    .line 139
    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->DEBUG:Z
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$000()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 140
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$100(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "doing onConfiguring callback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_11
    return-void
.end method

.method public onError(ILandroid/hardware/camera2/legacy/RequestHolder;)V
    .registers 7
    .param p1, "errorCode"    # I
    .param p2, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;

    .prologue
    .line 99
    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->DEBUG:Z
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$000()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 100
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$100(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError called, errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_23
    packed-switch p1, :pswitch_data_58

    .line 118
    :cond_26
    :goto_26
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    # invokes: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->getExtrasFromRequest(Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;
    invoke-static {v1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$300(Landroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;

    move-result-object v0

    .line 119
    .local v0, "extras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$500(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;

    invoke-direct {v2, p0, p2, p1, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;-><init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;Landroid/hardware/camera2/legacy/RequestHolder;ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void

    .line 110
    .end local v0    # "extras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :pswitch_3b
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mIdle:Landroid/os/ConditionVariable;
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$200(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 112
    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->DEBUG:Z
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$000()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 113
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$100(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onError - opening idle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 102
    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method public onIdle()V
    .registers 3

    .prologue
    .line 146
    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->DEBUG:Z
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$000()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 147
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$100(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onIdle called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_12
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mIdle:Landroid/os/ConditionVariable;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$200(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 152
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mResultHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$500(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$2;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$2;-><init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method
