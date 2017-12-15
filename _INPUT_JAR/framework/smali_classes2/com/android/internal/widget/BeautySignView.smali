.class public Lcom/android/internal/widget/BeautySignView;
.super Lcom/android/internal/widget/SignView;
.source "BeautySignView.java"


# static fields
.field protected static final DBG_BEAUTY:Z = false

.field protected static final DBG_TOUCH:Z = true

.field private static final MID:F = 0.5f

.field private static SPEED_MAX:F = 0.0f

.field private static SPEED_MIN:F = 0.0f

.field protected static final TAG:Ljava/lang/String; = "BeautySignView"

.field protected static final TOUCH_TOLERANCE_AGAIN:F = 10.0f

.field private static VELOCITY_FILTER_WEIGHT:F


# instance fields
.field private MAX_WIDTH:I

.field private mBeautyEffectInputData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/SignView$SignatureInput;",
            ">;"
        }
    .end annotation
.end field

.field private mBezierEnabled:Z

.field protected mBezierX:F

.field protected mBezierY:F

.field private mCurrentEndPoint:Landroid/graphics/Point;

.field private mCurrentStrokeWidth:F

.field private mInitWidthVarRatio:Z

.field private mLastDrawPoint:Landroid/graphics/Point;

.field private mLastPointTime:J

.field private mLastStrokeWidth:F

.field private mLastVelocity:F

.field private mMidControlPoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Lcom/android/internal/widget/BeautySignView;->VELOCITY_FILTER_WEIGHT:F

    .line 35
    const/high16 v0, 0x40800000    # 4.0f

    sput v0, Lcom/android/internal/widget/BeautySignView;->SPEED_MAX:F

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/internal/widget/BeautySignView;->SPEED_MIN:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SignView;-><init>(Landroid/content/Context;)V

    .line 39
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/widget/BeautySignView;->MAX_WIDTH:I

    .line 59
    return-void
.end method

.method private addToPathForDrawing(I)V
    .registers 18
    .param p1, "prevArraySize"    # I

    .prologue
    .line 254
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/BeautySignView;->mX:F

    .line 255
    .local v3, "drawX":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/BeautySignView;->mY:F

    .line 256
    .local v4, "drawY":F
    const/4 v9, 0x0

    .line 258
    .local v9, "velocity":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 261
    .local v2, "currentArraySize":I
    const-string v12, "BeautySignView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addToPathForDrawing from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    move/from16 v7, p1

    .local v7, "i":I
    :goto_37
    if-ge v7, v2, :cond_156

    .line 265
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 267
    .local v1, "addedPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    iget v10, v1, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    .line 268
    .local v10, "x":F
    iget v11, v1, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    .line 269
    .local v11, "y":F
    sub-float v12, v10, v3

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 270
    .local v5, "dx":F
    sub-float v12, v11, v4

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 272
    .local v6, "dy":F
    const/high16 v12, 0x41200000    # 10.0f

    cmpl-float v12, v5, v12

    if-gez v12, :cond_5f

    const/high16 v12, 0x41200000    # 10.0f

    cmpl-float v12, v6, v12

    if-ltz v12, :cond_12d

    .line 273
    :cond_5f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    add-float v13, v10, v3

    float-to-int v13, v13

    div-int/lit8 v13, v13, 0x2

    add-float v14, v11, v4

    float-to-int v14, v14

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Point;->set(II)V

    .line 274
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    float-to-int v13, v3

    float-to-int v14, v4

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Point;->set(II)V

    .line 280
    :goto_79
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/widget/BeautySignView;->getVelocityFrom(Landroid/graphics/Point;)F

    move-result v9

    .line 281
    sget v12, Lcom/android/internal/widget/BeautySignView;->VELOCITY_FILTER_WEIGHT:F

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f800000    # 1.0f

    sget v14, Lcom/android/internal/widget/BeautySignView;->VELOCITY_FILTER_WEIGHT:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/BeautySignView;->mLastVelocity:F

    mul-float/2addr v13, v14

    add-float v9, v12, v13

    .line 285
    sget v12, Lcom/android/internal/widget/BeautySignView;->SPEED_MAX:F

    cmpl-float v12, v9, v12

    if-lez v12, :cond_9a

    .line 286
    sget v9, Lcom/android/internal/widget/BeautySignView;->SPEED_MAX:F

    .line 288
    :cond_9a
    sget v12, Lcom/android/internal/widget/BeautySignView;->SPEED_MIN:F

    cmpg-float v12, v9, v12

    if-gez v12, :cond_a2

    .line 289
    sget v9, Lcom/android/internal/widget/BeautySignView;->SPEED_MIN:F

    .line 292
    :cond_a2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/widget/BeautySignView;->getStrokeWidth(F)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    .line 293
    const v8, 0x3e4ccccd    # 0.2f

    .line 294
    .local v8, "varLimit":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const v13, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    mul-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_e0

    .line 295
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_149

    .line 296
    const v12, 0x3f99999a    # 1.2f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    .line 304
    :cond_e0
    :goto_e0
    move v3, v10

    .line 305
    move v4, v11

    .line 307
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/BeautySignView;->mInitWidthVarRatio:Z

    if-nez v12, :cond_f0

    .line 308
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    .line 311
    :cond_f0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/BeautySignView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/BeautySignView;->mSignPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/internal/widget/BeautySignView;->drawBeautyEffect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 313
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/BeautySignView;->mInitWidthVarRatio:Z

    .line 314
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Point;->set(II)V

    .line 315
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/widget/BeautySignView;->mLastVelocity:F

    .line 316
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    .line 264
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_37

    .line 276
    .end local v8    # "varLimit":F
    :cond_12d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    float-to-int v13, v10

    float-to-int v14, v11

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Point;->set(II)V

    .line 277
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    add-float v13, v10, v3

    float-to-int v13, v13

    div-int/lit8 v13, v13, 0x2

    add-float v14, v11, v4

    float-to-int v14, v14

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_79

    .line 298
    .restart local v8    # "varLimit":F
    :cond_149
    const v12, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    goto :goto_e0

    .line 319
    .end local v1    # "addedPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v8    # "varLimit":F
    .end local v10    # "x":F
    .end local v11    # "y":F
    :cond_156
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/BeautySignView;->mX:F

    .line 320
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/BeautySignView;->mY:F

    .line 321
    return-void
