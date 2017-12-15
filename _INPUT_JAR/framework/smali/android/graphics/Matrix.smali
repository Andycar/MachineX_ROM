.class public Landroid/graphics/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Matrix$ScaleToFit;
    }
.end annotation


# static fields
.field public static IDENTITY_MATRIX:Landroid/graphics/Matrix; = null

.field public static final MPERSP_0:I = 0x6

.field public static final MPERSP_1:I = 0x7

.field public static final MPERSP_2:I = 0x8

.field public static final MSCALE_X:I = 0x0

.field public static final MSCALE_Y:I = 0x4

.field public static final MSKEW_X:I = 0x1

.field public static final MSKEW_Y:I = 0x3

.field public static final MTRANS_X:I = 0x2

.field public static final MTRANS_Y:I = 0x5


# instance fields
.field public native_instance:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Landroid/graphics/Matrix$1;

    invoke-direct {v0}, Landroid/graphics/Matrix$1;-><init>()V

    sput-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_create(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "src"    # Landroid/graphics/Matrix;

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    if-eqz p1, :cond_e

    iget-wide v0, p1, Landroid/graphics/Matrix;->native_instance:J

    :goto_7
    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_create(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    .line 237
    return-void

    .line 236
    :cond_e
    const-wide/16 v0, 0x0

    goto :goto_7
.end method

.method private static checkPointArrays([FI[FII)V
    .registers 8
    .param p0, "src"    # [F
    .param p1, "srcIndex"    # I
    .param p2, "dst"    # [F
    .param p3, "dstIndex"    # I
    .param p4, "pointCount"    # I

    .prologue
    .line 583
    shl-int/lit8 v2, p4, 0x1

    add-int v1, p1, v2

    .line 584
    .local v1, "srcStop":I
    shl-int/lit8 v2, p4, 0x1

    add-int v0, p3, v2

    .line 585
    .local v0, "dstStop":I
    or-int v2, p4, p1

    or-int/2addr v2, p3

    or-int/2addr v2, v1

    or-int/2addr v2, v0

    if-ltz v2, :cond_15

    array-length v2, p0

    if-gt v1, v2, :cond_15

    array-length v2, p2

    if-le v0, v2, :cond_1b

    .line 587
    :cond_15
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 589
    :cond_1b
    return-void
.end method

.method private static native finalizer(J)V
.end method

.method private static native native_create(J)J
.end method

.method private static native native_equals(JJ)Z
.end method

.method private static native native_getValues(J[F)V
.end method

.method private static native native_invert(JJ)Z
.end method

.method private static native native_isAffine(J)Z
.end method

.method private static native native_isIdentity(J)Z
.end method

.method private static native native_mapPoints(J[FI[FIIZ)V
.end method

.method private static native native_mapRadius(JF)F
.end method

.method private static native native_mapRect(JLandroid/graphics/RectF;Landroid/graphics/RectF;)Z
.end method

.method private static native native_postConcat(JJ)V
.end method

.method private static native native_postRotate(JF)V
.end method

.method private static native native_postRotate(JFFF)V
.end method

.method private static native native_postScale(JFF)V
.end method

.method private static native native_postScale(JFFFF)V
.end method

.method private static native native_postSkew(JFF)V
.end method

.method private static native native_postSkew(JFFFF)V
.end method

.method private static native native_postTranslate(JFF)V
.end method

.method private static native native_preConcat(JJ)V
.end method

.method private static native native_preRotate(JF)V
.end method

.method private static native native_preRotate(JFFF)V
.end method

.method private static native native_preScale(JFF)V
.end method

.method private static native native_preScale(JFFFF)V
.end method

.method private static native native_preSkew(JFF)V
.end method

.method private static native native_preSkew(JFFFF)V
.end method

.method private static native native_preTranslate(JFF)V
.end method

.method private static native native_rectStaysRect(J)Z
.end method

.method private static native native_reset(J)V
.end method

.method private static native native_set(JJ)V
.end method

.method private static native native_setConcat(JJJ)V
.end method

.method private static native native_setPolyToPoly(J[FI[FII)Z
.end method

.method private static native native_setRectToRect(JLandroid/graphics/RectF;Landroid/graphics/RectF;I)Z
.end method

.method private static native native_setRotate(JF)V
.end method

.method private static native native_setRotate(JFFF)V
.end method

.method private static native native_setScale(JFF)V
.end method

.method private static native native_setScale(JFFFF)V
.end method

.method private static native native_setSinCos(JFF)V
.end method

.method private static native native_setSinCos(JFFFF)V
.end method

.method private static native native_setSkew(JFF)V
.end method

.method private static native native_setSkew(JFFFF)V
.end method

.method private static native native_setTranslate(JFF)V
.end method

.method private static native native_setValues(J[F)V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 283
    instance-of v0, p1, Landroid/graphics/Matrix;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 284
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_5
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_6
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    check-cast p1, Landroid/graphics/Matrix;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->native_equals(JJ)Z

    move-result v0

    goto :goto_5
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 829
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->finalizer(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 831
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 833
    return-void

    .line 831
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getValues([F)V
    .registers 4
    .param p1, "values"    # [F

    .prologue
    .line 759
    array-length v0, p1

    const/16 v1, 0x9

    if-ge v0, v1, :cond_b

    .line 760
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 762
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->native_getValues(J[F)V

    .line 763
    return-void
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 293
    const/16 v0, 0x2c

    return v0
.end method

.method public invert(Landroid/graphics/Matrix;)Z
    .registers 6
    .param p1, "inverse"    # Landroid/graphics/Matrix;

    .prologue
    .line 620
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->native_invert(JJ)Z

    move-result v0

    return v0
.end method

.method public isAffine()Z
    .registers 3

    .prologue
    .line 254
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_isAffine(J)Z

    move-result v0

    return v0
.end method

.method public isIdentity()Z
    .registers 3

    .prologue
    .line 244
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_isIdentity(J)Z

    move-result v0

    return v0
.end method

.method public mapPoints([F)V
    .registers 8
    .param p1, "pts"    # [F

    .prologue
    const/4 v2, 0x0

    .line 703
    array-length v0, p1

    shr-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 704
    return-void
.end method

.method public mapPoints([FI[FII)V
    .registers 14
    .param p1, "dst"    # [F
    .param p2, "dstIndex"    # I
    .param p3, "src"    # [F
    .param p4, "srcIndex"    # I
    .param p5, "pointCount"    # I

    .prologue
    .line 636
    invoke-static {p3, p4, p1, p2, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    .line 637
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    const/4 v7, 0x1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Matrix;->native_mapPoints(J[FI[FIIZ)V

    .line 639
    return-void
.end method

.method public mapPoints([F[F)V
    .registers 9
    .param p1, "dst"    # [F
    .param p2, "src"    # [F

    .prologue
    const/4 v2, 0x0

    .line 672
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_b

    .line 673
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 675
    :cond_b
    array-length v0, p1

    shr-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 676
    return-void
.end method

.method public mapRadius(F)F
    .registers 4
    .param p1, "radius"    # F

    .prologue
    .line 753
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->native_mapRadius(JF)F

    move-result v0

    return v0
.end method

.method public mapRect(Landroid/graphics/RectF;)Z
    .registers 3
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 744
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 5
    .param p1, "dst"    # Landroid/graphics/RectF;
    .param p2, "src"    # Landroid/graphics/RectF;

    .prologue
    .line 729
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 730
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 732
    :cond_a
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_mapRect(JLandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public mapVectors([F)V
    .registers 8
    .param p1, "vecs"    # [F

    .prologue
    const/4 v2, 0x0

    .line 716
    array-length v0, p1

    shr-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapVectors([FI[FII)V

    .line 717
    return-void
.end method

.method public mapVectors([FI[FII)V
    .registers 14
    .param p1, "dst"    # [F
    .param p2, "dstIndex"    # I
    .param p3, "src"    # [F
    .param p4, "srcIndex"    # I
    .param p5, "vectorCount"    # I

    .prologue
    .line 658
    invoke-static {p3, p4, p1, p2, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    .line 659
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Matrix;->native_mapPoints(J[FI[FIIZ)V

    .line 661
    return-void
.end method

.method public mapVectors([F[F)V
    .registers 9
    .param p1, "dst"    # [F
    .param p2, "src"    # [F

    .prologue
    const/4 v2, 0x0

    .line 690
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_b

    .line 691
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 693
    :cond_b
    array-length v0, p1

    shr-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapVectors([FI[FII)V

    .line 694
    return-void
.end method

.method final ni()J
    .registers 3

    .prologue
    .line 836
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    return-wide v0
.end method

.method public postConcat(Landroid/graphics/Matrix;)Z
    .registers 6
    .param p1, "other"    # Landroid/graphics/Matrix;

    .prologue
    .line 520
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->native_postConcat(JJ)V

    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method public postRotate(F)Z
    .registers 4
    .param p1, "degrees"    # F

    .prologue
    .line 493
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->native_postRotate(JF)V

    .line 494
    const/4 v0, 0x1

    return v0
.end method

.method public postRotate(FFF)Z
    .registers 6
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    .line 484
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Matrix;->native_postRotate(JFFF)V

    .line 485
    const/4 v0, 0x1

    return v0
.end method

.method public postScale(FF)Z
    .registers 5
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 475
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_postScale(JFF)V

    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method public postScale(FFFF)Z
    .registers 11
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 466
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->native_postScale(JFFFF)V

    .line 467
    const/4 v0, 0x1

    return v0
.end method

.method public postSkew(FF)Z
    .registers 5
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .prologue
    .line 511
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_postSkew(JFF)V

    .line 512
    const/4 v0, 0x1

    return v0
.end method

.method public postSkew(FFFF)Z
    .registers 11
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 502
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->native_postSkew(JFFFF)V

    .line 503
    const/4 v0, 0x1

    return v0
.end method

.method public postTranslate(FF)Z
    .registers 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 457
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_postTranslate(JFF)V

    .line 458
    const/4 v0, 0x1

    return v0
.end method

.method public preConcat(Landroid/graphics/Matrix;)Z
    .registers 6
    .param p1, "other"    # Landroid/graphics/Matrix;

    .prologue
    .line 448
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->native_preConcat(JJ)V

    .line 449
    const/4 v0, 0x1

    return v0
.end method

.method public preRotate(F)Z
    .registers 4
    .param p1, "degrees"    # F

    .prologue
    .line 421
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->native_preRotate(JF)V

    .line 422
    const/4 v0, 0x1

    return v0
.end method

.method public preRotate(FFF)Z
    .registers 6
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    .line 412
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Matrix;->native_preRotate(JFFF)V

    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method public preScale(FF)Z
    .registers 5
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 403
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_preScale(JFF)V

    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public preScale(FFFF)Z
    .registers 11
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 394
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->native_preScale(JFFFF)V

    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method public preSkew(FF)Z
    .registers 5
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .prologue
    .line 439
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_preSkew(JFF)V

    .line 440
    const/4 v0, 0x1

    return v0
.end method

.method public preSkew(FFFF)Z
    .registers 11
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 430
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->native_preSkew(JFFFF)V

    .line 431
    const/4 v0, 0x1

    return v0
.end method

.method public preTranslate(FF)Z
    .registers 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 385
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_preTranslate(JFF)V

    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 814
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 815
    .local v0, "values":[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 816
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 817
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x1

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 818
    const/4 v1, 0x2

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 819
    const/4 v1, 0x3

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x4

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 820
    const/4 v1, 0x5

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 821
    const/4 v1, 0x6

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x7

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 822
    const/16 v1, 0x8

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 824
    return-void
.end method

.method public rectStaysRect()Z
    .registers 3

    .prologue
    .line 263
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_rectStaysRect(J)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 298
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->native_reset(J)V

    .line 299
    return-void
.end method

.method public set(Landroid/graphics/Matrix;)V
    .registers 6
    .param p1, "src"    # Landroid/graphics/Matrix;

    .prologue
    .line 271
    if-nez p1, :cond_6

    .line 272
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    .line 276
    :goto_5
    return-void

    .line 274
    :cond_6
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->native_set(JJ)V

    goto :goto_5
.end method

.method public setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .registers 9
    .param p1, "a"    # Landroid/graphics/Matrix;
    .param p2, "b"    # Landroid/graphics/Matrix;

    .prologue
    .line 376
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    iget-wide v4, p2, Landroid/graphics/Matrix;->native_instance:J

    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->native_setConcat(JJJ)V

    .line 377
    const/4 v0, 0x1

    return v0
.end method

.method public setPolyToPoly([FI[FII)Z
    .registers 13
    .param p1, "src"    # [F
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [F
    .param p4, "dstIndex"    # I
    .param p5, "pointCount"    # I

    .prologue
    .line 606
    const/4 v0, 0x4

    if-le p5, v0, :cond_9

    .line 607
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 609
    :cond_9
    invoke-static {p1, p2, p3, p4, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    .line 610
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Matrix;->native_setPolyToPoly(J[FI[FII)Z

    move-result v0

    return v0
.end method

.method public setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .registers 7
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "stf"    # Landroid/graphics/Matrix$ScaleToFit;

    .prologue
    .line 572
    if-eqz p2, :cond_4

    if-nez p1, :cond_a

    .line 573
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 575
    :cond_a
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    iget v2, p3, Landroid/graphics/Matrix$ScaleToFit;->nativeInt:I

    invoke-static {v0, v1, p1, p2, v2}, Landroid/graphics/Matrix;->native_setRectToRect(JLandroid/graphics/RectF;Landroid/graphics/RectF;I)Z

    move-result v0

    return v0
.end method

.method public setRotate(F)V
    .registers 4
    .param p1, "degrees"    # F

    .prologue
    .line 333
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->native_setRotate(JF)V

    .line 334
    return-void
.end method

.method public setRotate(FFF)V
    .registers 6
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    .line 326
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Matrix;->native_setRotate(JFFF)V

    .line 327
    return-void
.end method

.method public setScale(FF)V
    .registers 5
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 317
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_setScale(JFF)V

    .line 318
    return-void
.end method

.method public setScale(FFFF)V
    .registers 11
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 312
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->native_setScale(JFFFF)V

    .line 313
    return-void
.end method

.method public setSinCos(FF)V
    .registers 5
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F

    .prologue
    .line 347
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_setSinCos(JFF)V

    .line 348
    return-void
.end method

.method public setSinCos(FFFF)V
    .registers 11
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 342
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->native_setSinCos(JFFFF)V

    .line 343
    return-void
.end method

.method public setSkew(FF)V
    .registers 5
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .prologue
    .line 361
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_setSkew(JFF)V

    .line 362
    return-void
.end method

.method public setSkew(FFFF)V
    .registers 11
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 356
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->native_setSkew(JFFFF)V

    .line 357
    return-void
.end method

.method public setTranslate(FF)V
    .registers 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 303
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->native_setTranslate(JFF)V

    .line 304
    return-void
.end method

.method public setValues([F)V
    .registers 4
    .param p1, "values"    # [F

    .prologue
    .line 772
    array-length v0, p1

    const/16 v1, 0x9

    if-ge v0, v1, :cond_b

    .line 773
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 775
    :cond_b
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->native_setValues(J[F)V

    .line 776
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 790
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    .line 791
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 798
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 799
    .local v0, "values":[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 800
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 801
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    const/4 v1, 0x2

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    const/4 v1, 0x3

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    const/4 v1, 0x5

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    const/4 v1, 0x6

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    const/16 v1, 0x8

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 807
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 781
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Matrix{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    .line 783
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
