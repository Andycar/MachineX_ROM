.class public Lcom/android/internal/widget/BezierSignView;
.super Lcom/android/internal/widget/SignView;
.source "BezierSignView.java"


# static fields
.field private static final MID:F = 0.5f

.field protected static final TAG:Ljava/lang/String; = "BezierSignView"

.field protected static final TOUCH_TOLERANCE_AGAIN:F = 10.0f


# instance fields
.field private mBezierEnabled:Z

.field protected mBezierX:F

.field protected mBezierY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SignView;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private addToPathForDrawing(I)V
    .registers 16
    .param p1, "prevArraySize"    # I

    .prologue
    const/high16 v13, 0x41200000    # 10.0f

    const/high16 v12, 0x40000000    # 2.0f

    .line 112
    iget-object v9, p0, Lcom/android/internal/widget/BezierSignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/BezierSignView;->getIndex()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 114
    .local v1, "currentArraySize":I
    iget v2, p0, Lcom/android/internal/widget/BezierSignView;->mX:F

    .line 115
    .local v2, "drawX":F
    iget v3, p0, Lcom/android/internal/widget/BezierSignView;->mY:F

    .line 117
    .local v3, "drawY":F
    sget-boolean v9, Lcom/android/internal/widget/BezierSignView;->DBG_TOUCH:Z

    if-eqz v9, :cond_3a

    .line 118
    const-string v9, "BezierSignView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addToPathForDrawing from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_3a
    move v6, p1

    .local v6, "i":I
    :goto_3b
    if-ge v6, v1, :cond_79

    .line 121
    iget-object v9, p0, Lcom/android/internal/widget/BezierSignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/BezierSignView;->getIndex()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 122
    .local v0, "addedPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    iget v7, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    .line 123
    .local v7, "x":F
    iget v8, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    .line 124
    .local v8, "y":F
    sub-float v9, v7, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 125
    .local v4, "dx":F
    sub-float v9, v8, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 127
    .local v5, "dy":F
    cmpl-float v9, v4, v13

    if-gez v9, :cond_63

    cmpl-float v9, v5, v13

    if-ltz v9, :cond_73

    .line 128
    :cond_63
    iget-object v9, p0, Lcom/android/internal/widget/BezierSignView;->mPath:Landroid/graphics/Path;

    add-float v10, v7, v2

    div-float/2addr v10, v12

    add-float v11, v8, v3

    div-float/2addr v11, v12

    invoke-virtual {v9, v2, v3, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 133
    :goto_6e
    move v2, v7

    .line 134
    move v3, v8

    .line 120
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 130
    :cond_73
    iget-object v9, p0, Lcom/android/internal/widget/BezierSignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_6e

    .line 137
    .end local v0    # "addedPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_79
    iget v9, p0, Lcom/android/internal/widget/BezierSignView;->mBezierX:F

    iput v9, p0, Lcom/android/internal/widget/BezierSignView;->mX:F

    .line 138
    iget v9, p0, Lcom/android/internal/widget/BezierSignView;->mBezierY:F

    iput v9, p0, Lcom/android/internal/widget/BezierSignView;->mY:F

    .line 139
    return-void
.end method


# virtual methods
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
    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BezierSignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/BezierSignView;->getIndex()I

    move-result v3

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 144
    .local v25, "startPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BezierSignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/BezierSignView;->getIndex()I

    move-result v3

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 146
    .local v24, "controlPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    move/from16 v18, v0

    .line 147
    .local v18, "P0X":F
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    move/from16 v19, v0

    .line 148
    .local v19, "P0Y":F
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    move/from16 v20, v0

    .line 149
    .local v20, "P1X":F
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    move/from16 v21, v0

    .line 150
    .local v21, "P1Y":F
    add-float v2, p4, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v22, v2, v3

    .line 151
    .local v22, "P2X":F
    add-float v2, p5, p3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v23, v2, v3

    .line 153
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

    .line 154
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

    .line 155
    .local v5, "middleY":F
    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mTime:J

    .line 156
    .local v6, "middleTime":J
    move-object/from16 v0, v24

    iget v9, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mPressure:F

    .line 158
    .local v9, "middlePressure":F
    move/from16 v12, v22

    .line 159
    .local v12, "endX":F
    move/from16 v13, v23

    .line 160
    .local v13, "endY":F
    move-wide/from16 v14, p6

    .line 161
    .local v14, "endTime":J
    move/from16 v17, p8

    .line 164
    .local v17, "endPressure":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BezierSignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/BezierSignView;->getIndex()I

    move-result v3

    aget-object v2, v2, v3

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BezierSignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/BezierSignView;->getIndex()I

    move-result v3

    aget-object v10, v2, v3

    new-instance v2, Lcom/android/internal/widget/SignView$SignatureInput;

    const/4 v8, 0x2

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-boolean v2, Lcom/android/internal/widget/BezierSignView;->DBG_TOUCH:Z

    if-eqz v2, :cond_f2

    .line 168
    const-string v2, "BezierSignView"

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

    .line 172
    :cond_f2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BezierSignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/BezierSignView;->getIndex()I

    move-result v3

    aget-object v2, v2, v3

    new-instance v10, Lcom/android/internal/widget/SignView$SignatureInput;

    const/16 v16, 0x2

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v17}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-boolean v2, Lcom/android/internal/widget/BezierSignView;->DBG_TOUCH:Z

    if-eqz v2, :cond_144

    .line 175
    const-string v2, "BezierSignView"

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

    .line 177
    :cond_144
    return-void
