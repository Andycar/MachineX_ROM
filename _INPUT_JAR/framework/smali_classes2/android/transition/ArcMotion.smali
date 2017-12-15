.class public Landroid/transition/ArcMotion;
.super Landroid/transition/PathMotion;
.source "ArcMotion.java"


# static fields
.field private static final DEFAULT_MAX_ANGLE_DEGREES:F = 70.0f

.field private static final DEFAULT_MAX_TANGENT:F

.field private static final DEFAULT_MIN_ANGLE_DEGREES:F


# instance fields
.field private mMaximumAngle:F

.field private mMaximumTangent:F

.field private mMinimumHorizontalAngle:F

.field private mMinimumHorizontalTangent:F

.field private mMinimumVerticalAngle:F

.field private mMinimumVerticalTangent:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    const-wide v0, 0x4041800000000000L    # 35.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    .line 56
    iput v1, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 57
    iput v1, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    .line 58
    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    .line 59
    iput v1, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 60
    iput v1, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 61
    sget v0, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v6, 0x428c0000    # 70.0f

    const/4 v5, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/transition/PathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput v5, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 57
    iput v5, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    .line 58
    iput v6, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    .line 59
    iput v5, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 60
    iput v5, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 61
    sget v4, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v4, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    .line 67
    sget-object v4, Lcom/android/internal/R$styleable;->ArcMotion:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 70
    .local v3, "minimumVerticalAngle":F
    invoke-virtual {p0, v3}, Landroid/transition/ArcMotion;->setMinimumVerticalAngle(F)V

    .line 71
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 73
    .local v2, "minimumHorizontalAngle":F
    invoke-virtual {p0, v2}, Landroid/transition/ArcMotion;->setMinimumHorizontalAngle(F)V

    .line 74
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 76
    .local v1, "maximumAngle":F
    invoke-virtual {p0, v1}, Landroid/transition/ArcMotion;->setMaximumAngle(F)V

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void
.end method

.method private static toTangent(F)F
    .registers 3
    .param p0, "arcInDegrees"    # F

    .prologue
    .line 175
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_b

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_13

    .line 176
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arc must be between 0 and 90 degrees"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_13
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public getMaximumAngle()F
    .registers 2

    .prologue
    .line 171
    iget v0, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    return v0
.end method

.method public getMinimumHorizontalAngle()F
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    return v0
.end method

.method public getMinimumVerticalAngle()F
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    return v0
.end method

