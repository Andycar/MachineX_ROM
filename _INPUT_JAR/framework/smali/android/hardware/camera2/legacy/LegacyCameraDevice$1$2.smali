.class Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$2;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->onIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$2;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 155
    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->DEBUG:Z
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$000()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 156
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$2;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    iget-object v1, v1, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$100(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "doing onIdle callback."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$2;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    iget-object v1, v1, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    # getter for: Landroid/hardware/camera2/legacy/LegacyCameraDevice;->mDeviceCallbacks:Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->access$400(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onDeviceIdle()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_1f

    .line 164
    return-void

    .line 160
    :catch_1f
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Received remote exception during onCameraIdle callback: "

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
