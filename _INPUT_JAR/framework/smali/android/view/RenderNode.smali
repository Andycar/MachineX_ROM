.class public Landroid/view/RenderNode;
.super Ljava/lang/Object;
.source "RenderNode.java"


# static fields
.field public static final FLAG_CLIP_CHILDREN:I = 0x1

.field public static final STATUS_DONE:I = 0x0

.field public static final STATUS_DRAW:I = 0x1

.field public static final STATUS_DREW:I = 0x4

.field public static final STATUS_INVOKE:I = 0x2


# instance fields
.field final mNativeRenderNode:J

.field private final mOwningView:Landroid/view/View;

.field private mValid:Z


# direct methods
.method private constructor <init>(J)V
    .registers 4
    .param p1, "nativePtr"    # J

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-wide p1, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    .line 187
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owningView"    # Landroid/view/View;

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-static {p1}, Landroid/view/RenderNode;->nCreate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    .line 178
    iput-object p2, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    .line 179
    return-void
.end method

.method public static adopt(J)Landroid/view/RenderNode;
    .registers 4
    .param p0, "nativePtr"    # J

    .prologue
    .line 208
    new-instance v0, Landroid/view/RenderNode;

    invoke-direct {v0, p0, p1}, Landroid/view/RenderNode;-><init>(J)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "owningView"    # Landroid/view/View;

    .prologue
    .line 198
    new-instance v0, Landroid/view/RenderNode;

    invoke-direct {v0, p0, p1}, Landroid/view/RenderNode;-><init>(Ljava/lang/String;Landroid/view/View;)V

    return-object v0
.end method

.method private static native nAddAnimator(JJ)V
.end method

.method private static native nAddImageFilterClipRect(JIIIIF)V
.end method

.method private static native nClearImageFilterClipRects(J)V
.end method

.method private static native nClearImageFilters(J)V
.end method

.method private static native nCreate(Ljava/lang/String;)J
.end method

.method private static native nDestroyRenderNode(J)V
.end method

.method private static native nEndAllAnimators(J)V
.end method

.method private static native nGetAlpha(J)F
.end method

.method private static native nGetCameraDistance(J)F
.end method

.method private static native nGetClipToOutline(J)Z
.end method

.method private static native nGetDebugSize(J)I
.end method

.method private static native nGetElevation(J)F
.end method

.method private static native nGetInverseTransformMatrix(JJ)V
.end method

.method private static native nGetPivotX(J)F
.end method

.method private static native nGetPivotY(J)F
.end method

.method private static native nGetRotation(J)F
.end method

.method private static native nGetRotationX(J)F
.end method

.method private static native nGetRotationY(J)F
.end method

.method private static native nGetScaleX(J)F
.end method

.method private static native nGetScaleY(J)F
.end method

.method private static native nGetTransformMatrix(JJ)V
.end method

.method private static native nGetTranslationX(J)F
.end method

.method private static native nGetTranslationY(J)F
.end method

.method private static native nGetTranslationZ(J)F
.end method

.method private static native nHasIdentityMatrix(J)Z
.end method

.method private static native nHasOverlappingRendering(J)Z
.end method

.method private static native nHasShadow(J)Z
.end method

.method private static native nIsPivotExplicitlySet(J)Z
.end method

.method private static native nOffsetLeftAndRight(JI)Z
.end method

.method private static native nOffsetTopAndBottom(JI)Z
.end method

.method private static native nOutput(J)V
.end method

.method private static native nSetAlpha(JF)Z
.end method

.method private static native nSetAnimationMatrix(JJ)Z
.end method

.method private static native nSetBottom(JI)Z
.end method

.method private static native nSetCameraDistance(JF)Z
.end method

.method private static native nSetClipBounds(JIIII)Z
.end method

.method private static native nSetClipBoundsEmpty(J)Z
.end method

.method private static native nSetClipToBounds(JZ)Z
.end method

.method private static native nSetClipToOutline(JZ)Z
.end method

.method private static native nSetDisplayListData(JJ)V
.end method

.method private static native nSetElevation(JF)Z
.end method

.method private static native nSetHasOverlappingRendering(JZ)Z
.end method

.method private static native nSetImageFilter(JJI)V
.end method

.method private static native nSetLayerPaint(JJ)Z
.end method

.method private static native nSetLayerType(JI)Z
.end method

.method private static native nSetLeft(JI)Z
.end method

