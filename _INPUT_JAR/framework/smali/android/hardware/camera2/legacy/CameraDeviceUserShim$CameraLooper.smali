.class Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;
.super Ljava/lang/Object;
.source "CameraDeviceUserShim.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraLooper"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field private final mCameraId:I

.field private volatile mInitErrors:I

.field private mLooper:Landroid/os/Looper;

.field private final mStartDone:Landroid/os/ConditionVariable;

.field private final mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "cameraId"    # I

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {}, Landroid/hardware/Camera;->openUninitialized()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCamera:Landroid/hardware/Camera;

    .line 111
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mStartDone:Landroid/os/ConditionVariable;

    .line 124
    iput p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCameraId:I

    .line 126
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mThread:Ljava/lang/Thread;

    .line 127
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 128
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 152
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mLooper:Landroid/os/Looper;

    if-nez v1, :cond_5

    .line 164
    :goto_4
    return-void

    .line 156
    :cond_5
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 158
    :try_start_a
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_13

    .line 163
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mLooper:Landroid/os/Looper;

    goto :goto_4

    .line 159
    :catch_13
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getCamera()Landroid/hardware/Camera;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public run()V
    .registers 3

    .prologue
    .line 137
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 141
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mLooper:Landroid/os/Looper;

    .line 142
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCamera:Landroid/hardware/Camera;

    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCameraId:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->cameraInitUnspecified(I)I

    move-result v0

    # invokes: Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->translateErrorsFromCamera1(I)I
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->access$000(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mInitErrors:I

    .line 143
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mStartDone:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 144
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 145
    return-void
.end method

.method public waitForOpen(I)I
    .registers 6
    .param p1, "timeoutMs"    # I

    .prologue
    .line 177
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mStartDone:Landroid/os/ConditionVariable;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    if-nez v1, :cond_26

    .line 178
    const-string v1, "CameraDeviceUserShim"

    const-string/jumbo v2, "waitForOpen - Camera failed to open after timeout of 5000 ms"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :try_start_11
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_16} :catch_1d

    .line 186
    :goto_16
    new-instance v1, Landroid/hardware/camera2/utils/CameraRuntimeException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    throw v1

    .line 182
    :catch_1d
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CameraDeviceUserShim"

    const-string v2, "connectBinderShim - Failed to release camera after timeout "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 189
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_26
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->mInitErrors:I

    return v1
.end method
