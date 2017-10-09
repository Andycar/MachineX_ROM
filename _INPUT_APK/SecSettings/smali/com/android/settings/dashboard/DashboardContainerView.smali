.class public Lcom/android/settings/dashboard/DashboardContainerView;
.super Landroid/view/ViewGroup;
.source "DashboardContainerView.java"


# instance fields
.field private mCellGapX:F

.field private mCellGapY:F

.field private mNumColumns:I

.field private mNumRows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 38
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0f0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapX:F

    .line 39
    const v1, 0x7f0f0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapY:F

    .line 40
    const v1, 0x7f0e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    .line 41
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getChildCount()I

    move-result v2

    .line 89
    .local v2, "N":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->isLayoutRtl()Z

    move-result v14

    .line 90
    .local v14, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getWidth()I

    move-result v17

    .line 92
    .local v17, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingStart()I

    move-result v18

    .line 93
    .local v18, "x":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingTop()I

    move-result v19

    .line 94
    .local v19, "y":I
    const/4 v12, 0x0

    .line 96
    .local v12, "cursor":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v2, :cond_5

    .line 97
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/dashboard/DashboardContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dashboard/DashboardTileView;

    .line 98
    .local v3, "child":Lcom/android/settings/dashboard/DashboardTileView;
    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardTileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 99
    .local v15, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardTileView;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 96
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 103
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v20, v0

    rem-int v10, v12, v20

    .line 104
    .local v10, "col":I
    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardTileView;->getColumnSpan()I

    move-result v11

    .line 106
    .local v11, "colSpan":I
    iget v9, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 107
    .local v9, "childWidth":I
    iget v5, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 109
    .local v5, "childHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v20, v0

    div-int v16, v12, v20

    .line 111
    .local v16, "row":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumRows:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 112
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/settings/dashboard/DashboardTileView;->setDividerVisibility(Z)V

    .line 116
    :cond_1
    add-int v20, v10, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingStart()I

    move-result v18

    .line 118
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v5

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapY:F

    move/from16 v22, v0

    add-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 119
    add-int/lit8 v16, v16, 0x1

    .line 122
    :cond_2
    if-eqz v14, :cond_3

    sub-int v20, v17, v18

    sub-int v6, v20, v9

    .line 123
    .local v6, "childLeft":I
    :goto_2
    add-int v7, v6, v9

    .line 125
    .local v7, "childRight":I
    move/from16 v8, v19

    .line 126
    .local v8, "childTop":I
    add-int v4, v8, v5

    .line 129
    .local v4, "childBottom":I
    invoke-virtual {v3, v6, v8, v7, v4}, Lcom/android/settings/dashboard/DashboardTileView;->layout(IIII)V

    .line 133
    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardTileView;->getColumnSpan()I

    move-result v20

    add-int v12, v12, v20

    .line 134
    add-int/lit8 v20, v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    move/from16 v0, v20

    if-ge v12, v0, :cond_4

    .line 135
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v9

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapX:F

    move/from16 v22, v0

    add-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    goto/16 :goto_1

    .end local v4    # "childBottom":I
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    .end local v8    # "childTop":I
    :cond_3
    move/from16 v6, v18

    .line 122
    goto :goto_2

    .line 137
    .restart local v4    # "childBottom":I
    .restart local v6    # "childLeft":I
    .restart local v7    # "childRight":I
    .restart local v8    # "childTop":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingStart()I

    move-result v18

    .line 138
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v5

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapY:F

    move/from16 v22, v0

    add-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    goto/16 :goto_1

    .line 141
    .end local v3    # "child":Lcom/android/settings/dashboard/DashboardTileView;
    .end local v4    # "childBottom":I
    .end local v5    # "childHeight":I
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    .end local v8    # "childTop":I
    .end local v9    # "childWidth":I
    .end local v10    # "col":I
    .end local v11    # "colSpan":I
    .end local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "row":I
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 45
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 46
    .local v14, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingLeft()I

    move-result v15

    sub-int v15, v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapX:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    float-to-int v3, v15

    .line 48
    .local v3, "availableWidth":I
    int-to-float v15, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v5, v0

    .line 49
    .local v5, "cellWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getChildCount()I

    move-result v2

    .line 51
    .local v2, "N":I
    const/4 v4, 0x0

    .line 52
    .local v4, "cellHeight":I
    const/4 v7, 0x0

    .line 54
    .local v7, "cursor":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_2

    .line 55
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/dashboard/DashboardContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/settings/dashboard/DashboardTileView;

    .line 56
    .local v13, "v":Lcom/android/settings/dashboard/DashboardTileView;
    invoke-virtual {v13}, Lcom/android/settings/dashboard/DashboardTileView;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 54
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v13}, Lcom/android/settings/dashboard/DashboardTileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 61
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v13}, Lcom/android/settings/dashboard/DashboardTileView;->getColumnSpan()I

    move-result v6

    .line 62
    .local v6, "colSpan":I
    int-to-float v15, v6

    mul-float/2addr v15, v5

    add-int/lit8 v16, v6, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapX:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 65
    const/4 v15, 0x0

    iget v0, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v16, v0

    move/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/settings/dashboard/DashboardContainerView;->getChildMeasureSpec(III)I

    move-result v12

    .line 66
    .local v12, "newWidthSpec":I
    const/4 v15, 0x0

    iget v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v16, v0

    move/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/android/settings/dashboard/DashboardContainerView;->getChildMeasureSpec(III)I

    move-result v11

    .line 67
    .local v11, "newHeightSpec":I
    invoke-virtual {v13, v12, v11}, Lcom/android/settings/dashboard/DashboardTileView;->measure(II)V

    .line 70
    if-gtz v4, :cond_1

    .line 71
    invoke-virtual {v13}, Lcom/android/settings/dashboard/DashboardTileView;->getMeasuredHeight()I

    move-result v4

    .line 74
    :cond_1
    iput v4, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    add-int/2addr v7, v6

    goto :goto_1

    .line 79
    .end local v6    # "colSpan":I
    .end local v9    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "newHeightSpec":I
    .end local v12    # "newWidthSpec":I
    .end local v13    # "v":Lcom/android/settings/dashboard/DashboardTileView;
    :cond_2
    int-to-float v15, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumColumns:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v15, v0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumRows:I

    .line 80
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumRows:I

    mul-int/2addr v15, v4

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mNumRows:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/dashboard/DashboardContainerView;->mCellGapY:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingTop()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardContainerView;->getPaddingBottom()I

    move-result v16

    add-int v10, v15, v16

    .line 83
    .local v10, "newHeight":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/android/settings/dashboard/DashboardContainerView;->setMeasuredDimension(II)V

    .line 84
    return-void
.end method
