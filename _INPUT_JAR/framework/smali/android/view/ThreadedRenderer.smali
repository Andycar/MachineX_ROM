.class public Landroid/view/ThreadedRenderer;
.super Landroid/view/HardwareRenderer;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ThreadedRenderer$AtlasInitializer;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ThreadedRenderer"

.field private static final SYNC_INVALIDATE_REQUIRED:I = 0x1

.field private static final SYNC_OK:I

.field private static final VISUALIZERS:[Ljava/lang/String;


# instance fields
.field private final mAmbientShadowAlpha:I

.field private mChoreographer:Landroid/view/Choreographer;

.field private mHasInsets:Z

.field private mHeight:I

.field private mInitialized:Z

.field private mInsetLeft:I

.field private mInsetTop:I

.field private final mLightRadius:F

.field private final mLightY:F

.field private final mLightZ:F

.field private mNativeProxy:J

.field private mProfilingEnabled:Z

.field private mRootNode:Landroid/view/RenderNode;

.field private mRootNodeNeedsUpdate:Z

.field private final mSpotShadowAlpha:I

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "visual_bars"

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/ThreadedRenderer;->VISUALIZERS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translucent"    # Z

    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 101
    invoke-direct {p0}, Landroid/view/HardwareRenderer;-><init>()V

    .line 95
    iput-boolean v6, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 102
    const/4 v1, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Lighting:[I

    invoke-virtual {p1, v1, v4, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    .line 104
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    .line 105
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    .line 106
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    mul-float/2addr v1, v8

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mAmbientShadowAlpha:I

    .line 108
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    mul-float/2addr v1, v8

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mSpotShadowAlpha:I

    .line 109
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    invoke-static {}, Landroid/view/ThreadedRenderer;->nCreateRootRenderNode()J

    move-result-wide v2

    .line 112
    .local v2, "rootNodePtr":J
    invoke-static {v2, v3}, Landroid/view/RenderNode;->adopt(J)Landroid/view/RenderNode;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    .line 113
    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v6}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 114
    invoke-static {p2, v2, v3}, Landroid/view/ThreadedRenderer;->nCreateProxy(ZJ)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 116
    sget-object v1, Landroid/view/ThreadedRenderer$AtlasInitializer;->sInstance:Landroid/view/ThreadedRenderer$AtlasInitializer;

    iget-wide v4, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {v1, p1, v4, v5}, Landroid/view/ThreadedRenderer$AtlasInitializer;->init(Landroid/content/Context;J)V

    .line 119
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ThreadedRenderer;->mChoreographer:Landroid/view/Choreographer;

    .line 120
    iget-wide v4, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroid/view/ThreadedRenderer;->nSetFrameInterval(JJ)V

    .line 122
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->loadSystemProperties()Z

    .line 123
    return-void
.end method

.method static synthetic access$000(JLandroid/view/GraphicBuffer;[J)V
    .registers 4
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/view/GraphicBuffer;
    .param p3, "x2"    # [J

    .prologue
    .line 61
    invoke-static {p0, p1, p2, p3}, Landroid/view/ThreadedRenderer;->nSetAtlas(JLandroid/view/GraphicBuffer;[J)V

    return-void
.end method

.method private static checkIfProfilingRequested()Z
    .registers 3

    .prologue
    .line 254
    const-string v2, "debug.hwui.profile"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "profiling":Ljava/lang/String;
    sget-object v2, Landroid/view/ThreadedRenderer;->VISUALIZERS:[Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/view/ThreadedRenderer;->search([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 256
    .local v0, "graphType":I
    if-gez v0, :cond_14

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_14
    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private static destroyResources(Landroid/view/View;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 169
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1b

    move-object v1, p0

    .line 170
    check-cast v1, Landroid/view/ViewGroup;

    .line 172
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 173
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_1b

    .line 174
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ThreadedRenderer;->destroyResources(Landroid/view/View;)V

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 177
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_1b
    return-void
.end method

.method static invokeFunctor(JZ)V
    .registers 3
    .param p0, "functor"    # J
    .param p2, "waitForCompletion"    # Z

    .prologue
    .line 350
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->nInvokeFunctor(JZ)V

    .line 351
    return-void
.end method

.method private static native nBuildLayer(JJ)V
.end method

.method private static native nCancelLayerUpdate(JJ)V
.end method

.method private static native nCopyLayerInto(JJJ)Z
.end method

.method private static native nCreateProxy(ZJ)J
.end method

.method private static native nCreateRootRenderNode()J
.end method

.method private static native nCreateTextureLayer(J)J
.end method

.method private static native nDeleteProxy(J)V
.end method

.method private static native nDestroy(J)V
.end method

.method private static native nDestroyHardwareResources(J)V
.end method

.method private static native nDetachSurfaceTexture(JJ)V
.end method

.method private static native nDumpProfileInfo(JLjava/io/FileDescriptor;)V
.end method

.method private static native nFence(J)V
.end method

.method private static native nInitialize(JLandroid/view/Surface;)Z
.end method

.method private static native nInvokeFunctor(JZ)V
.end method

.method private static native nLoadSystemProperties(J)Z
.end method

.method private static native nNotifyFramePending(J)V
.end method

.method private static native nPauseSurface(JLandroid/view/Surface;)V
.end method

.method private static native nPushLayerUpdate(JJ)V
.end method

.method private static native nRegisterAnimatingRenderNode(JJ)V
.end method

.method private static native nSetAtlas(JLandroid/view/GraphicBuffer;[J)V
.end method

.method private static native nSetFrameInterval(JJ)V
.end method

.method private static native nSetOpaque(JZ)V
.end method

.method private static native nSetup(JIIFFFFII)V
.end method

.method private static native nStopDrawing(J)V
.end method

.method private static native nSyncAndDrawFrame(JJJF)I
.end method

.method private static native nTrimMemory(I)V
.end method

.method private static native nUpdateSurface(JLandroid/view/Surface;)V
.end method

.method private static search([Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "values"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 248
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 250
    .end local v0    # "i":I
    :goto_c
    return v0

    .line 247
    .restart local v0    # "i":I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    :cond_10
    const/4 v0, -0x1

    goto :goto_c
.end method

.method static native setupShadersDiskCache(Ljava/lang/String;)V
.end method

.method static trimMemory(I)V
    .registers 1
    .param p0, "level"    # I

    .prologue
    .line 415
    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nTrimMemory(I)V

    .line 416
    return-void
.end method

.method private updateEnabledState(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 133
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_d

    .line 134
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    .line 138
    :goto_c
    return-void

    .line 136
    :cond_d
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    goto :goto_c
.end method

.method private updateRootDisplayList(Landroid/view/View;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callbacks"    # Landroid/view/HardwareRenderer$HardwareDrawCallbacks;

    .prologue
    const-wide/16 v6, 0x8

    .line 280
    const-string v2, "getDisplayList"

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 281
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateViewTreeDisplayList(Landroid/view/View;)V

    .line 283
    iget-boolean v2, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    if-nez v2, :cond_16

    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v2}, Landroid/view/RenderNode;->isValid()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 284
    :cond_16
    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/view/RenderNode;->start(II)Landroid/view/HardwareCanvas;

    move-result-object v0

    .line 286
    .local v0, "canvas":Landroid/view/HardwareCanvas;
    :try_start_20
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->save()I

    move-result v1

    .line 287
    .local v1, "saveCount":I
    iget v2, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    int-to-float v2, v2

    iget v3, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 288
    invoke-interface {p2, v0}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePreDraw(Landroid/view/HardwareCanvas;)V

    .line 290
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->insertReorderBarrier()V

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getDisplayList()Landroid/view/RenderNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/HardwareCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 292
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->insertInorderBarrier()V

    .line 294
    invoke-interface {p2, v0}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/HardwareCanvas;)V

    .line 295
    invoke-virtual {v0, v1}, Landroid/view/HardwareCanvas;->restoreToCount(I)V

    .line 296
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z
    :try_end_46
    .catchall {:try_start_20 .. :try_end_46} :catchall_4f

    .line 298
    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v2, v0}, Landroid/view/RenderNode;->end(Landroid/view/HardwareCanvas;)V

    .line 301
    .end local v0    # "canvas":Landroid/view/HardwareCanvas;
    .end local v1    # "saveCount":I
    :cond_4b
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 302
    return-void

    .line 298
    .restart local v0    # "canvas":Landroid/view/HardwareCanvas;
    :catchall_4f
    move-exception v2

    iget-object v3, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v3, v0}, Landroid/view/RenderNode;->end(Landroid/view/HardwareCanvas;)V

    throw v2
.end method

.method private updateViewTreeDisplayList(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    .line 271
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 272
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1f

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 274
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getDisplayList()Landroid/view/RenderNode;

    .line 276
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 277
    return-void

    :cond_1f
    move v0, v1

    .line 272
    goto :goto_f
.end method


# virtual methods
.method buildLayer(Landroid/view/RenderNode;)V
    .registers 6
    .param p1, "node"    # Landroid/view/RenderNode;

    .prologue
    .line 361
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/RenderNode;->getNativeDisplayList()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nBuildLayer(JJ)V

    .line 362
    return-void
.end method

.method copyLayerInto(Landroid/view/HardwareLayer;Landroid/graphics/Bitmap;)Z
    .registers 9
    .param p1, "layer"    # Landroid/view/HardwareLayer;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 366
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    iget-wide v4, p2, Landroid/graphics/Bitmap;->mNativeBitmap:J

    invoke-static/range {v0 .. v5}, Landroid/view/ThreadedRenderer;->nCopyLayerInto(JJJ)Z

    move-result v0

    return v0
.end method

.method createTextureLayer()Landroid/view/HardwareLayer;
    .registers 5

    .prologue
    .line 355
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v2, v3}, Landroid/view/ThreadedRenderer;->nCreateTextureLayer(J)J

    move-result-wide v0

    .line 356
    .local v0, "layer":J
    invoke-static {p0, v0, v1}, Landroid/view/HardwareLayer;->adoptTextureLayer(Landroid/view/HardwareRenderer;J)Landroid/view/HardwareLayer;

    move-result-object v2

    return-object v2
.end method

.method destroy()V
    .registers 3

    .prologue
    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 129
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDestroy(J)V

    .line 130
    return-void
.end method

.method destroyHardwareResources(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 162
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->destroyResources(Landroid/view/View;)V

    .line 163
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDestroyHardwareResources(J)V

    .line 164
    return-void
.end method

.method detachSurfaceTexture(J)V
    .registers 6
    .param p1, "hardwareLayer"    # J

    .prologue
    .line 186
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/ThreadedRenderer;->nDetachSurfaceTexture(JJ)V

    .line 187
    return-void
.end method

.method draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "callbacks"    # Landroid/view/HardwareRenderer$HardwareDrawCallbacks;

    .prologue
    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 312
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v2

    .line 313
    .local v2, "frameTimeNanos":J
    const-wide/32 v0, 0xf4240

    div-long v0, v2, v0

    iput-wide v0, p2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 315
    const-wide/16 v4, 0x0

    .line 316
    .local v4, "recordDuration":J
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mProfilingEnabled:Z

    if-eqz v0, :cond_1a

    .line 317
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 320
    :cond_1a
    invoke-direct {p0, p1, p3}, Landroid/view/ThreadedRenderer;->updateRootDisplayList(Landroid/view/View;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V

    .line 322
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mProfilingEnabled:Z

    if-eqz v0, :cond_27

    .line 323
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v4, v0, v4

    .line 326
    :cond_27
    const/4 v0, 0x0

    iput-boolean v0, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 330
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v0, :cond_4d

    .line 331
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 332
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_35
    if-ge v8, v7, :cond_45

    .line 333
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RenderNode;

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    .line 332
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    .line 336
    :cond_45
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 342
    .end local v7    # "count":I
    .end local v8    # "i":I
    :cond_4d
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    invoke-static/range {v0 .. v6}, Landroid/view/ThreadedRenderer;->nSyncAndDrawFrame(JJJF)I

    move-result v9

    .line 344
    .local v9, "syncResult":I
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_66

    .line 345
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 347
    :cond_66
    return-void
.end method

.method dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 242
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 243
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p2}, Landroid/view/ThreadedRenderer;->nDumpProfileInfo(JLjava/io/FileDescriptor;)V

    .line 244
    return-void
.end method

.method fence()V
    .registers 3

    .prologue
    .line 386
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nFence(J)V

    .line 387
    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 407
    :try_start_0
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDeleteProxy(J)V

    .line 408
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 410
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 412
    return-void

    .line 410
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getHeight()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    return v0
.end method

.method getWidth()I
    .registers 2

    .prologue
    .line 232
    iget v0, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    return v0
.end method

.method initialize(Landroid/view/Surface;)Z
    .registers 6
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 143
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 144
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v2, v3, p1}, Landroid/view/ThreadedRenderer;->nInitialize(JLandroid/view/Surface;)Z

    move-result v0

    .line 145
    .local v0, "status":Z
    invoke-virtual {p1}, Landroid/view/Surface;->allocateBuffers()V

    .line 146
    return v0
.end method

.method invalidate(Landroid/view/Surface;)V
    .registers 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->updateSurface(Landroid/view/Surface;)V

    .line 182
    return-void
.end method

.method invalidateRoot()V
    .registers 2

    .prologue
    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    .line 307
    return-void
.end method

.method loadSystemProperties()Z
    .registers 5

    .prologue
    .line 261
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v2, v3}, Landroid/view/ThreadedRenderer;->nLoadSystemProperties(J)Z

    move-result v0

    .line 262
    .local v0, "changed":Z
    invoke-static {}, Landroid/view/ThreadedRenderer;->checkIfProfilingRequested()Z

    move-result v1

    .line 263
    .local v1, "wantProfiling":Z
    iget-boolean v2, p0, Landroid/view/ThreadedRenderer;->mProfilingEnabled:Z

    if-eq v1, v2, :cond_11

    .line 264
    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mProfilingEnabled:Z

    .line 265
    const/4 v0, 0x1

    .line 267
    :cond_11
    return v0
.end method

.method public notifyFramePending()V
    .registers 3

    .prologue
    .line 396
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nNotifyFramePending(J)V

    .line 397
    return-void
.end method

.method onLayerDestroyed(Landroid/view/HardwareLayer;)V
    .registers 6
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    .prologue
    .line 377
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nCancelLayerUpdate(JJ)V

    .line 378
    return-void
.end method

.method pauseSurface(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 157
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nPauseSurface(JLandroid/view/Surface;)V

    .line 158
    return-void
.end method

.method pushLayerUpdate(Landroid/view/HardwareLayer;)V
    .registers 6
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    .prologue
    .line 372
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nPushLayerUpdate(JJ)V

    .line 373
    return-void
.end method

.method registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .registers 6
    .param p1, "animator"    # Landroid/view/RenderNode;

    .prologue
    .line 401
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget-wide v0, v0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRegisterAnimatingRenderNode(JJ)V

    .line 402
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 382
    return-void
.end method

.method setOpaque(Z)V
    .registers 6
    .param p1, "opaque"    # Z

    .prologue
    .line 227
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    if-eqz p1, :cond_d

    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-static {v2, v3, v0}, Landroid/view/ThreadedRenderer;->nSetOpaque(JZ)V

    .line 228
    return-void

    .line 227
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method setup(IILandroid/graphics/Rect;)V
    .registers 14
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "surfaceInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 191
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v4, v0, v1

    .line 192
    .local v4, "lightX":F
    iput p1, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    .line 193
    iput p2, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    .line 194
    if-eqz p3, :cond_65

    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_1d

    iget v0, p3, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_1d

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_1d

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_65

    .line 195
    :cond_1d
    iput-boolean v7, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    .line 196
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 197
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 198
    iget v0, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    add-int/2addr v0, p1

    iget v1, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 199
    iget v0, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    add-int/2addr v0, p2

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    .line 201
    invoke-virtual {p0, v2}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    .line 214
    :goto_3a
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    neg-int v1, v1

    iget v2, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    neg-int v2, v2

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v5, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    sub-int/2addr v3, v5

    iget v5, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    iget v6, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 216
    iput-boolean v7, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    .line 220
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget v2, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    iget v5, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    iget v6, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    iget v7, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    iget v8, p0, Landroid/view/ThreadedRenderer;->mAmbientShadowAlpha:I

    iget v9, p0, Landroid/view/ThreadedRenderer;->mSpotShadowAlpha:I

    invoke-static/range {v0 .. v9}, Landroid/view/ThreadedRenderer;->nSetup(JIIFFFFII)V

    .line 223
    return-void

    .line 203
    :cond_65
    iput-boolean v2, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    .line 204
    iput v2, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 205
    iput v2, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 206
    iput p1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 207
    iput p2, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    goto :goto_3a
.end method

.method stopDrawing()V
    .registers 3

    .prologue
    .line 391
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nStopDrawing(J)V

    .line 392
    return-void
.end method

.method updateSurface(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 152
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nUpdateSurface(JLandroid/view/Surface;)V

    .line 153
    return-void
.end method
