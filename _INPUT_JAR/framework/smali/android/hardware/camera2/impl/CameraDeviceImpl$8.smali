.class Landroid/hardware/camera2/impl/CameraDeviceImpl$8;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/hardware/camera2/utils/CameraRuntimeException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field final synthetic val$code:I

.field final synthetic val$isError:Z


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ZI)V
    .registers 4

    .prologue
    .line 297
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iput-boolean p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->val$isError:Z

    iput p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->val$isError:Z

    if-eqz v0, :cond_12

    .line 301
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$200(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->val$code:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    .line 305
    :goto_11
    return-void

    .line 303
    :cond_12
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$200(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onDisconnected(Landroid/hardware/camera2/CameraDevice;)V

    goto :goto_11
.end method
