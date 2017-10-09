.class public Lcom/android/systemui/recent/FadedEdgeDrawHelper;
.super Ljava/lang/Object;
.source "FadedEdgeDrawHelper.java"


# static fields
.field public static final OPTIMIZE_SW_RENDERED_RECENTS:Z = true

.field public static final USE_DARK_FADE_IN_HW_ACCELERATED_MODE:Z = true


# instance fields
.field private mBlackPaint:Landroid/graphics/Paint;

.field private mFade:Landroid/graphics/LinearGradient;

.field private mFadeMatrix:Landroid/graphics/Matrix;

.field private mFadePaint:Landroid/graphics/Paint;

.field private mFadingEdgeLength:I

.field private mIsVertical:Z

.field private mScrollView:Landroid/view/View;

.field private mSoftwareRendered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "scrollView"    # Landroid/view/View;
    .param p4, "isVertical"    # Z

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mSoftwareRendered:Z

    .line 59
    iput-object p3, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mScrollView:Landroid/view/View;

    .line 60
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x19

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadingEdgeLength:I

    .line 63
    iput-boolean p4, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mIsVertical:Z

    .line 64
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/FadedEdgeDrawHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "scrollView"    # Landroid/view/View;
    .param p3, "isVertical"    # Z

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 50
    .local v0, "isTablet":Z
    if-nez v0, :cond_0

    .line 51
    new-instance v1, Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)V

    .line 53
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addViewCallback(Landroid/view/View;)V
    .locals 3
    .param p1, "newLinearLayoutChild"    # Landroid/view/View;

    .prologue
    .line 77
    iget-boolean v1, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mSoftwareRendered:Z

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 80
    .local v0, "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 81
    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->buildDrawingCache()V

    .line 83
    .end local v0    # "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    :cond_0
    return-void
.end method

.method public drawCallback(Landroid/graphics/Canvas;IIIIIIFFFFI)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "scrollX"    # I
    .param p7, "scrollY"    # I
    .param p8, "topFadingEdgeStrength"    # F
    .param p9, "bottomFadingEdgeStrength"    # F
    .param p10, "leftFadingEdgeStrength"    # F
    .param p11, "rightFadingEdgeStrength"    # F
    .param p12, "mPaddingTop"    # I

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mSoftwareRendered:Z

    if-eqz v1, :cond_0

    .line 92
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 93
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    .line 94
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    .line 97
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x34000000    # -3.3554432E7f

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    .line 99
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 103
    :cond_1
    const/4 v13, 0x0

    .line 104
    .local v13, "drawTop":Z
    const/4 v10, 0x0

    .line 105
    .local v10, "drawBottom":Z
    const/4 v11, 0x0

    .line 106
    .local v11, "drawLeft":Z
    const/4 v12, 0x0

    .line 108
    .local v12, "drawRight":Z
    const/16 v18, 0x0

    .line 109
    .local v18, "topFadeStrength":F
    const/4 v9, 0x0

    .line 110
    .local v9, "bottomFadeStrength":F
    const/4 v15, 0x0

    .line 111
    .local v15, "leftFadeStrength":F
    const/16 v17, 0x0

    .line 113
    .local v17, "rightFadeStrength":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadingEdgeLength:I

    int-to-float v14, v1

    .line 114
    .local v14, "fadeHeight":F
    float-to-int v0, v14

    move/from16 v16, v0

    .line 118
    .local v16, "length":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mIsVertical:Z

    if-eqz v1, :cond_2

    add-int v1, p4, v16

    sub-int v2, p5, v16

    if-le v1, v2, :cond_2

    .line 119
    sub-int v1, p5, p4

    div-int/lit8 v16, v1, 0x2

    .line 123
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mIsVertical:Z

    if-nez v1, :cond_3

    add-int v1, p2, v16

    sub-int v2, p3, v16

    if-le v1, v2, :cond_3

    .line 124
    sub-int v1, p3, p2

    div-int/lit8 v16, v1, 0x2

    .line 127
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mIsVertical:Z

    if-eqz v1, :cond_4

    .line 128
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p8

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 129
    mul-float v1, v18, v14

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b

    const/4 v13, 0x1

    .line 130
    :goto_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p9

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 131
    mul-float v1, v9, v14

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    const/4 v10, 0x1

    .line 134
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mIsVertical:Z

    if-nez v1, :cond_5

    .line 135
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p10

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 136
    mul-float v1, v15, v14

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_d

    const/4 v11, 0x1

    .line 137
    :goto_2
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p11

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 138
    mul-float v1, v17, v14

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_e

    const/4 v12, 0x1

    .line 141
    :cond_5
    :goto_3
    if-eqz v13, :cond_7

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v14, v18

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 146
    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    add-int v1, p4, v16

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mBlackPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_6

    .line 150
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mBlackPaint:Landroid/graphics/Paint;

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mBlackPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    :cond_6
    move/from16 v0, p2

    int-to-float v2, v0

    sub-int v1, p4, p12

    int-to-float v3, v1

    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, p4

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mBlackPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 156
    :cond_7
    if-eqz v10, :cond_8

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v14, v9

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 162
    move/from16 v0, p2

    int-to-float v2, v0

    sub-int v1, p5, v16

    int-to-float v3, v1

    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, p5

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 165
    :cond_8
    if-eqz v11, :cond_9

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v14, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 171
    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    add-int v1, p2, v16

    int-to-float v4, v1

    move/from16 v0, p5

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 174
    :cond_9
    if-eqz v12, :cond_a

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v14, v17

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 176
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    move/from16 v0, p3

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFade:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 180
    sub-int v1, p3, v16

    int-to-float v2, v1

    move/from16 v0, p4

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, p5

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 183
    :cond_a
    return-void

    .line 129
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 131
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 136
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 138
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_3
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadingEdgeLength:I

    return v0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mFadingEdgeLength:I

    return v0
.end method

.method public onAttachedToWindowCallback(Landroid/widget/LinearLayout;Z)V
    .locals 2
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "hardwareAccelerated"    # Z

    .prologue
    const/4 v1, 0x0

    .line 68
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mSoftwareRendered:Z

    .line 69
    iget-boolean v0, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mSoftwareRendered:Z

    if-eqz v0, :cond_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 74
    return-void

    :cond_1
    move v0, v1

    .line 68
    goto :goto_0
.end method