.end method

.method private distanceTo(Landroid/graphics/Point;)F
    .registers 6
    .param p1, "end"    # Landroid/graphics/Point;

    .prologue
    .line 331
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private drawBeautyEffect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "startWidth"    # F
    .param p4, "endWidth"    # F

    .prologue
    .line 347
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    .line 348
    .local v2, "originalWidth":F
    sub-float v7, p4, p3

    .line 350
    .local v7, "widthDelta":F
    iget-object v10, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    iget-object v12, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v0, v10

    .line 352
    .local v0, "drawSteps":F
    iget-object v10, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    iget-object v12, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    add-float/2addr v0, v10

    .line 354
    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v0, v10

    .line 359
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_43
    float-to-int v10, v0

    if-ge v1, v10, :cond_90

    .line 361
    int-to-float v10, v1

    div-float v3, v10, v0

    .line 362
    .local v3, "t":F
    mul-float v4, v3, v3

    .line 363
    .local v4, "tt":F
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v5, v10, v3

    .line 364
    .local v5, "u":F
    mul-float v6, v5, v5

    .line 366
    .local v6, "uu":F
    iget-object v10, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    mul-float v8, v6, v10

    .line 367
    .local v8, "x":F
    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v5

    mul-float/2addr v10, v3

    iget-object v11, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v8, v10

    .line 368
    iget-object v10, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    mul-float/2addr v10, v4

    add-float/2addr v8, v10

    .line 370
    iget-object v10, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    mul-float v9, v6, v10

    .line 371
    .local v9, "y":F
    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v5

    mul-float/2addr v10, v3

    iget-object v11, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 372
    iget-object v10, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    mul-float/2addr v10, v4

    add-float/2addr v9, v10

    .line 375
    mul-float v10, v3, v7

    add-float v10, v10, p3

    invoke-virtual {p2, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 379
    invoke-virtual {p1, v8, v9, p2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 382
    .end local v3    # "t":F
    .end local v4    # "tt":F
    .end local v5    # "u":F
    .end local v6    # "uu":F
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_90
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 383
    return-void
.end method

.method private getStrokeWidth(F)F
    .registers 10
    .param p1, "velocity"    # F

    .prologue
    .line 338
    iget v5, p0, Lcom/android/internal/widget/BeautySignView;->MAX_WIDTH:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v0, v5, v6

    .line 339
    .local v0, "WidthMax":F
    iget v5, p0, Lcom/android/internal/widget/BeautySignView;->MAX_WIDTH:I

    int-to-float v5, v5

    const v6, 0x3dcccccd    # 0.1f

    mul-float v1, v5, v6

    .line 340
    .local v1, "WidthMin":F
    sub-float v5, v1, v0

    sget v6, Lcom/android/internal/widget/BeautySignView;->SPEED_MAX:F

    sget v7, Lcom/android/internal/widget/BeautySignView;->SPEED_MIN:F

    sub-float/2addr v6, v7

    div-float v2, v5, v6

    .line 341
    .local v2, "a":F
    sget v5, Lcom/android/internal/widget/BeautySignView;->SPEED_MIN:F

    mul-float/2addr v5, v2

    sub-float v3, v0, v5

    .line 342
    .local v3, "b":F
    mul-float v5, v2, p1

    add-float v4, v5, v3

    .line 343
    .local v4, "retValue":F
    return v4
.end method

.method private getVelocityFrom(Landroid/graphics/Point;)F
    .registers 8
    .param p1, "end"    # Landroid/graphics/Point;

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "retVal":F
    invoke-direct {p0, p1}, Lcom/android/internal/widget/BeautySignView;->distanceTo(Landroid/graphics/Point;)F

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/widget/BeautySignView;->mLastPointTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/BeautySignView;->mLastPointTime:J

    .line 327
    return v0
.end method


# virtual methods
.method protected clearInDoAddSign()V
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 168
    return-void
.end method

.method protected clearInDoVerifySign()V
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 173
    return-void
.end method

.method doBezier(IFFFFJF)V
    .registers 35
    .param p1, "arraySize"    # I
    .param p2, "oldX"    # F
    .param p3, "oldY"    # F
    .param p4, "newX"    # F
    .param p5, "newY"    # F
    .param p6, "timeStamp"    # J
    .param p8, "pressure"    # F

    .prologue
    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 215
    .local v25, "startPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 217
    .local v24, "controlPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    move/from16 v18, v0

    .line 218
    .local v18, "P0X":F
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    move/from16 v19, v0

    .line 219
    .local v19, "P0Y":F
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    move/from16 v20, v0

    .line 220
    .local v20, "P1X":F
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    move/from16 v21, v0

    .line 221
    .local v21, "P1Y":F
    add-float v2, p4, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v22, v2, v3

    .line 222
    .local v22, "P2X":F
    add-float v2, p5, p3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v23, v2, v3

    .line 225
    .local v23, "P2Y":F
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v18

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v20

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v3, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v3, v8

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v3, v3, v22

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v3, v8

    add-float v4, v2, v3

    .line 226
    .local v4, "middleX":F
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v19

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v21

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v3, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v3, v8

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v3, v3, v23

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v3, v8

    add-float v5, v2, v3

    .line 227
    .local v5, "middleY":F
    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mTime:J

    .line 228
    .local v6, "middleTime":J
    move-object/from16 v0, v24

    iget v9, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mPressure:F

    .line 230
    .local v9, "middlePressure":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 231
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/widget/SignView$SignatureInput;

    const/4 v8, 0x2

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    const-string v2, "BeautySignView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "2nd point inserted, ("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    move/from16 v12, v22

    .line 240
    .local v12, "endX":F
    move/from16 v13, v23

    .line 241
    .local v13, "endY":F
    move-wide/from16 v14, p6

    .line 242
    .local v14, "endTime":J
    move/from16 v17, p8

    .line 244
    .local v17, "endPressure":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/internal/widget/SignView$SignatureInput;

    const/16 v16, 0x2

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v17}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    const-string v2, "BeautySignView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End point inserted, ("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method

.method protected handleActionDown(Landroid/view/MotionEvent;FF)V
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v6, 0x0

    .line 93
    iput-boolean v6, p0, Lcom/android/internal/widget/BeautySignView;->mBezierEnabled:Z

    .line 94
    iput p2, p0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    .line 95
    iput p3, p0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    .line 97
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    .line 99
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastPointTime:J

    .line 103
    iget-object v8, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/widget/SignView$SignatureInput;

    iget-wide v2, p0, Lcom/android/internal/widget/BeautySignView;->mStartTime:J

    iget-wide v4, p0, Lcom/android/internal/widget/BeautySignView;->mPreTime:J

    sub-long v4, v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v7

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method protected handleActionMove(Landroid/view/MotionEvent;FF)V
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/BeautySignView;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 112
    .local v8, "arraySizeSaved":I
    iget-boolean v0, p0, Lcom/android/internal/widget/BeautySignView;->mUseHistoricalEvent:Z

    if-eqz v0, :cond_73

    .line 114
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v9, v0, :cond_73

    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/BeautySignView;->getIndex()I

    move-result v1

    aget-object v10, v0, v1

    new-instance v0, Lcom/android/internal/widget/SignView$SignatureInput;

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v3, v1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/widget/BeautySignView;->mStartTime:J

    sub-long/2addr v4, v6

    const/4 v6, 0x2

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v0, "BeautySignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert historical event first ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 129
    .end local v9    # "i":I
    :cond_73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/widget/BeautySignView;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/BeautySignView;->mTimeStamp:J

    .line 130
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/BeautySignView;->getIndex()I

    move-result v1

    aget-object v10, v0, v1

    new-instance v0, Lcom/android/internal/widget/SignView$SignatureInput;

    iget-wide v4, p0, Lcom/android/internal/widget/BeautySignView;->mTimeStamp:J

    const/4 v6, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v7

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v0, "BeautySignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert last event of move ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-boolean v0, p0, Lcom/android/internal/widget/BeautySignView;->mUseHistoricalEvent:Z

    if-eqz v0, :cond_e6

    .line 139
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_c3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v9, v0, :cond_e6

    .line 140
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/internal/widget/BeautySignView;->mStartTime:J

    sub-long v4, v0, v4

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/BeautySignView;->handleMoveEventWithBezier(IIJF)V

    .line 139
    add-int/lit8 v9, v9, 0x1

    goto :goto_c3

    .line 148
    .end local v9    # "i":I
    :cond_e6
    float-to-int v2, p2

    float-to-int v3, p3

    iget-wide v4, p0, Lcom/android/internal/widget/BeautySignView;->mTimeStamp:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/BeautySignView;->handleMoveEventWithBezier(IIJF)V

    .line 151
    invoke-direct {p0, v8}, Lcom/android/internal/widget/BeautySignView;->addToPathForDrawing(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/widget/BeautySignView;->invalidate()V

    .line 153
    return-void
.end method

.method protected handleActionUp(Landroid/view/MotionEvent;FF)V
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 157
    iget-object v8, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/widget/SignView$SignatureInput;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/widget/BeautySignView;->mStartTime:J

    sub-long v4, v2, v4

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v7

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    .line 161
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastPointTime:J

    .line 163
    return-void
.end method

.method protected handleMoveEventWithBezier(IIJF)V
    .registers 23
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "timeStamp"    # J
    .param p5, "pressure"    # F

    .prologue
    .line 177
    const-string v2, "BeautySignView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMoveEventWithBezier ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 181
    .local v3, "arraySize":I
    const/4 v2, 0x2

    if-lt v3, v2, :cond_64

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, -0x2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 183
    .local v15, "startPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 185
    .local v12, "controlPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/BeautySignView;->mBezierEnabled:Z

    if-nez v2, :cond_64

    iget v2, v15, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_64

    iget v2, v12, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_64

    .line 187
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/BeautySignView;->mBezierEnabled:Z

    .line 191
    .end local v12    # "controlPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    .end local v15    # "startPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    :cond_64
    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 192
    .local v13, "dx":F
    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 193
    .local v14, "dy":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/BeautySignView;->mBezierEnabled:Z

    if-eqz v2, :cond_cf

    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v2, v13, v2

    if-gez v2, :cond_8e

    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_cf

    .line 194
    :cond_8e
    const-string v2, "BeautySignView"

    const-string v4, "Apply Bezier"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    move/from16 v0, p1

    int-to-float v6, v0

    move/from16 v0, p2

    int-to-float v7, v0

    move-object/from16 v2, p0

    move-wide/from16 v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/widget/BeautySignView;->doBezier(IFFFFJF)V

    .line 198
    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    add-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    .line 199
    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    add-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    .line 210
    :goto_ce
    return-void

    .line 202
    :cond_cf
    const-string v2, "BeautySignView"

    const-string v4, "Just save this point"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/widget/SignView$SignatureInput;

    move/from16 v0, p1

    int-to-float v6, v0

    move/from16 v0, p2

    int-to-float v7, v0

    const/4 v10, 0x2

    move-object/from16 v5, p0

    move-wide/from16 v8, p3

    move/from16 v11, p5

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    .line 208
    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    goto :goto_ce
.end method

.method protected init(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/android/internal/widget/SignView;->init(Landroid/content/Context;)V

    .line 65
    iput-boolean v2, p0, Lcom/android/internal/widget/BeautySignView;->mBezierEnabled:Z

    .line 67
    iput v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    .line 68
    iput v0, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    .line 69
    iput v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastVelocity:F

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastPointTime:J

    .line 71
    iput-boolean v2, p0, Lcom/android/internal/widget/BeautySignView;->mInitWidthVarRatio:Z

    .line 73
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    .line 74
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    .line 75
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    .line 78
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-boolean v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignatureVisible:Z

    if-eqz v0, :cond_24

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 84
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_24

    .line 86
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/widget/BeautySignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 89
    :cond_24
    return-void
.end method
