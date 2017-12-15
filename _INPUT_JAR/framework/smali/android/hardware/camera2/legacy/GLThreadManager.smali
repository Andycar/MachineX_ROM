.class public Landroid/hardware/camera2/legacy/GLThreadManager;
.super Ljava/lang/Object;
.source "GLThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MSG_ALLOW_FRAMES:I = 0x5

.field private static final MSG_CLEANUP:I = 0x3

.field private static final MSG_DROP_FRAMES:I = 0x4

.field private static final MSG_NEW_CONFIGURATION:I = 0x1

.field private static final MSG_NEW_FRAME:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

.field private final mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field private final mGLHandlerCb:Landroid/os/Handler$Callback;

.field private final mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

.field private final mPrevCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

.field private final mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    const-string v0, "HAL1ShimLogging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/legacy/GLThreadManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(IILandroid/hardware/camera2/legacy/CameraDeviceState;)V
    .registers 8
    .param p1, "cameraId"    # I
    .param p2, "facing"    # I
    .param p3, "state"    # Landroid/hardware/camera2/legacy/CameraDeviceState;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    const-string v1, "GL Preview Producer"

    invoke-direct {v0, v1}, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mPrevCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    .line 71
    new-instance v0, Landroid/hardware/camera2/legacy/GLThreadManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/legacy/GLThreadManager$1;-><init>(Landroid/hardware/camera2/legacy/GLThreadManager;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerCb:Landroid/os/Handler$Callback;

    .line 139
    new-instance v0, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    invoke-direct {v0, p2}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    .line 140
    const-string v0, "CameraDeviceGLThread-%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    .line 141
    new-instance v0, Landroid/hardware/camera2/legacy/RequestHandlerThread;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerCb:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    .line 142
    iput-object p3, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    .line 143
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/GLThreadManager;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/GLThreadManager;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    return-object v0
.end method

.method static synthetic access$102(Landroid/hardware/camera2/legacy/GLThreadManager;Landroid/hardware/camera2/legacy/CaptureCollector;)Landroid/hardware/camera2/legacy/CaptureCollector;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/GLThreadManager;
    .param p1, "x1"    # Landroid/hardware/camera2/legacy/CaptureCollector;

    .prologue
    .line 34
    iput-object p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;

    return-object p1
.end method

.method static synthetic access$200(Landroid/hardware/camera2/legacy/GLThreadManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/GLThreadManager;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 34
    sget-boolean v0, Landroid/hardware/camera2/legacy/GLThreadManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/GLThreadManager;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mPrevCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/camera2/legacy/GLThreadManager;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;

    return-object v0
.end method


# virtual methods
.method public allowNewFrames()V
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    return-void
.end method

.method public getCurrentSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mTextureRenderer:Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/SurfaceTextureRenderer;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public ignoreNewFrames()V
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 245
    return-void
.end method

.method public queueNewFrame()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 188
    iget-object v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 194
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 195
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 199
    :goto_14
    return-void

    .line 197
    :cond_15
    iget-object v1, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    const-string v2, "GLThread dropping frame.  Not consuming frames quickly enough!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public quit()V
    .registers 9

    .prologue
    .line 171
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 172
    .local v1, "handler":Landroid/os/Handler;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 173
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->quitSafely()Z

    .line 175
    :try_start_13
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->join()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_19

    .line 180
    :goto_18
    return-void

    .line 176
    :catch_19
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->TAG:Ljava/lang/String;

    const-string v3, "Thread %s (%d) interrupted while quitting."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v6}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public setConfigurationAndWait(Ljava/util/Collection;Landroid/hardware/camera2/legacy/CaptureCollector;)V
    .registers 9
    .param p2, "collector"    # Landroid/hardware/camera2/legacy/CaptureCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/legacy/CaptureCollector;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "surfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    const/4 v5, 0x0

    .line 209
    const-string v4, "collector must not be null"

    invoke-static {p2, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v4, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 212
    .local v2, "handler":Landroid/os/Handler;
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v5}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 213
    .local v0, "condition":Landroid/os/ConditionVariable;
    new-instance v1, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;

    invoke-direct {v1, v0, p1, p2}, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;-><init>(Landroid/os/ConditionVariable;Ljava/util/Collection;Landroid/hardware/camera2/legacy/CaptureCollector;)V

    .line 215
    .local v1, "configure":Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v5, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 216
    .local v3, "m":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 220
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->start()V

    .line 154
    return-void
.end method

.method public waitUntilIdle()V
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitUntilIdle()V

    .line 252
    return-void
.end method

.method public waitUntilStarted()V
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Landroid/hardware/camera2/legacy/GLThreadManager;->mGLHandlerThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitUntilStarted()V

    .line 161
    return-void
.end method
