.class Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$4;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->onCaptureResult(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/RequestHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

.field final synthetic val$extras:Landroid/hardware/camera2/impl/CaptureResultExtras;

.field final synthetic val$holder:Landroid/hardware/camera2/legacy/RequestHolder;

.field final synthetic val$result:Landroid/hardware/camera2/impl/CameraMetadataNative;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V
    .registers 5

    .prologue
    .line 202
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$4;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    iput-object p2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$4;->val$holder:Landroid/hardware/camera2/legacy/RequestHolder;

    iput-object p3, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$4;->val$result:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iput-object p4, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$4;->val$extras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 205
    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->DEBUG:Z
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 206
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$4;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    iget-object v1, v1, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$100(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doing onCaptureResult callback for request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$4;->val$holder:Landroid/hardware/camera2/legacy/RequestHolder;

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequestId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$4;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    iget-object v1, v1, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$400(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$4;->val$result:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v3, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$4;->val$extras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    invoke-interface {v1, v2, v3}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_39} :catch_3a

    .line 215
    return-void

    .line 211
    :catch_3a
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Received remote exception during onCameraError callback: "

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
