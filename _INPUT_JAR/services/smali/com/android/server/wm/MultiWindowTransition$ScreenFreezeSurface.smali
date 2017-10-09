.class Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;
.super Ljava/lang/Object;
.source "MultiWindowTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenFreezeSurface"
.end annotation


# static fields
.field static final BACKGROUND_LAYER:I = 0x2af7

.field static final FREEZE_LAYER:I = 0x1e8481


# instance fields
.field mBGSurface:Landroid/view/SurfaceControl;

.field mRect:Landroid/graphics/Rect;

.field mRotation:I

.field mSurface:Landroid/view/SurfaceControl;

.field mTmpFloats:[F

.field mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;IIIIIIZ)V
    .registers 19
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "layerStack"    # I
    .param p7, "rotation"    # I
    .param p8, "needBG"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    .line 370
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 371
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    .line 373
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 374
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    .line 379
    sub-int v4, p4, p2

    .line 380
    .local v4, "w":I
    sub-int v5, p5, p3

    .line 382
    .local v5, "h":I
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 383
    move/from16 v0, p7

    iput v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    .line 390
    new-instance v1, Landroid/view/SurfaceControl;

    const-string v3, "ScreenFreezeSurface"

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 394
    if-eqz p8, :cond_44

    .line 400
    new-instance v1, Landroid/view/SurfaceControl;

    const-string v3, "ScreenFreezeBGSurface"

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    .line 406
    :cond_44
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_71

    .line 407
    new-instance v9, Landroid/view/Surface;

    invoke-direct {v9}, Landroid/view/Surface;-><init>()V

    .line 408
    .local v9, "sur":Landroid/view/Surface;
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 411
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, v9}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 412
    invoke-virtual {v9}, Landroid/view/Surface;->destroy()V

    .line 414
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 415
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const v2, 0x1e8481

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 417
    iget v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    packed-switch v1, :pswitch_data_138

    .line 437
    .end local v9    # "sur":Landroid/view/Surface;
    :cond_71
    :goto_71
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_9d

    .line 438
    new-instance v8, Landroid/view/Surface;

    invoke-direct {v8}, Landroid/view/Surface;-><init>()V

    .line 439
    .local v8, "bgSur":Landroid/view/Surface;
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 442
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 443
    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    .line 445
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 446
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/16 v2, 0x2af7

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 448
    iget v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    packed-switch v1, :pswitch_data_144

    .line 467
    .end local v8    # "bgSur":Landroid/view/Surface;
    :cond_9d
    :goto_9d
    return-void

    .line 419
    .restart local v9    # "sur":Landroid/view/Surface;
    :pswitch_9e
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 420
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_71

    .line 423
    :pswitch_b1
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    int-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 424
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_71

    .line 427
    :pswitch_c4
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v2, v4

    int-to-float v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 428
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_71

    .line 431
    :pswitch_d7
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v2, v5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 432
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_71

    .line 450
    .end local v9    # "sur":Landroid/view/Surface;
    .restart local v8    # "bgSur":Landroid/view/Surface;
    :pswitch_ea
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 451
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_9d

    .line 454
    :pswitch_fd
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    int-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 455
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_9d

    .line 458
    :pswitch_110
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    int-to-float v2, v4

    int-to-float v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 459
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_9d

    .line 462
    :pswitch_124
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    int-to-float v2, v5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 463
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_9d

    .line 417
    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_b1
        :pswitch_c4
        :pswitch_d7
    .end packed-switch

    .line 448
    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_ea
        :pswitch_fd
        :pswitch_110
        :pswitch_124
    .end packed-switch
.end method


# virtual methods
.method kill()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c

    .line 516
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 517
    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 520
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_17

    .line 521
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 522
    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    .line 524
    :cond_17
    return-void
.end method

.method setAnimationTransform(Landroid/view/animation/Transformation;)V
    .registers 12
    .param p1, "transformation"    # Landroid/view/animation/Transformation;

    .prologue
    .line 470
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 471
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v4

    .line 472
    .local v1, "left":F
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v4

    .line 473
    .local v2, "top":F
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v3, v4

    .line 474
    .local v3, "width":F
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v0, v4

    .line 477
    .local v0, "height":F
    iget v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    packed-switch v4, :pswitch_data_94

    .line 495
    :goto_26
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 496
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 498
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v9, 0x4

    aget v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 501
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 503
    return-void

    .line 479
    :pswitch_5f
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_26

    .line 482
    :pswitch_65
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 483
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v3, v2

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_26

    .line 486
    :pswitch_74
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 487
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v3, v1

    sub-float v6, v0, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_26

    .line 490
    :pswitch_85
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 491
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v0, v1

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_26

    .line 477
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_65
        :pswitch_74
        :pswitch_85
    .end packed-switch
.end method

.method show()V
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    .line 507
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 509
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_12

    .line 510
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 512
    :cond_12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
