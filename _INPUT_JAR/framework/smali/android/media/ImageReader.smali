.class public Landroid/media/ImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$SurfaceImage;,
        Landroid/media/ImageReader$ListenerHandler;,
        Landroid/media/ImageReader$OnImageAvailableListener;
    }
.end annotation


# static fields
.field private static final ACQUIRE_MAX_IMAGES:I = 0x2

.field private static final ACQUIRE_NO_BUFS:I = 0x1

.field private static final ACQUIRE_SUCCESS:I


# instance fields
.field private final mFormat:I

.field private final mHeight:I

.field private mListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

.field private final mListenerLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field private mNativeContext:J

.field private final mNumPlanes:I

.field private final mSurface:Landroid/view/Surface;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 740
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 741
    invoke-static {}, Landroid/media/ImageReader;->nativeClassInit()V

    .line 742
    return-void
.end method

.method protected constructor <init>(IIII)V
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "maxImages"    # I

    .prologue
    const/4 v1, 0x1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    .line 106
    iput p1, p0, Landroid/media/ImageReader;->mWidth:I

    .line 107
    iput p2, p0, Landroid/media/ImageReader;->mHeight:I

    .line 108
    iput p3, p0, Landroid/media/ImageReader;->mFormat:I

    .line 109
    iput p4, p0, Landroid/media/ImageReader;->mMaxImages:I

    .line 111
    if-lt p1, v1, :cond_17

    if-ge p2, v1, :cond_1f

    .line 112
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The image dimensions must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1f
    iget v0, p0, Landroid/media/ImageReader;->mMaxImages:I

    if-ge v0, v1, :cond_2b

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum outstanding image count must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_2b
    const/16 v0, 0x11

    if-ne p3, v0, :cond_37

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NV21 format is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_37
    invoke-direct {p0}, Landroid/media/ImageReader;->getNumPlanesFromFormat()I

    move-result v0

    iput v0, p0, Landroid/media/ImageReader;->mNumPlanes:I

    .line 127
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/ImageReader;->nativeInit(Ljava/lang/Object;IIII)V

    .line 129
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeGetSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    .line 130
    return-void
.end method