.method public getPath(FFFF)Landroid/graphics/Path;
    .registers 32
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    .prologue
    .line 199
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 200
    .local v2, "path":Landroid/graphics/Path;
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 204
    cmpl-float v7, p2, p4

    if-nez v7, :cond_46

    .line 205
    add-float v7, p1, p3

    const/high16 v8, 0x40000000    # 2.0f

    div-float v18, v7, v8

    .line 206
    .local v18, "ex":F
    move-object/from16 v0, p0

    iget v7, v0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    sub-float v8, p3, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float v19, p2, v7

    .line 265
    .local v19, "ey":F
    :cond_26
    :goto_26
    add-float v7, p1, v18

    const/high16 v8, 0x40000000    # 2.0f

    div-float v3, v7, v8

    .line 266
    .local v3, "controlX1":F
    add-float v7, p2, v19

    const/high16 v8, 0x40000000    # 2.0f

    div-float v4, v7, v8

    .line 267
    .local v4, "controlY1":F
    add-float v7, v18, p3

    const/high16 v8, 0x40000000    # 2.0f

    div-float v5, v7, v8

    .line 268
    .local v5, "controlX2":F
    add-float v7, v19, p4

    const/high16 v8, 0x40000000    # 2.0f

    div-float v6, v7, v8

    .local v6, "controlY2":F
    move/from16 v7, p3

    move/from16 v8, p4

    .line 269
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 270
    return-object v2

    .line 207
    .end local v3    # "controlX1":F
    .end local v4    # "controlY1":F
    .end local v5    # "controlX2":F
    .end local v6    # "controlY2":F
    .end local v18    # "ex":F
    .end local v19    # "ey":F
    :cond_46
    cmpl-float v7, p1, p3

    if-nez v7, :cond_61

    .line 208
    move-object/from16 v0, p0

    iget v7, v0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    sub-float v8, p4, p2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float v18, p1, v7

    .line 209
    .restart local v18    # "ex":F
    add-float v7, p2, p4

    const/high16 v8, 0x40000000    # 2.0f

    div-float v19, v7, v8

    .restart local v19    # "ey":F
    goto :goto_26

    .line 211
    .end local v18    # "ex":F
    .end local v19    # "ey":F
    :cond_61
    sub-float v12, p3, p1

    .line 212
    .local v12, "deltaX":F
    sub-float v13, p2, p4

    .line 214
    .local v13, "deltaY":F
    mul-float v7, v12, v12

    mul-float v8, v13, v13

    add-float v20, v7, v8

    .line 217
    .local v20, "h2":F
    add-float v7, p1, p3

    const/high16 v8, 0x40000000    # 2.0f

    div-float v14, v7, v8

    .line 218
    .local v14, "dx":F
    add-float v7, p2, p4

    const/high16 v8, 0x40000000    # 2.0f

    div-float v15, v7, v8

    .line 221
    .local v15, "dy":F
    const/high16 v7, 0x3e800000    # 0.25f

    mul-float v22, v20, v7

    .line 223
    .local v22, "midDist2":F
    const/16 v23, 0x0

    .line 225
    .local v23, "minimumArcDist2":F
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_d5

    .line 231
    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v13

    div-float v17, v20, v7

    .line 232
    .local v17, "eDistY":F
    add-float v19, p4, v17

    .line 233
    .restart local v19    # "ey":F
    move/from16 v18, p3

    .line 235
    .restart local v18    # "ex":F
    move-object/from16 v0, p0

    iget v7, v0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float v7, v7, v22

    move-object/from16 v0, p0

    iget v8, v0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float v23, v7, v8

    .line 246
    .end local v17    # "eDistY":F
    :goto_9e
    sub-float v10, v14, v18

    .line 247
    .local v10, "arcDistX":F
    sub-float v11, v15, v19

    .line 248
    .local v11, "arcDistY":F
    mul-float v7, v10, v10

    mul-float v8, v11, v11

    add-float v9, v7, v8

    .line 250
    .local v9, "arcDist2":F
    move-object/from16 v0, p0

    iget v7, v0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    mul-float v7, v7, v22

    move-object/from16 v0, p0

    iget v8, v0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    mul-float v21, v7, v8

    .line 252
    .local v21, "maximumArcDist2":F
    const/16 v24, 0x0

    .line 253
    .local v24, "newArcDistance2":F
    cmpg-float v7, v9, v23

    if-gez v7, :cond_eb

    .line 254
    move/from16 v24, v23

    .line 258
    :cond_bc
    :goto_bc
    const/4 v7, 0x0

    cmpl-float v7, v24, v7

    if-eqz v7, :cond_26

    .line 259
    div-float v26, v24, v9

    .line 260
    .local v26, "ratio2":F
    invoke-static/range {v26 .. v26}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v25

    .line 261
    .local v25, "ratio":F
    sub-float v7, v18, v14

    mul-float v7, v7, v25

    add-float v18, v14, v7

    .line 262
    sub-float v7, v19, v15

    mul-float v7, v7, v25

    add-float v19, v15, v7

    goto/16 :goto_26

    .line 239
    .end local v9    # "arcDist2":F
    .end local v10    # "arcDistX":F
    .end local v11    # "arcDistY":F
    .end local v18    # "ex":F
    .end local v19    # "ey":F
    .end local v21    # "maximumArcDist2":F
    .end local v24    # "newArcDistance2":F
    .end local v25    # "ratio":F
    .end local v26    # "ratio2":F
    :cond_d5
    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v12

    div-float v16, v20, v7

    .line 240
    .local v16, "eDistX":F
    add-float v18, p3, v16

    .line 241
    .restart local v18    # "ex":F
    move/from16 v19, p4

    .line 243
    .restart local v19    # "ey":F
    move-object/from16 v0, p0

    iget v7, v0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float v7, v7, v22

    move-object/from16 v0, p0

    iget v8, v0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float v23, v7, v8

    goto :goto_9e

    .line 255
    .end local v16    # "eDistX":F
    .restart local v9    # "arcDist2":F
    .restart local v10    # "arcDistX":F
    .restart local v11    # "arcDistY":F
    .restart local v21    # "maximumArcDist2":F
    .restart local v24    # "newArcDistance2":F
    :cond_eb
    cmpl-float v7, v9, v21

    if-lez v7, :cond_bc

    .line 256
    move/from16 v24, v21

    goto :goto_bc
.end method

.method public setMaximumAngle(F)V
    .registers 3
    .param p1, "angleInDegrees"    # F

    .prologue
    .line 156
    iput p1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    .line 157
    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result v0

    iput v0, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    .line 158
    return-void
.end method

.method public setMinimumHorizontalAngle(F)V
    .registers 3
    .param p1, "angleInDegrees"    # F

    .prologue
    .line 93
    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 94
    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result v0

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 95
    return-void
.end method

.method public setMinimumVerticalAngle(F)V
    .registers 3
    .param p1, "angleInDegrees"    # F

    .prologue
    .line 125
    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    .line 126
    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result v0

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 127
    return-void
.end method