.method private static native nSetLeftTopRightBottom(JIIII)Z
.end method

.method private static native nSetOutlineConvexPath(JJF)Z
.end method

.method private static native nSetOutlineEmpty(J)Z
.end method

.method private static native nSetOutlineNone(J)Z
.end method

.method private static native nSetOutlineRoundRect(JIIIIFF)Z
.end method

.method private static native nSetPivotX(JF)Z
.end method

.method private static native nSetPivotY(JF)Z
.end method

.method private static native nSetProjectBackwards(JZ)Z
.end method

.method private static native nSetProjectionReceiver(JZ)Z
.end method

.method private static native nSetRevealClip(JZFFF)Z
.end method

.method private static native nSetRight(JI)Z
.end method

.method private static native nSetRotation(JF)Z
.end method

.method private static native nSetRotationX(JF)Z
.end method

.method private static native nSetRotationY(JF)Z
.end method

.method private static native nSetScaleX(JF)Z
.end method

.method private static native nSetScaleY(JF)Z
.end method

.method private static native nSetStaticMatrix(JJ)Z
.end method

.method private static native nSetTop(JI)Z
.end method

.method private static native nSetTranslationX(JF)Z
.end method

.method private static native nSetTranslationY(JF)Z
.end method

.method private static native nSetTranslationZ(JF)Z
.end method


# virtual methods
.method public addAnimator(Landroid/view/RenderNodeAnimator;)V
    .registers 6
    .param p1, "animator"    # Landroid/view/RenderNodeAnimator;

    .prologue
    .line 857
    iget-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_12

    .line 858
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start this animator on a detached view!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_12
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-virtual {p1}, Landroid/view/RenderNodeAnimator;->getNativeAnimator()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNode;->nAddAnimator(JJ)V

    .line 861
    iget-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    .line 862
    return-void
.end method

.method addImageFilterClipRect(IIIIF)V
    .registers 13
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "radius"    # F

    .prologue
    .line 336
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Landroid/view/RenderNode;->nAddImageFilterClipRect(JIIIIF)V

    .line 337
    return-void
.end method

.method clearImageFilterClipRects()V
    .registers 3

    .prologue
    .line 327
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nClearImageFilterClipRects(J)V

    .line 328
    return-void
.end method

.method public destroyDisplayListData()V
    .registers 5

    .prologue
    .line 264
    iget-boolean v0, p0, Landroid/view/RenderNode;->mValid:Z

    if-nez v0, :cond_5

    .line 268
    :goto_4
    return-void

    .line 266
    :cond_5
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNode;->nSetDisplayListData(JJ)V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/RenderNode;->mValid:Z

    goto :goto_4
.end method

.method public end(Landroid/view/HardwareCanvas;)V
    .registers 8
    .param p1, "endCanvas"    # Landroid/view/HardwareCanvas;

    .prologue
    .line 246
    instance-of v1, p1, Landroid/view/GLES20RecordingCanvas;

    if-nez v1, :cond_c

    .line 247
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Passed an invalid canvas to end!"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    move-object v0, p1

    .line 250
    check-cast v0, Landroid/view/GLES20RecordingCanvas;

    .line 251
    .local v0, "canvas":Landroid/view/GLES20RecordingCanvas;
    invoke-virtual {v0}, Landroid/view/GLES20RecordingCanvas;->onPostDraw()V

    .line 252
    invoke-virtual {v0}, Landroid/view/GLES20RecordingCanvas;->finishRecording()J

    move-result-wide v2

    .line 253
    .local v2, "renderNodeData":J
    iget-wide v4, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v4, v5, v2, v3}, Landroid/view/RenderNode;->nSetDisplayListData(JJ)V

    .line 254
    invoke-virtual {v0}, Landroid/view/GLES20RecordingCanvas;->recycle()V

    .line 255
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/RenderNode;->mValid:Z

    .line 256
    return-void
.end method