.method static synthetic access$1000(Landroid/media/ImageReader;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/ImageReader;

    .prologue
    .line 50
    iget v0, p0, Landroid/media/ImageReader;->mNumPlanes:I

    return v0
.end method

.method static synthetic access$300(Landroid/media/ImageReader;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/ImageReader;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/ImageReader;)Landroid/media/ImageReader$OnImageAvailableListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/ImageReader;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/ImageReader;Landroid/media/Image;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/ImageReader;
    .param p1, "x1"    # Landroid/media/Image;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->releaseImage(Landroid/media/Image;)V

    return-void
.end method

.method static synthetic access$600(Landroid/media/ImageReader;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/ImageReader;

    .prologue
    .line 50
    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    return v0
.end method

.method static synthetic access$700(Landroid/media/ImageReader;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/ImageReader;

    .prologue
    .line 50
    iget v0, p0, Landroid/media/ImageReader;->mWidth:I

    return v0
.end method

.method static synthetic access$800(Landroid/media/ImageReader;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/ImageReader;

    .prologue
    .line 50
    iget v0, p0, Landroid/media/ImageReader;->mHeight:I

    return v0
.end method

.method private acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I
    .registers 6
    .param p1, "si"    # Landroid/media/ImageReader$SurfaceImage;

    .prologue
    .line 297
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeImageSetup(Landroid/media/Image;)I

    move-result v0

    .line 299
    .local v0, "status":I
    packed-switch v0, :pswitch_data_28

    .line 307
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown nativeImageSetup return code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 301
    :pswitch_20
    # invokes: Landroid/media/ImageReader$SurfaceImage;->createSurfacePlanes()V
    invoke-static {p1}, Landroid/media/ImageReader$SurfaceImage;->access$000(Landroid/media/ImageReader$SurfaceImage;)V

    .line 302
    const/4 v1, 0x1

    # invokes: Landroid/media/ImageReader$SurfaceImage;->setImageValid(Z)V
    invoke-static {p1, v1}, Landroid/media/ImageReader$SurfaceImage;->access$100(Landroid/media/ImageReader$SurfaceImage;Z)V

    .line 310
    :pswitch_27
    return v0

    .line 299
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_20
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method private getNumPlanesFromFormat()I
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 468
    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    sparse-switch v1, :sswitch_data_22

    .line 487
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Invalid format specified %d"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 472
    :sswitch_1d
    const/4 v0, 0x3

    .line 485
    :goto_1e
    :sswitch_1e
    return v0

    .line 474
    :sswitch_1f
    const/4 v0, 0x2

    goto :goto_1e

    .line 468
    nop

    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_1e
        0x4 -> :sswitch_1e
        0x10 -> :sswitch_1f
        0x11 -> :sswitch_1d
        0x14 -> :sswitch_1e
        0x20 -> :sswitch_1e
        0x23 -> :sswitch_1d
        0x25 -> :sswitch_1e
        0x100 -> :sswitch_1e
        0x20203859 -> :sswitch_1e
        0x20363159 -> :sswitch_1e
        0x32315659 -> :sswitch_1d
    .end sparse-switch
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native declared-synchronized nativeClose()V
.end method

.method private synchronized native declared-synchronized nativeGetSurface()Landroid/view/Surface;
.end method

.method private synchronized native declared-synchronized nativeImageSetup(Landroid/media/Image;)I
.end method

.method private synchronized native declared-synchronized nativeInit(Ljava/lang/Object;IIII)V
.end method

.method private synchronized native declared-synchronized nativeReleaseImage(Landroid/media/Image;)V
.end method

.method public static newInstance(IIII)Landroid/media/ImageReader;
    .registers 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "maxImages"    # I

    .prologue
    .line 99
    new-instance v0, Landroid/media/ImageReader;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/ImageReader;-><init>(IIII)V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .registers 6
    .param p0, "selfRef"    # Ljava/lang/Object;

    .prologue
    .line 500
    move-object v2, p0

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 501
    .local v2, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/ImageReader;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    .line 502
    .local v1, "ir":Landroid/media/ImageReader;
    if-nez v1, :cond_c

    .line 513
    :cond_b
    :goto_b
    return-void

    .line 507
    :cond_c
    iget-object v4, v1, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 508
    :try_start_f
    iget-object v0, v1, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    .line 509
    .local v0, "handler":Landroid/os/Handler;
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_19

    .line 510
    if-eqz v0, :cond_b

    .line 511
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b

    .line 509
    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_19
    move-exception v3

    :try_start_1a
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v3
.end method

.method private releaseImage(Landroid/media/Image;)V
    .registers 5
    .param p1, "i"    # Landroid/media/Image;

    .prologue
    .line 364
    instance-of v1, p1, Landroid/media/ImageReader$SurfaceImage;

    if-nez v1, :cond_c

    .line 365
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This image was not produced by an ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    move-object v0, p1

    .line 368
    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    .line 369
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    move-result-object v1

    if-eq v1, p0, :cond_1d

    .line 370
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This image was not produced by this ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    :cond_1d
    # invokes: Landroid/media/ImageReader$SurfaceImage;->clearSurfacePlanes()V
    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->access$200(Landroid/media/ImageReader$SurfaceImage;)V

    .line 375
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeReleaseImage(Landroid/media/Image;)V

    .line 376
    const/4 v1, 0x0

    # invokes: Landroid/media/ImageReader$SurfaceImage;->setImageValid(Z)V
    invoke-static {v0, v1}, Landroid/media/ImageReader$SurfaceImage;->access$100(Landroid/media/ImageReader$SurfaceImage;Z)V

    .line 377
    return-void
.end method


# virtual methods
.method public acquireLatestImage()Landroid/media/Image;
    .registers 5

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 248
    .local v0, "image":Landroid/media/Image;
    if-nez v0, :cond_c

    .line 249
    const/4 v2, 0x0

    .line 264
    :cond_7
    :goto_7
    return-object v2

    .line 259
    .local v1, "next":Landroid/media/Image;
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 260
    move-object v0, v1

    .line 253
    .end local v1    # "next":Landroid/media/Image;
    :cond_c
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImageNoThrowISE()Landroid/media/Image;
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_1a

    move-result-object v1

    .line 254
    .restart local v1    # "next":Landroid/media/Image;
    if-nez v1, :cond_8

    .line 255
    move-object v2, v0

    .line 256
    .local v2, "result":Landroid/media/Image;
    const/4 v0, 0x0

    .line 263
    if-eqz v0, :cond_7

    .line 264
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    goto :goto_7

    .line 263
    .end local v1    # "next":Landroid/media/Image;
    .end local v2    # "result":Landroid/media/Image;
    :catchall_1a
    move-exception v3

    if-eqz v0, :cond_20

    .line 264
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_20
    throw v3
.end method

.method public acquireNextImage()Landroid/media/Image;
    .registers 8

    .prologue
    .line 342
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    invoke-direct {v0, p0}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;)V

    .line 343
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    .line 345
    .local v1, "status":I
    packed-switch v1, :pswitch_data_40

    .line 356
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown nativeImageSetup return code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 349
    :pswitch_25
    const/4 v0, 0x0

    .end local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :pswitch_26
    return-object v0

    .line 351
    .restart local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :pswitch_27
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "maxImages (%d) has already been acquired, call #close before acquiring more."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Landroid/media/ImageReader;->mMaxImages:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 345
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_27
    .end packed-switch
.end method

.method public acquireNextImageNoThrowISE()Landroid/media/Image;
    .registers 3

    .prologue
    .line 277
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    invoke-direct {v0, p0}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;)V

    .line 278
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    if-nez v1, :cond_c

    .end local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :goto_b
    return-object v0

    .restart local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public close()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 444
    invoke-virtual {p0, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 445
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeClose()V

    .line 446
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
    .line 451
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 453
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 455
    return-void

    .line 453
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Landroid/media/ImageReader;->mHeight:I

    return v0
.end method

.method public getImageFormat()I
    .registers 2

    .prologue
    .line 174
    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    return v0
.end method

.method public getMaxImages()I
    .registers 2

    .prologue
    .line 195
    iget v0, p0, Landroid/media/ImageReader;->mMaxImages:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Landroid/media/ImageReader;->mWidth:I

    return v0
.end method

.method public setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/media/ImageReader$OnImageAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 392
    iget-object v2, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 393
    if-eqz p1, :cond_34

    .line 394
    if-eqz p2, :cond_18

    :try_start_7
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 395
    .local v0, "looper":Landroid/os/Looper;
    :goto_b
    if-nez v0, :cond_1d

    .line 396
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "handler is null but the current thread is not a looper"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1

    .line 394
    :cond_18
    :try_start_18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_b

    .line 399
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_1d
    iget-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    invoke-virtual {v1}, Landroid/media/ImageReader$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, v0, :cond_30

    .line 400
    :cond_29
    new-instance v1, Landroid/media/ImageReader$ListenerHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/ImageReader$ListenerHandler;-><init>(Landroid/media/ImageReader;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    .line 402
    :cond_30
    iput-object p1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 407
    .end local v0    # "looper":Landroid/os/Looper;
    :goto_32
    monitor-exit v2

    .line 408
    return-void

    .line 404
    :cond_34
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 405
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;
    :try_end_3a
    .catchall {:try_start_18 .. :try_end_3a} :catchall_15

    goto :goto_32
.end method
