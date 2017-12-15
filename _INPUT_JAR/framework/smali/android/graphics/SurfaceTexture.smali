.class public Landroid/graphics/SurfaceTexture;
.super Ljava/lang/Object;
.source "SurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/SurfaceTexture$OutOfResourcesException;,
        Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    }
.end annotation


# instance fields
.field private final mCreatorLooper:Landroid/os/Looper;

.field private mFrameAvailableListener:J

.field private mOnFrameAvailableHandler:Landroid/os/Handler;

.field private mProducer:J

.field private mSurfaceTexture:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 392
    invoke-static {}, Landroid/graphics/SurfaceTexture;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "texName"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(IZ)V

    .line 112
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 5
    .param p1, "texName"    # I
    .param p2, "singleBufferMode"    # Z

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    .line 133
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/graphics/SurfaceTexture;->nativeInit(ZIZLjava/lang/ref/WeakReference;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 5
    .param p1, "singleBufferMode"    # Z

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    .line 160
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1, p1, v2}, Landroid/graphics/SurfaceTexture;->nativeInit(ZIZLjava/lang/ref/WeakReference;)V

    .line 161
    return-void
.end method

.method private native nativeAttachToGLContext(I)I
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeDetachFromGLContext()I
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetQueuedCount()I
.end method

.method private native nativeGetTimestamp()J
.end method

.method private native nativeGetTransformMatrix([F)V
.end method

.method private native nativeInit(ZIZLjava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/SurfaceTexture;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private native nativeRelease()V
.end method

.method private native nativeReleaseTexImage()V
.end method

.method private native nativeSetDefaultBufferSize(II)V
.end method

.method private native nativeUpdateTexImage()V
.end method

.method private static postEventFromNative(Ljava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/SurfaceTexture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/SurfaceTexture;>;"
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    .line 365
    .local v1, "st":Landroid/graphics/SurfaceTexture;
    if-eqz v1, :cond_10

    .line 366
    iget-object v0, v1, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableHandler:Landroid/os/Handler;

    .line 367
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_10

    .line 368
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 371
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_10
    return-void
.end method


# virtual methods
.method public attachToGLContext(I)V
    .registers 5
    .param p1, "texName"    # I

    .prologue
    .line 284
    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;->nativeAttachToGLContext(I)I

    move-result v0

    .line 285
    .local v0, "err":I
    if-eqz v0, :cond_e

    .line 286
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error during attachToGLContext (see logcat for details)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_e
    return-void
.end method

.method public detachFromGLContext()V
    .registers 4

    .prologue
    .line 264
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeDetachFromGLContext()I

    move-result v0

    .line 265
    .local v0, "err":I
    if-eqz v0, :cond_e

    .line 266
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error during detachFromGLContext (see logcat for details)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    :cond_e
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 353
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeFinalize()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 355
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 357
    return-void

    .line 355
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 328
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeGetTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransformMatrix([F)V
    .registers 4
    .param p1, "mtx"    # [F

    .prologue
    .line 308
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_b

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 311
    :cond_b
    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;->nativeGetTransformMatrix([F)V

    .line 312
    return-void
.end method

.method public release()V
    .registers 1

    .prologue
    .line 347
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeRelease()V

    .line 348
    return-void
.end method

.method public releaseTexImage()V
    .registers 1

    .prologue
    .line 249
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeReleaseTexImage()V

    .line 250
    return-void
.end method

.method public setDefaultBufferSize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->nativeSetDefaultBufferSize(II)V

    .line 232
    return-void
.end method

.method public setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 176
    return-void
.end method

.method public setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .registers 9
    .param p1, "listener"    # Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    .line 194
    if-eqz p1, :cond_20

    .line 198
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 200
    .local v2, "looper":Landroid/os/Looper;
    :goto_9
    new-instance v0, Landroid/graphics/SurfaceTexture$1;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/SurfaceTexture$1;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;Landroid/os/Handler$Callback;ZLandroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v0, p0, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableHandler:Landroid/os/Handler;

    .line 209
    .end local v2    # "looper":Landroid/os/Looper;
    :goto_13
    return-void

    .line 198
    :cond_14
    iget-object v0, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1b

    iget-object v2, p0, Landroid/graphics/SurfaceTexture;->mCreatorLooper:Landroid/os/Looper;

    goto :goto_9

    :cond_1b
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_9

    .line 207
    :cond_20
    iput-object v3, p0, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableHandler:Landroid/os/Handler;

    goto :goto_13
.end method

.method public updateTexImage()V
    .registers 1

    .prologue
    .line 240
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeUpdateTexImage()V

    .line 241
    return-void
.end method