.method public endAllAnimators()V
    .registers 3

    .prologue
    .line 865
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nEndAllAnimators(J)V

    .line 866
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
    .line 967
    :try_start_0
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nDestroyRenderNode(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 969
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 971
    return-void

    .line 969
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAlpha()F
    .registers 3

    .prologue
    .line 479
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetAlpha(J)F

    move-result v0

    return v0
.end method

.method public getCameraDistance()F
    .registers 3

    .prologue
    .line 749
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetCameraDistance(J)F

    move-result v0

    return v0
.end method

.method public getClipToOutline()Z
    .registers 3

    .prologue
    .line 425
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetClipToOutline(J)Z

    move-result v0

    return v0
.end method

.method public getDebugSize()I
    .registers 3

    .prologue
    .line 849
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetDebugSize(J)I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .registers 3

    .prologue
    .line 514
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetElevation(J)F

    move-result v0

    return v0
.end method

.method public getInverseMatrix(Landroid/graphics/Matrix;)V
    .registers 6
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 298
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNode;->nGetInverseTransformMatrix(JJ)V

    .line 299
    return-void
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .registers 6
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 294
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNode;->nGetTransformMatrix(JJ)V

    .line 295
    return-void
.end method

.method getNativeDisplayList()J
    .registers 3

    .prologue
    .line 279
    iget-boolean v0, p0, Landroid/view/RenderNode;->mValid:Z

    if-nez v0, :cond_c

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The display list is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_c
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    return-wide v0
.end method

.method public getPivotX()F
    .registers 3

    .prologue
    .line 701
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetPivotX(J)F

    move-result v0

    return v0
.end method

.method public getPivotY()F
    .registers 3

    .prologue
    .line 722
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetPivotY(J)F

    move-result v0

    return v0
.end method

.method public getRotation()F
    .registers 3

    .prologue
    .line 596
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetRotation(J)F

    move-result v0

    return v0
.end method

.method public getRotationX()F
    .registers 3

    .prologue
    .line 617
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetRotationX(J)F

    move-result v0

    return v0
.end method

.method public getRotationY()F
    .registers 3

    .prologue
    .line 638
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetRotationY(J)F

    move-result v0

    return v0
.end method

.method public getScaleX()F
    .registers 3

    .prologue
    .line 659
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetScaleX(J)F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .registers 3

    .prologue
    .line 680
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetScaleY(J)F

    move-result v0

    return v0
.end method

.method public getTranslationX()F
    .registers 3

    .prologue
    .line 535
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetTranslationX(J)F

    move-result v0

    return v0
.end method

.method public getTranslationY()F
    .registers 3

    .prologue
    .line 556
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetTranslationY(J)F

    move-result v0

    return v0
.end method

.method public getTranslationZ()F
    .registers 3

    .prologue
    .line 575
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetTranslationZ(J)F

    move-result v0

    return v0
.end method

.method public hasIdentityMatrix()Z
    .registers 3

    .prologue
    .line 290
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nHasIdentityMatrix(J)Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .registers 3

    .prologue
    .line 506
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nHasOverlappingRendering(J)Z

    move-result v0

    return v0
.end method

.method public hasShadow()Z
    .registers 3

    .prologue
    .line 412
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nHasShadow(J)Z

    move-result v0

    return v0
.end method

.method public isPivotExplicitlySet()Z
    .registers 3

    .prologue
    .line 726
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nIsPivotExplicitlySet(J)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 276
    iget-boolean v0, p0, Landroid/view/RenderNode;->mValid:Z

    return v0
.end method

.method public offsetLeftAndRight(I)Z
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 822
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nOffsetLeftAndRight(JI)Z

    move-result v0

    return v0
.end method

.method public offsetTopAndBottom(I)Z
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 834
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nOffsetTopAndBottom(JI)Z

    move-result v0

    return v0
.end method

.method public output()V
    .registers 3

    .prologue
    .line 842
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nOutput(J)V

    .line 843
    return-void
.end method

.method public setAlpha(F)Z
    .registers 4
    .param p1, "alpha"    # F

    .prologue
    .line 468
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetAlpha(JF)Z

    move-result v0

    return v0
.end method

.method public setAnimationMatrix(Landroid/graphics/Matrix;)Z
    .registers 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 455
    iget-wide v2, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    if-eqz p1, :cond_b

    iget-wide v0, p1, Landroid/graphics/Matrix;->native_instance:J

    :goto_6
    invoke-static {v2, v3, v0, v1}, Landroid/view/RenderNode;->nSetAnimationMatrix(JJ)Z

    move-result v0

    return v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_6
.end method

.method public setBottom(I)Z
    .registers 4
    .param p1, "bottom"    # I

    .prologue
    .line 793
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetBottom(JI)Z

    move-result v0

    return v0
.end method

.method public setCameraDistance(F)Z
    .registers 4
    .param p1, "distance"    # F

    .prologue
    .line 740
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetCameraDistance(JF)Z

    move-result v0

    return v0
.end method

.method public setClipBounds(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 353
    if-nez p1, :cond_9

    .line 354
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nSetClipBoundsEmpty(J)Z

    move-result v0

    .line 356
    :goto_8
    return v0

    :cond_9
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Landroid/view/RenderNode;->nSetClipBounds(JIIII)Z

    move-result v0

    goto :goto_8
.end method

.method public setClipToBounds(Z)Z
    .registers 4
    .param p1, "clipToBounds"    # Z

    .prologue
    .line 367
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetClipToBounds(JZ)Z

    move-result v0

    return v0
.end method

.method public setClipToOutline(Z)Z
    .registers 4
    .param p1, "clipToOutline"    # Z

    .prologue
    .line 421
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetClipToOutline(JZ)Z

    move-result v0

    return v0
.end method

.method public setElevation(F)Z
    .registers 4
    .param p1, "lift"    # F

    .prologue
    .line 510
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetElevation(JF)Z

    move-result v0

    return v0
.end method

.method public setHasOverlappingRendering(Z)Z
    .registers 4
    .param p1, "hasOverlappingRendering"    # Z

    .prologue
    .line 494
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetHasOverlappingRendering(JZ)Z

    move-result v0

    return v0
.end method

.method setImageFilter(Landroid/graphics/ImageFilter;)V
    .registers 9
    .param p1, "filter"    # Landroid/graphics/ImageFilter;

    .prologue
    .line 307
    iget-wide v2, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v2, v3}, Landroid/view/RenderNode;->nClearImageFilters(J)V

    .line 308
    if-eqz p1, :cond_2b

    .line 309
    instance-of v2, p1, Landroid/graphics/ImageFilterSet;

    if-eqz v2, :cond_23

    move-object v0, p1

    .line 310
    check-cast v0, Landroid/graphics/ImageFilterSet;

    .line 311
    .local v0, "filterSet":Landroid/graphics/ImageFilterSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    invoke-virtual {v0}, Landroid/graphics/ImageFilterSet;->getFilterCount()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 312
    iget-wide v2, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-virtual {v0, v1}, Landroid/graphics/ImageFilterSet;->getFilterAt(I)Landroid/graphics/ImageFilter;

    move-result-object v4

    iget-wide v4, v4, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    invoke-static {v2, v3, v4, v5, v1}, Landroid/view/RenderNode;->nSetImageFilter(JJI)V

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 316
    .end local v0    # "filterSet":Landroid/graphics/ImageFilterSet;
    .end local v1    # "i":I
    :cond_23
    iget-wide v2, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-wide v4, p1, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/view/RenderNode;->nSetImageFilter(JJI)V

    .line 319
    :cond_2b
    return-void
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)Z
    .registers 6
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 349
    iget-wide v2, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    if-eqz p1, :cond_b

    iget-wide v0, p1, Landroid/graphics/Paint;->mNativePaint:J

    :goto_6
    invoke-static {v2, v3, v0, v1}, Landroid/view/RenderNode;->nSetLayerPaint(JJ)Z

    move-result v0

    return v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_6
