.class Landroid/hardware/camera2/impl/CameraDeviceImpl$5;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mClosedOnce:Z

.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .registers 3

    .prologue
    .line 167
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;->mClosedOnce:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 172
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;->mClosedOnce:Z

    if-eqz v1, :cond_c

    .line 173
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Don\'t post #onClosed more than once"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 175
    :cond_c
    const/4 v0, 0x0

    .line 176
    .local v0, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 177
    :try_start_12
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$100(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v0

    .line 178
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_2f

    .line 179
    if-eqz v0, :cond_20

    .line 180
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    .line 182
    :cond_20
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    # getter for: Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->access$200(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    .line 183
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;->mClosedOnce:Z

    .line 184
    return-void

    .line 178
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method
