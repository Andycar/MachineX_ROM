.class public Landroid/graphics/Path;
.super Ljava/lang/Object;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Path$Direction;,
        Landroid/graphics/Path$FillType;,
        Landroid/graphics/Path$Op;
    }
.end annotation


# static fields
.field static final sFillTypeArray:[Landroid/graphics/Path$FillType;


# instance fields
.field public isSimplePath:Z

.field private mLastDirection:Landroid/graphics/Path$Direction;

.field public final mNativePath:J

.field public rects:Landroid/graphics/Region;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 217
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Path$FillType;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 46
    invoke-static {}, Landroid/graphics/Path;->init1()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .registers 6
    .param p1, "src"    # Landroid/graphics/Path;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 40
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 55
    const-wide/16 v0, 0x0

    .line 56
    .local v0, "valNative":J
    if-eqz p1, :cond_20

    .line 57
    iget-wide v0, p1, Landroid/graphics/Path;->mNativePath:J

    .line 58
    iget-boolean v2, p1, Landroid/graphics/Path;->isSimplePath:Z

    iput-boolean v2, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 59
    iget-object v2, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v2, :cond_20

    .line 60
    new-instance v2, Landroid/graphics/Region;

    iget-object v3, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-direct {v2, v3}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v2, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 63
    :cond_20
    invoke-static {v0, v1}, Landroid/graphics/Path;->init2(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    .line 64
    return-void
.end method

.method private detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V
    .registers 12
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    .prologue
    .line 500
    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    if-nez v0, :cond_6

    .line 501
    iput-object p5, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 503
    :cond_6
    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    if-eq v0, p5, :cond_e

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 509
    :goto_d
    return-void

    .line 506
    :cond_e
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-nez v0, :cond_19

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 507
    :cond_19
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    float-to-int v1, p1

    float-to-int v2, p2

    float-to-int v3, p3

    float-to-int v4, p4

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_d
.end method

.method private static native finalizer(J)V
.end method

.method private static native init1()J
.end method

.method private static native init2(J)J
.end method

.method private static native native_addArc(JFFFFFF)V
.end method

.method private static native native_addCircle(JFFFI)V
.end method

.method private static native native_addOval(JFFFFI)V
.end method

.method private static native native_addPath(JJ)V
.end method

.method private static native native_addPath(JJFF)V
.end method

.method private static native native_addPath(JJJ)V
.end method

.method private static native native_addRect(JFFFFI)V
.end method

.method private static native native_addRoundRect(JFFFFFFI)V
.end method

.method private static native native_addRoundRect(JFFFF[FI)V
.end method

.method private static native native_approximate(JF)[F
.end method

.method private static native native_arcTo(JFFFFFFZ)V
.end method

.method private static native native_close(J)V
.end method

.method private static native native_computeBounds(JLandroid/graphics/RectF;)V
.end method

.method private static native native_cubicTo(JFFFFFF)V
.end method

.method private static native native_getFillType(J)I
.end method

.method private static native native_incReserve(JI)V
.end method

.method private static native native_isConvex(J)Z
.end method

.method private static native native_isEmpty(J)Z
.end method

.method private static native native_isRect(JLandroid/graphics/RectF;)Z
.end method

.method private static native native_lineTo(JFF)V
.end method

.method private static native native_moveTo(JFF)V
.end method

.method private static native native_offset(JFF)V
.end method

.method private static native native_offset(JFFJ)V
.end method

.method private static native native_op(JJIJ)Z
.end method

.method private static native native_quadTo(JFFFF)V
.end method

.method private static native native_rCubicTo(JFFFFFF)V
.end method

.method private static native native_rLineTo(JFF)V
.end method

.method private static native native_rMoveTo(JFF)V
.end method

.method private static native native_rQuadTo(JFFFF)V
.end method

.method private static native native_reset(J)V
.end method

.method private static native native_rewind(J)V
.end method

.method private static native native_set(JJ)V
.end method

.method private static native native_setFillType(JI)V
.end method

.method private static native native_setLastPoint(JFF)V
.end method

.method private static native native_transform(JJ)V
.end method

.method private static native native_transform(JJJ)V
.end method


# virtual methods
.method public addArc(FFFFFF)V
    .registers 15
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .prologue
    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 588
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/Path;->native_addArc(JFFFFFF)V

    .line 589
    return-void
.end method

.method public addArc(Landroid/graphics/RectF;FF)V
    .registers 11
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F

    .prologue
    .line 576
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addArc(FFFFFF)V

    .line 577
    return-void
.end method

.method public addCircle(FFFLandroid/graphics/Path$Direction;)V
    .registers 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "dir"    # Landroid/graphics/Path$Direction;

    .prologue
    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 565
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget v5, p4, Landroid/graphics/Path$Direction;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_addCircle(JFFFI)V

    .line 566
    return-void
.end method

.method public addOval(FFFFLandroid/graphics/Path$Direction;)V
    .registers 13
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    .prologue
    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 552
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget v6, p5, Landroid/graphics/Path$Direction;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->native_addOval(JFFFFI)V

    .line 553
    return-void
.end method

.method public addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .registers 9
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "dir"    # Landroid/graphics/Path$Direction;

    .prologue
    .line 542
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    .line 543
    return-void
.end method

.method public addPath(Landroid/graphics/Path;)V
    .registers 6
    .param p1, "src"    # Landroid/graphics/Path;

    .prologue
    .line 666
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 667
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->native_addPath(JJ)V

    .line 668
    return-void
.end method

.method public addPath(Landroid/graphics/Path;FF)V
    .registers 10
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    .line 656
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 657
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_addPath(JJFF)V

    .line 658
    return-void
.end method

.method public addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .registers 9
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 676
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 677
    :cond_7
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    iget-wide v4, p2, Landroid/graphics/Matrix;->native_instance:J

    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_addPath(JJJ)V

    .line 678
    return-void
.end method

.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .registers 13
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    .prologue
    .line 531
    invoke-direct/range {p0 .. p5}, Landroid/graphics/Path;->detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V

    .line 532
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget v6, p5, Landroid/graphics/Path$Direction;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->native_addRect(JFFFFI)V

    .line 533
    return-void
.end method

.method public addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .registers 9
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "dir"    # Landroid/graphics/Path$Direction;

    .prologue
    .line 518
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 519
    return-void
.end method

.method public addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V
    .registers 19
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "dir"    # Landroid/graphics/Path$Direction;

    .prologue
    .line 612
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 613
    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    move-object/from16 v0, p7

    iget v10, v0, Landroid/graphics/Path$Direction;->nativeInt:I

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v10}, Landroid/graphics/Path;->native_addRoundRect(JFFFFFFI)V

    .line 614
    return-void
.end method

.method public addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V
    .registers 15
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "radii"    # [F
    .param p6, "dir"    # Landroid/graphics/Path$Direction;

    .prologue
    .line 642
    array-length v0, p5

    const/16 v1, 0x8

    if-ge v0, v1, :cond_e

    .line 643
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "radii[] needs 8 values"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 646
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget v7, p6, Landroid/graphics/Path$Direction;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Path;->native_addRoundRect(JFFFF[FI)V

    .line 647
    return-void
.end method

.method public addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V
    .registers 13
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "dir"    # Landroid/graphics/Path$Direction;

    .prologue
    .line 600
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 601
    return-void
.end method

.method public addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V
    .registers 11
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "radii"    # [F
    .param p3, "dir"    # Landroid/graphics/Path$Direction;

    .prologue
    .line 626
    if-nez p1, :cond_b

    .line 627
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need rect parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_b
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 630
    return-void
.end method

.method public approximate(F)[F
    .registers 4
    .param p1, "acceptableError"    # F

    .prologue
    .line 777
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->native_approximate(JF)[F

    move-result-object v0

    return-object v0
.end method

.method public arcTo(FFFFFFZ)V
    .registers 17
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "forceMoveTo"    # Z

    .prologue
    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 471
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Path;->native_arcTo(JFFFFFFZ)V

    .line 472
    return-void
.end method

.method public arcTo(Landroid/graphics/RectF;FF)V
    .registers 12
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F

    .prologue
    .line 453
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    const/4 v7, 0x0

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 454
    return-void
.end method

.method public arcTo(Landroid/graphics/RectF;FFZ)V
    .registers 13
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "forceMoveTo"    # Z

    .prologue
    .line 438
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 439
    return-void
.end method

.method public close()V
    .registers 3

    .prologue
    .line 479
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 480
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->native_close(J)V

    .line 481
    return-void
.end method

.method public computeBounds(Landroid/graphics/RectF;Z)V
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "exact"    # Z

    .prologue
    .line 294
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->native_computeBounds(JLandroid/graphics/RectF;)V

    .line 295
    return-void
.end method

.method public cubicTo(FFFFFF)V
    .registers 15
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .prologue
    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 409
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/Path;->native_cubicTo(JFFFFFF)V

    .line 410
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
    .line 748
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->finalizer(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 750
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 752
    return-void

    .line 750
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .registers 5

    .prologue
    .line 231
    sget-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v2, v3}, Landroid/graphics/Path;->native_getFillType(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public incReserve(I)V
    .registers 4
    .param p1, "extraPtCount"    # I

    .prologue
    .line 305
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->native_incReserve(JI)V

    .line 306
    return-void
.end method

.method public isConvex()Z
    .registers 3

    .prologue
    .line 182
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->native_isConvex(J)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 268
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->native_isEmpty(J)Z

    move-result v0

    return v0
.end method

.method public isInverseFillType()Z
    .registers 5

    .prologue
    .line 249
    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v2, v3}, Landroid/graphics/Path;->native_getFillType(J)I

    move-result v0

    .line 250
    .local v0, "ft":I
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    iget v1, v1, Landroid/graphics/Path$FillType;->nativeInt:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public isRect(Landroid/graphics/RectF;)Z
    .registers 4
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 281
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->native_isRect(JLandroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public lineTo(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 342
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->native_lineTo(JFF)V

    .line 343
    return-void
.end method

.method public moveTo(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 315
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->native_moveTo(JFF)V

    .line 316
    return-void
.end method

.method final ni()J
    .registers 3

    .prologue
    .line 755
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    return-wide v0
.end method

.method public offset(FF)V
    .registers 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 704
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 705
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->native_offset(JFF)V

    .line 706
    return-void
.end method

.method public offset(FFLandroid/graphics/Path;)V
    .registers 10
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "dst"    # Landroid/graphics/Path;

    .prologue
    .line 689
    const-wide/16 v4, 0x0

    .line 690
    .local v4, "dstNative":J
    if-eqz p3, :cond_9

    .line 691
    iget-wide v4, p3, Landroid/graphics/Path;->mNativePath:J

    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p3, Landroid/graphics/Path;->isSimplePath:Z

    .line 694
    :cond_9
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_offset(JFFJ)V

    .line 695
    return-void
.end method

.method public op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    .registers 4
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Landroid/graphics/Path$Op;

    .prologue
    .line 144
    invoke-virtual {p0, p0, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    move-result v0

    return v0
.end method

.method public op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    .registers 12
    .param p1, "path1"    # Landroid/graphics/Path;
    .param p2, "path2"    # Landroid/graphics/Path;
    .param p3, "op"    # Landroid/graphics/Path$Op;

    .prologue
    const/4 v7, 0x0

    .line 162
    iget-wide v0, p1, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p2, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {p3}, Landroid/graphics/Path$Op;->ordinal()I

    move-result v4

    iget-wide v5, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->native_op(JJIJ)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 163
    iput-boolean v7, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 165
    const/4 v0, 0x1

    .line 167
    :goto_17
    return v0

    :cond_18
    move v0, v7

    goto :goto_17
.end method

.method public quadTo(FFFF)V
    .registers 11
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 372
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_quadTo(JFFFF)V

    .line 373
    return-void
.end method

.method public rCubicTo(FFFFFF)V
    .registers 15
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .prologue
    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 420
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/Path;->native_rCubicTo(JFFFFFF)V

    .line 421
    return-void
.end method

.method public rLineTo(FF)V
    .registers 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 357
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->native_rLineTo(JFF)V

    .line 358
    return-void
.end method

.method public rMoveTo(FF)V
    .registers 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 329
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->native_rMoveTo(JFF)V

    .line 330
    return-void
.end method

.method public rQuadTo(FFFF)V
    .registers 11
    .param p1, "dx1"    # F
    .param p2, "dy1"    # F
    .param p3, "dx2"    # F
    .param p4, "dy2"    # F

    .prologue
    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 391
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_rQuadTo(JFFFF)V

    .line 392
    return-void
.end method

.method public reset()V
    .registers 5

    .prologue
    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 73
    iget-object v1, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 76
    :cond_f
    invoke-virtual {p0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v0

    .line 77
    .local v0, "fillType":Landroid/graphics/Path$FillType;
    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v2, v3}, Landroid/graphics/Path;->native_reset(J)V

    .line 78
    invoke-virtual {p0, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 79
    return-void
.end method

.method public rewind()V
    .registers 3

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 88
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 89
    :cond_f
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->native_rewind(J)V

    .line 90
    return-void
.end method

.method public set(Landroid/graphics/Path;)V
    .registers 6
    .param p1, "src"    # Landroid/graphics/Path;

    .prologue
    .line 95
    if-eq p0, p1, :cond_d

    .line 96
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 97
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->native_set(JJ)V

    .line 99
    :cond_d
    return-void
.end method

.method public setFillType(Landroid/graphics/Path$FillType;)V
    .registers 5
    .param p1, "ft"    # Landroid/graphics/Path$FillType;

    .prologue
    .line 240
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget v2, p1, Landroid/graphics/Path$FillType;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Path;->native_setFillType(JI)V

    .line 241
    return-void
.end method

.method public setLastPoint(FF)V
    .registers 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 715
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 716
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->native_setLastPoint(JFF)V

    .line 717
    return-void
.end method

.method public toggleInverseFillType()V
    .registers 5

    .prologue
    .line 257
    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v2, v3}, Landroid/graphics/Path;->native_getFillType(J)I

    move-result v0

    .line 258
    .local v0, "ft":I
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    iget v1, v1, Landroid/graphics/Path$FillType;->nativeInt:I

    xor-int/2addr v0, v1

    .line 259
    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v2, v3, v0}, Landroid/graphics/Path;->native_setFillType(JI)V

    .line 260
    return-void
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .registers 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 742
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 743
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->native_transform(JJ)V

    .line 744
    return-void
.end method

.method public transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 9
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "dst"    # Landroid/graphics/Path;

    .prologue
    .line 728
    const-wide/16 v4, 0x0

    .line 729
    .local v4, "dstNative":J
    if-eqz p2, :cond_9

    .line 730
    const/4 v0, 0x0

    iput-boolean v0, p2, Landroid/graphics/Path;->isSimplePath:Z

    .line 731
    iget-wide v4, p2, Landroid/graphics/Path;->mNativePath:J

    .line 733
    :cond_9
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_transform(JJJ)V

    .line 734
    return-void
.end method