.end method

.method public setLayerType(I)Z
    .registers 4
    .param p1, "layerType"    # I

    .prologue
    .line 345
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetLayerType(JI)Z

    move-result v0

    return v0
.end method

.method public setLeft(I)Z
    .registers 4
    .param p1, "left"    # I

    .prologue
    .line 760
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetLeft(JI)Z

    move-result v0

    return v0
.end method

.method public setLeftTopRightBottom(IIII)Z
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 810
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/RenderNode;->nSetLeftTopRightBottom(JIIII)Z

    move-result v0

    return v0
.end method

.method public setOutline(Landroid/graphics/Outline;)Z
    .registers 10
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 397
    if-nez p1, :cond_9

    .line 398
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nSetOutlineNone(J)Z

    move-result v0

    .line 405
    :goto_8
    return v0

    .line 399
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 400
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nSetOutlineEmpty(J)Z

    move-result v0

    goto :goto_8

    .line 401
    :cond_16
    iget-object v0, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_35

    .line 402
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-object v2, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Outline;->mRadius:F

    iget v7, p1, Landroid/graphics/Outline;->mAlpha:F

    invoke-static/range {v0 .. v7}, Landroid/view/RenderNode;->nSetOutlineRoundRect(JIIIIFF)Z

    move-result v0

    goto :goto_8

    .line 404
    :cond_35
    iget-object v0, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_46

    .line 405
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-object v2, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    iget-wide v2, v2, Landroid/graphics/Path;->mNativePath:J

    iget v4, p1, Landroid/graphics/Outline;->mAlpha:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/RenderNode;->nSetOutlineConvexPath(JJF)Z

    move-result v0

    goto :goto_8

    .line 408
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized outline?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPivotX(F)Z
    .registers 4
    .param p1, "pivotX"    # F

    .prologue
    .line 692
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetPivotX(JF)Z

    move-result v0

    return v0