.end method

.method protected handleActionDown(Landroid/view/MotionEvent;FF)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/BezierSignView;->mBezierEnabled:Z

    .line 47
    iput p2, p0, Lcom/android/internal/widget/BezierSignView;->mBezierX:F

    .line 48
    iput p3, p0, Lcom/android/internal/widget/BezierSignView;->mBezierY:F

    .line 50
    iget-object v0, p0, Lcom/android/internal/widget/BezierSignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 51
    iget-object v0, p0, Lcom/android/internal/widget/BezierSignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 52
    return-void
.end method

.method protected handleActionMove(Landroid/view/MotionEvent;FF)V
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/internal/widget/BezierSignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/BezierSignView;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 58
    .local v0, "arraySizeSaved":I
    iget-boolean v1, p0, Lcom/android/internal/widget/BezierSignView;->mUseHistoricalEvent:Z

    if-eqz v1, :cond_33

    .line 60
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    if-ge v7, v1, :cond_33

    .line 61
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    float-to-int v2, v1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v1

    float-to-int v3, v1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    iget-wide v8, p0, Lcom/android/internal/widget/BezierSignView;->mStartTime:J

    sub-long/2addr v4, v8

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/BezierSignView;->handleMoveEventWithBezier(IIJF)V

    .line 60
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 69
    .end local v7    # "i":I
    :cond_33
    float-to-int v2, p2

    float-to-int v3, p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/android/internal/widget/BezierSignView;->mStartTime:J

    sub-long/2addr v4, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/BezierSignView;->handleMoveEventWithBezier(IIJF)V

    .line 71
    invoke-direct {p0, v0}, Lcom/android/internal/widget/BezierSignView;->addToPathForDrawing(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/widget/BezierSignView;->invalidate()V

    .line 73
    return-void
.end method

.method protected handleMoveEventWithBezier(IIJF)V
    .registers 23
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "timeStamp"    # J
    .param p5, "pressure"    # F

    .prologue
    .line 76
    sget-boolean v2, Lcom/android/internal/widget/BezierSignView;->DBG_TOUCH:Z

    if-eqz v2, :cond_30

    .line 77
    const-string v2, "BezierSignView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMoveEventAndInvalidateWithBezier ("

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

    .line 79
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BezierSignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/BezierSignView;->getIndex()I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 80
    .local v3, "arraySize":I
    const/4 v2, 0x2

    if-lt v3, v2, :cond_74

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BezierSignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/BezierSignView;->getIndex()I

    move-result v4

    aget-object v2, v2, v4

    add-int/lit8 v4, v3, -0x2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 82
    .local v15, "startPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BezierSignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/BezierSignView;->getIndex()I

    move-result v4

    aget-object v2, v2, v4

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/SignView$SignatureInput;

    .line 84
    .local v12, "controlPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    iget v2, v15, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_74

    iget v2, v12, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_74

    .line 86
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/BezierSignView;->mBezierEnabled:Z

    .line 90
    .end local v12    # "controlPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    .end local v15    # "startPoint":Lcom/android/internal/widget/SignView$SignatureInput;
    :cond_74
    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/BezierSignView;->mBezierX:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 91
    .local v13, "dx":F
    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/BezierSignView;->mBezierY:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 93
    .local v14, "dy":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/widget/BezierSignView;->mBezierEnabled:Z

    if-eqz v2, :cond_ea

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/BezierSignView;->mInputType:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_ea

    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v2, v13, v2

    if-gez v2, :cond_a5

    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_ea

    .line 95
    :cond_a5
    sget-boolean v2, Lcom/android/internal/widget/BezierSignView;->DBG_TOUCH:Z

    if-eqz v2, :cond_b0

    const-string v2, "BezierSignView"

    const-string v4, "Apply Bezier"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_b0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/BezierSignView;->mBezierX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/widget/BezierSignView;->mBezierY:F

    move/from16 v0, p1

    int-to-float v6, v0

    move/from16 v0, p2

    int-to-float v7, v0

    move-object/from16 v2, p0

    move-wide/from16 v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/widget/BezierSignView;->doBezier(IFFFFJF)V

    .line 99
    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/BezierSignView;->mBezierX:F

    add-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/BezierSignView;->mBezierX:F

    .line 100
    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/BezierSignView;->mBezierY:F

    add-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/BezierSignView;->mBezierY:F

    .line 108
    :goto_e9
    return-void

    .line 102
    :cond_ea
    sget-boolean v2, Lcom/android/internal/widget/BezierSignView;->DBG_TOUCH:Z

    if-eqz v2, :cond_f5

    const-string v2, "BezierSignView"

    const-string v4, "Just save this point"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_f5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/BezierSignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/BezierSignView;->getIndex()I

    move-result v4

    aget-object v2, v2, v4

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

    .line 105
    move/from16 v0, p1

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/BezierSignView;->mBezierX:F

    .line 106
    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/BezierSignView;->mBezierY:F

    goto :goto_e9
.end method

.method protected init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/internal/widget/SignView;->init(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/BezierSignView;->mBezierEnabled:Z

    .line 42
    return-void
.end method
