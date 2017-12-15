.class public Landroid/transition/CircularPropagation;
.super Landroid/transition/VisibilityPropagation;
.source "CircularPropagation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircularPropagation"


# instance fields
.field private mPropagationSpeed:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/transition/VisibilityPropagation;-><init>()V

    .line 37
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    return-void
.end method

.method private static distance(FFFF)F
    .registers 8
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    .line 103
    sub-float v0, p2, p0

    .line 104
    .local v0, "x":F
    sub-float v1, p3, p1

    .line 105
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J
    .registers 24
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Landroid/transition/Transition;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 61
    if-nez p3, :cond_7

    if-nez p4, :cond_7

    .line 62
    const-wide/16 v16, 0x0

    .line 99
    :goto_6
    return-wide v16

    .line 64
    :cond_7
    const/4 v2, 0x1

    .line 66
    .local v2, "directionMultiplier":I
    if-eqz p4, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/transition/CircularPropagation;->getViewVisibility(Landroid/transition/TransitionValues;)I

    move-result v15

    if-nez v15, :cond_7f

    .line 67
    :cond_14
    move-object/from16 v12, p3

    .line 68
    .local v12, "positionValues":Landroid/transition/TransitionValues;
    const/4 v2, -0x1

    .line 73
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/transition/CircularPropagation;->getViewX(Landroid/transition/TransitionValues;)I

    move-result v13

    .line 74
    .local v13, "viewCenterX":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/transition/CircularPropagation;->getViewY(Landroid/transition/TransitionValues;)I

    move-result v14

    .line 76
    .local v14, "viewCenterY":I
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v5

    .line 79
    .local v5, "epicenter":Landroid/graphics/Rect;
    if-eqz v5, :cond_82

    .line 80
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    .line 81
    .local v8, "epicenterX":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    .line 90
    .local v9, "epicenterY":I
    :goto_31
    int-to-float v15, v13

    int-to-float v0, v14

    move/from16 v16, v0

    int-to-float v0, v8

    move/from16 v17, v0

    int-to-float v0, v9

    move/from16 v18, v0

    invoke-static/range {v15 .. v18}, Landroid/transition/CircularPropagation;->distance(FFFF)F

    move-result v3

    .line 91
    .local v3, "distance":F
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v15 .. v18}, Landroid/transition/CircularPropagation;->distance(FFFF)F

    move-result v11

    .line 92
    .local v11, "maxDistance":F
    div-float v4, v3, v11

    .line 94
    .local v4, "distanceFraction":F
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v6

    .line 95
    .local v6, "duration":J
    const-wide/16 v16, 0x0

    cmp-long v15, v6, v16

    if-gez v15, :cond_66

    .line 96
    const-wide/16 v6, 0x12c

    .line 99
    :cond_66
    int-to-long v0, v2

    move-wide/from16 v16, v0

    mul-long v16, v16, v6

    move-wide/from16 v0, v16

    long-to-float v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    move/from16 v16, v0

    div-float v15, v15, v16

    mul-float/2addr v15, v4

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    goto :goto_6

    .line 70
    .end local v3    # "distance":F
    .end local v4    # "distanceFraction":F
    .end local v5    # "epicenter":Landroid/graphics/Rect;
    .end local v6    # "duration":J
    .end local v8    # "epicenterX":I
    .end local v9    # "epicenterY":I
    .end local v11    # "maxDistance":F
    .end local v12    # "positionValues":Landroid/transition/TransitionValues;
    .end local v13    # "viewCenterX":I
    .end local v14    # "viewCenterY":I
    :cond_7f
    move-object/from16 v12, p4

    .restart local v12    # "positionValues":Landroid/transition/TransitionValues;
    goto :goto_17

    .line 83
    .restart local v5    # "epicenter":Landroid/graphics/Rect;
    .restart local v13    # "viewCenterX":I
    .restart local v14    # "viewCenterY":I
    :cond_82
    const/4 v15, 0x2

    new-array v10, v15, [I

    .line 84
    .local v10, "loc":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 85
    const/4 v15, 0x0

    aget v15, v10, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v16

    add-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 87
    .restart local v8    # "epicenterX":I
    const/4 v15, 0x1

    aget v15, v10, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v16

    add-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v9

    .restart local v9    # "epicenterY":I
    goto/16 :goto_31
.end method

.method public setPropagationSpeed(F)V
    .registers 4
    .param p1, "propagationSpeed"    # F

    .prologue
    .line 52
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_e

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "propagationSpeed may not be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_e
    iput p1, p0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    .line 56
    return-void
.end method