.end method

.method public setPivotY(F)Z
    .registers 4
    .param p1, "pivotY"    # F

    .prologue
    .line 713
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetPivotY(JF)Z

    move-result v0

    return v0
.end method

.method public setProjectBackwards(Z)Z
    .registers 4
    .param p1, "shouldProject"    # Z

    .prologue
    .line 378
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetProjectBackwards(JZ)Z

    move-result v0

    return v0
.end method

.method public setProjectionReceiver(Z)Z
    .registers 4
    .param p1, "shouldRecieve"    # Z

    .prologue
    .line 387
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetProjectionReceiver(JZ)Z

    move-result v0

    return v0
.end method

.method public setRevealClip(ZFFF)Z
    .registers 11
    .param p1, "shouldClip"    # Z
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "radius"    # F

    .prologue
    .line 433
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/RenderNode;->nSetRevealClip(JZFFF)Z

    move-result v0

    return v0
.end method

.method public setRight(I)Z
    .registers 4
    .param p1, "right"    # I

    .prologue
    .line 782
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetRight(JI)Z

    move-result v0

    return v0
.end method

.method public setRotation(F)Z
    .registers 4
    .param p1, "rotation"    # F

    .prologue
    .line 587
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetRotation(JF)Z

    move-result v0

    return v0
.end method

.method public setRotationX(F)Z
    .registers 4
    .param p1, "rotationX"    # F

    .prologue
    .line 608
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetRotationX(JF)Z

    move-result v0

    return v0
.end method

.method public setRotationY(F)Z
    .registers 4
    .param p1, "rotationY"    # F

    .prologue
    .line 629
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetRotationY(JF)Z

    move-result v0

    return v0
.end method

.method public setScaleX(F)Z
    .registers 4
    .param p1, "scaleX"    # F

    .prologue
    .line 650
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetScaleX(JF)Z

    move-result v0

    return v0
.end method

.method public setScaleY(F)Z
    .registers 4
    .param p1, "scaleY"    # F

    .prologue
    .line 671
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetScaleY(JF)Z

    move-result v0

    return v0
.end method

.method public setStaticMatrix(Landroid/graphics/Matrix;)Z
    .registers 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 443
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNode;->nSetStaticMatrix(JJ)Z

    move-result v0

    return v0
.end method

.method public setTop(I)Z
    .registers 4
    .param p1, "top"    # I

    .prologue
    .line 771
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetTop(JI)Z

    move-result v0

    return v0
.end method

.method public setTranslationX(F)Z
    .registers 4
    .param p1, "translationX"    # F

    .prologue
    .line 526
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetTranslationX(JF)Z

    move-result v0

    return v0
.end method

.method public setTranslationY(F)Z
    .registers 4
    .param p1, "translationY"    # F

    .prologue
    .line 547
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetTranslationY(JF)Z

    move-result v0

    return v0
.end method

.method public setTranslationZ(F)Z
    .registers 4
    .param p1, "translationZ"    # F

    .prologue
    .line 566
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetTranslationZ(JF)Z

    move-result v0

    return v0
.end method

.method public start(II)Landroid/view/HardwareCanvas;
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 230
    invoke-static {p0}, Landroid/view/GLES20RecordingCanvas;->obtain(Landroid/view/RenderNode;)Landroid/view/GLES20RecordingCanvas;

    move-result-object v0

    .line 231
    .local v0, "canvas":Landroid/view/HardwareCanvas;
    invoke-virtual {v0, p1, p2}, Landroid/view/HardwareCanvas;->setViewport(II)V

    .line 233
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/HardwareCanvas;->onPreDraw(Landroid/graphics/Rect;)I

    .line 234
    return-object v0
.end method
