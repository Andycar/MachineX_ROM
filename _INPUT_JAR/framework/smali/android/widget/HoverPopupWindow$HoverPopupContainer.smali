.class Landroid/widget/HoverPopupWindow$HoverPopupContainer;
.super Landroid/widget/FrameLayout;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverPopupContainer"
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "HoverPopupContainer"


# instance fields
.field private final DEFAULT_BG_OUTLINE_THICKNESS:F

.field private final DEFAULT_BG_PADDING:F

.field private POPUPSTATE_CENTER:I

.field private POPUPSTATE_LEFT:I

.field private POPUPSTATE_RIGHT:I

.field private ani:Landroid/view/animation/Animation;

.field private isFHmoveAnimation:Z

.field private mAnimationAreaOffset:I

.field private mBGPaddingBottomPX:F

.field private mBGPaddingTopPX:F

.field private mFHPopCContext:Landroid/content/Context;

.field private mIsFHEnabled:Z

.field private mIsRingEnabled:Z

.field private mLeftLimit:I

.field private mLineEndX:I

.field private mLineEndY:I

.field private mLineOverlappedHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineStartX:I

.field private mLineStartY:I

.field private mLineThickness:I

.field private mOldLineEndX:I

.field private mOldLineEndY:I

.field protected mOverTopBoundaryEnabled:Z

.field private mPickerHeightPX:F

.field private mPickerLineColor:I

.field private mPickerLineColorOnBottom:I

.field private mPickerOutlineThicknessPX:I

.field private mPickerSpaceColor:I

.field private mPickerWidthPX:F

.field private mPopupState:I

.field private mRightLimit:I

.field private mRingDrawable:Landroid/graphics/drawable/Drawable;

.field private mRingHeight:I

.field private mRingWidth:I

.field private mTopPickerOffset:I

.field private mTotalLeftLimit:F

.field private mTotalRightLimit:F

.field private misMovetoRight:Z

.field final synthetic this$0:Landroid/widget/HoverPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V
    .registers 10
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2959
    iput-object p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    .line 2960
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2888
    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOldLineEndX:I

    .line 2890
    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOldLineEndY:I

    .line 2892
    iput v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    .line 2894
    iput v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineThickness:I

    .line 2896
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsRingEnabled:Z

    .line 2904
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    .line 2907
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    .line 2910
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->DEFAULT_BG_PADDING:F

    .line 2913
    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->DEFAULT_BG_OUTLINE_THICKNESS:F

    .line 2915
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->isFHmoveAnimation:Z

    .line 2917
    iput-object v5, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->ani:Landroid/view/animation/Animation;

    .line 2919
    iput-object v5, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mFHPopCContext:Landroid/content/Context;

    .line 2921
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->misMovetoRight:Z

    .line 2923
    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    .line 2925
    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    .line 2927
    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    .line 2929
    iput v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_RIGHT:I

    .line 2931
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_LEFT:I

    .line 2933
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    .line 2935
    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerLineColor:I

    .line 2937
    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerLineColorOnBottom:I

    .line 2939
    iput v3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerSpaceColor:I

    .line 2941
    iput v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    .line 2943
    iput v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    .line 2945
    iput v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerHeightPX:F

    .line 2947
    iput v6, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    .line 2949
    iput v6, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingBottomPX:F

    .line 2951
    iput v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTopPickerOffset:I

    .line 2953
    const/16 v1, 0x64

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mAnimationAreaOffset:I

    .line 2955
    iput v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalLeftLimit:F

    .line 2957
    iput v4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalRightLimit:F

    .line 2962
    iput-object p2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mFHPopCContext:Landroid/content/Context;

    .line 2963
    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    .line 2966
    iget-object v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2967
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x183

    const v2, -0xb88f7e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerLineColor:I

    .line 2968
    const/16 v1, 0x184

    const v2, -0xa57f6f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerLineColorOnBottom:I

    .line 2969
    const/16 v1, 0x185

    const v2, -0xd0a99c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerSpaceColor:I

    .line 2971
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2973
    iput v6, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingBottomPX:F

    iput v6, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    .line 2975
    iget-object v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050202

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    .line 2976
    # getter for: Landroid/widget/HoverPopupWindow;->TW:F
    invoke-static {p1}, Landroid/widget/HoverPopupWindow;->access$2100(Landroid/widget/HoverPopupWindow;)F

    move-result v1

    invoke-virtual {p1, v1, v5}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    .line 2977
    # getter for: Landroid/widget/HoverPopupWindow;->H:F
    invoke-static {p1}, Landroid/widget/HoverPopupWindow;->access$2200(Landroid/widget/HoverPopupWindow;)F

    move-result v1

    invoke-virtual {p1, v1, v5}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerHeightPX:F

    .line 2978
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3075
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3081
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_13

    .line 3545
    :cond_12
    :goto_12
    return-void

    .line 3085
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_24

    .line 3086
    const v2, 0x10803fd

    const v3, -0x866e57

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    .line 3090
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsRingEnabled:Z

    if-eqz v2, :cond_ee

    .line 3091
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3092
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3094
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    if-nez v2, :cond_59

    .line 3095
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3097
    :cond_59
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3099
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    if-nez v2, :cond_9a

    .line 3100
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    if-ge v2, v3, :cond_b5

    .line 3101
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3115
    :cond_9a
    :goto_9a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2300(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3121
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v2, :cond_112

    .line 3122
    const-string v2, "HoverPopupContainer"

    const-string v3, "HoverPopupContainer.draw(): mContentView is null, return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 3103
    :cond_b5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    if-le v2, v3, :cond_9a

    .line 3104
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    add-int/2addr v2, v4

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    sub-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_9a

    .line 3111
    :cond_ee
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    if-nez v2, :cond_9a

    .line 3112
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_9a

    .line 3126
    :cond_112
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2400(Landroid/widget/HoverPopupWindow;)Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-result-object v2

    if-eqz v2, :cond_130

    .line 3127
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2400(Landroid/widget/HoverPopupWindow;)Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getWidth()I

    move-result v3

    int-to-float v3, v3

    # setter for: Landroid/widget/HoverPopupWindow;->W:F
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$2502(Landroid/widget/HoverPopupWindow;F)F

    .line 3129
    :cond_130
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    if-nez v2, :cond_195

    .line 3133
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    new-instance v3, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->W:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2500(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerHeightPX:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$2602(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 3134
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    new-instance v3, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->W:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2500(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$2702(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 3135
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    new-instance v3, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->W:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2500(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$2802(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 3141
    :cond_195
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_20f

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingBottomPX:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_20f

    .line 3144
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050200

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    .line 3145
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050201

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingBottomPX:F

    .line 3148
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v2

    if-lez v2, :cond_20f

    .line 3149
    const/16 v19, 0x0

    .line 3150
    .local v19, "d":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3151
    .local v17, "child":Landroid/view/View;
    if-eqz v17, :cond_1e4

    .line 3152
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 3155
    :cond_1e4
    if-eqz v19, :cond_20f

    .line 3156
    new-instance v26, Landroid/graphics/Rect;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Rect;-><init>()V

    .line 3157
    .local v26, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3158
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_20f

    .line 3159
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    .line 3166
    .end local v17    # "child":Landroid/view/View;
    .end local v19    # "d":Landroid/graphics/drawable/Drawable;
    .end local v26    # "r":Landroid/graphics/Rect;
    :cond_20f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineEndX()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3167
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_706

    .line 3168
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerHeightPX:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingBottomPX:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 3174
    :goto_23d
    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_721

    .line 3177
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3183
    :goto_268
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_73f

    .line 3184
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingBottomPX:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 3190
    :goto_288
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3191
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 3206
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-eqz v2, :cond_75b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$000(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_75b

    .line 3210
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v18, v2, 0x2

    .line 3211
    .local v18, "contentViewHalfWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    add-int v2, v2, v18

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalLeftLimit:F

    .line 3212
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    sub-int v2, v2, v18

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalRightLimit:F

    .line 3235
    .end local v18    # "contentViewHalfWidth":I
    :goto_2e9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalLeftLimit:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3a3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3a3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    if-ne v2, v3, :cond_3a3

    .line 3238
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    .line 3239
    .local v25, "previousRightX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    .line 3240
    .local v24, "previousLeftX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    .line 3248
    .local v23, "previousCenterX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3249
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3250
    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78d

    .line 3253
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3274
    :goto_38c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_RIGHT:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    .line 3275
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3000(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_RIGHT:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3283
    .end local v23    # "previousCenterX":F
    .end local v24    # "previousLeftX":F
    .end local v25    # "previousRightX":F
    :cond_3a3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalRightLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_45d

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_45d

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    if-ne v2, v3, :cond_45d

    .line 3286
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    .line 3287
    .restart local v25    # "previousRightX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    .line 3288
    .restart local v24    # "previousLeftX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    .line 3296
    .restart local v23    # "previousCenterX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3297
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3298
    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7ab

    .line 3301
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3324
    :goto_446
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_LEFT:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    .line 3325
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3000(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_LEFT:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3329
    .end local v23    # "previousCenterX":F
    .end local v24    # "previousLeftX":F
    .end local v25    # "previousRightX":F
    :cond_45d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_RIGHT:I

    if-ne v2, v3, :cond_497

    .line 3339
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalLeftLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7c9

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7c9

    .line 3341
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    .line 3343
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3000(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3365
    :cond_497
    :goto_497
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_LEFT:I

    if-ne v2, v3, :cond_4d1

    .line 3375
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalRightLimit:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_845

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_845

    .line 3377
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    .line 3378
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3000(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3414
    :cond_4d1
    :goto_4d1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3100(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-nez v2, :cond_556

    .line 3421
    const/16 v16, 0x0

    .line 3423
    .local v16, "anchorViewCenter":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3200(Landroid/widget/HoverPopupWindow;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_50a

    .line 3424
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3200(Landroid/widget/HoverPopupWindow;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3300(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    sub-int v16, v2, v3

    .line 3439
    :cond_50a
    if-eqz v16, :cond_556

    .line 3440
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerXoffset:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3400(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    add-int v3, v3, v16

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3441
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3442
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3453
    .end local v16    # "anchorViewCenter":I
    :cond_556
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8c1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    add-int/lit8 v2, v2, 0x1

    :goto_564
    div-int/lit8 v11, v2, 0x2

    .line 3454
    .local v11, "adjustPointer":I
    const/4 v12, 0x0

    .local v12, "adjustedLPointX":F
    const/4 v13, 0x0

    .local v13, "adjustedLPointY":F
    const/4 v14, 0x0

    .local v14, "adjustedRPointX":F
    const/4 v15, 0x0

    .line 3455
    .local v15, "adjustedRPointY":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_8e3

    .line 3456
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v3, v11

    sub-float v12, v2, v3

    .line 3457
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v3, v11

    add-float v14, v2, v3

    .line 3458
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_8c7

    .line 3459
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v3, v11

    sub-float v13, v2, v3

    .line 3460
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v3, v11

    sub-float v15, v2, v3

    .line 3475
    :goto_5ab
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-eqz v2, :cond_5d8

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->POPUPSTATE_CENTER:I

    if-ne v2, v3, :cond_5d8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    iget v2, v2, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5d8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3100(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-nez v2, :cond_5d8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$000(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 3480
    :cond_5d8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 3481
    .local v9, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3500(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_90d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_90d

    .line 3482
    const/16 v2, 0x186

    const v3, -0xa29283

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerSpaceColor:I

    .line 3486
    :goto_600
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 3489
    new-instance v8, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 3490
    .local v8, "Pnt":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3491
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerSpaceColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3492
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3497
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    .line 3498
    .local v20, "path1":Landroid/graphics/Path;
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3499
    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3500
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3501
    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3502
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->close()V

    .line 3503
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3504
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3507
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    .line 3508
    .local v21, "path2":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_91c

    .line 3509
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerLineColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3514
    :goto_66c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3515
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3516
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 3517
    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3518
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3519
    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3520
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Path;->close()V

    .line 3521
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3528
    new-instance v22, Landroid/graphics/Path;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Path;-><init>()V

    .line 3529
    .local v22, "path3":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    rem-int/lit8 v10, v2, 0x2

    .line 3530
    .local v10, "adjustLineOffset":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6d7

    .line 3531
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v3, v11

    sub-float v12, v2, v3

    .line 3532
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v3, v11

    add-float v14, v2, v3

    .line 3534
    :cond_6d7
    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3535
    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3537
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    add-int/2addr v2, v10

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3538
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3539
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerSpaceColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3540
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3541
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->close()V

    .line 3542
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_12

    .line 3170
    .end local v8    # "Pnt":Landroid/graphics/Paint;
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "adjustLineOffset":I
    .end local v11    # "adjustPointer":I
    .end local v12    # "adjustedLPointX":F
    .end local v13    # "adjustedLPointY":F
    .end local v14    # "adjustedRPointX":F
    .end local v15    # "adjustedRPointY":F
    .end local v20    # "path1":Landroid/graphics/Path;
    .end local v21    # "path2":Landroid/graphics/Path;
    .end local v22    # "path3":Landroid/graphics/Path;
    :cond_706
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerHeightPX:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_23d

    .line 3181
    :cond_721
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_268

    .line 3186
    :cond_73f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getLineStartY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mBGPaddingTopPX:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_288

    .line 3217
    :cond_75b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mAnimationAreaOffset:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalLeftLimit:F

    .line 3218
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mAnimationAreaOffset:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTotalRightLimit:F

    goto/16 :goto_2e9

    .line 3257
    .restart local v23    # "previousCenterX":F
    .restart local v24    # "previousLeftX":F
    .restart local v25    # "previousRightX":F
    :cond_78d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_38c

    .line 3305
    :cond_7ab
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_446

    .line 3350
    .end local v23    # "previousCenterX":F
    .end local v24    # "previousLeftX":F
    .end local v25    # "previousRightX":F
    :cond_7c9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3351
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3352
    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_827

    .line 3355
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_497

    .line 3360
    :cond_827
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_497

    .line 3386
    :cond_845
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3387
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3388
    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a3

    .line 3391
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_4d1

    .line 3396
    :cond_8a3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_4d1

    .line 3453
    :cond_8c1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerOutlineThicknessPX:I

    goto/16 :goto_564

    .line 3463
    .restart local v11    # "adjustPointer":I
    .restart local v12    # "adjustedLPointX":F
    .restart local v13    # "adjustedLPointY":F
    .restart local v14    # "adjustedRPointX":F
    .restart local v15    # "adjustedRPointY":F
    :cond_8c7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v3, v11

    add-float v13, v2, v3

    .line 3464
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v3, v11

    add-float v15, v2, v3

    goto/16 :goto_5ab

    .line 3468
    :cond_8e3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v12, v2, Landroid/graphics/PointF;->x:F

    .line 3469
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v14, v2, Landroid/graphics/PointF;->x:F

    .line 3470
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v13, v2, Landroid/graphics/PointF;->y:F

    .line 3471
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v15, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_5ab

    .line 3484
    .restart local v9    # "a":Landroid/content/res/TypedArray;
    :cond_90d
    const/16 v2, 0x185

    const v3, -0xa29283

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerSpaceColor:I

    goto/16 :goto_600

    .line 3512
    .restart local v8    # "Pnt":Landroid/graphics/Paint;
    .restart local v20    # "path1":Landroid/graphics/Path;
    .restart local v21    # "path2":Landroid/graphics/Path;
    :cond_91c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPickerLineColorOnBottom:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_66c
.end method

.method public getLineEndX()I
    .registers 2

    .prologue
    .line 3037
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    return v0
.end method

.method public getLineOverlappedHeight()I
    .registers 2

    .prologue
    .line 3045
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    return v0
.end method

.method public getLineStartY()I
    .registers 2

    .prologue
    .line 3041
    iget v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    return v0
.end method

.method protected pointInValidPaddingArea(II)Z
    .registers 6
    .param p1, "localX"    # I
    .param p2, "localY"    # I

    .prologue
    .line 3548
    const/4 v0, 0x0

    .line 3550
    .local v0, "ret":Z
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingBottom()I

    move-result v2

    if-le v1, v2, :cond_19

    .line 3551
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_18

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingTop()I

    move-result v1

    if-gt p2, v1, :cond_18

    .line 3552
    const/4 v0, 0x1

    .line 3562
    :cond_18
    :goto_18
    return v0

    .line 3554
    :cond_19
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingBottom()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 3555
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_18

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p2, v1, :cond_18

    .line 3556
    const/4 v0, 0x1

    goto :goto_18

    .line 3559
    :cond_36
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public setFHGuideLineForCotainer(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2981
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    .line 2982
    return-void
.end method

.method public setFHmoveAnimation(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 2985
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->isFHmoveAnimation:Z

    .line 2986
    return-void
.end method

.method public setFHmoveAnimationOffset(I)V
    .registers 5
    .param p1, "offset"    # I

    .prologue
    .line 3068
    const-string v0, "HoverPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoverPopupContainer(): setFHmoveAnimationOffset: offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mAnimationAreaOffset:I

    .line 3070
    const-string v0, "HoverPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoverPopupContainer(): setFHmoveAnimationOffset: mAnimationAreaOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mAnimationAreaOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    return-void
.end method

.method public setGuideLine(II)V
    .registers 7
    .param p1, "drawableId"    # I
    .param p2, "lineColor"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3006
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineOverlappedHeight:I

    .line 3007
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineThickness:I

    .line 3009
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 3010
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3d

    .line 3011
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingWidth:I

    .line 3012
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    .line 3013
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingWidth:I

    iget v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRingHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3016
    :cond_3d
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    .line 3017
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3018
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 3019
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3020
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3021
    return-void
.end method

.method public setGuideLine(IIIIZZ)V
    .registers 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .param p5, "ringEnabled"    # Z
    .param p6, "fHEnabled"    # Z

    .prologue
    .line 3050
    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartX:I

    .line 3051
    iput p2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineStartY:I

    .line 3052
    iput p3, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    .line 3053
    iput p4, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    .line 3054
    iput-boolean p5, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsRingEnabled:Z

    .line 3055
    iput-boolean p6, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mIsFHEnabled:Z

    .line 3056
    return-void
.end method

.method public setGuideLineEndPoint(II)V
    .registers 3
    .param p1, "pointX"    # I
    .param p2, "pointY"    # I

    .prologue
    .line 3059
    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndX:I

    .line 3060
    iput p2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLineEndY:I

    .line 3061
    return-void
.end method

.method public setOverTopForCotainer(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 2994
    const-string v0, "HoverPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoverPopupContainer.setOverTopForCotainer: enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    .line 2996
    const-string v0, "HoverPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoverPopupContainer.setOverTopForCotainer: mOverTopBoundaryEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mOverTopBoundaryEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    return-void
.end method

.method public setOverTopPickerOffset(I)V
    .registers 2
    .param p1, "offset"    # I

    .prologue
    .line 3000
    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mTopPickerOffset:I

    .line 3001
    return-void
.end method

.method public setPickerLimit(II)V
    .registers 3
    .param p1, "leftlimit"    # I
    .param p2, "rightlimit"    # I

    .prologue
    .line 2989
    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mLeftLimit:I

    .line 2990
    iput p2, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mRightLimit:I

    .line 2991
    return-void
.end method

.method public setPopupState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 3064
    iput p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->mPopupState:I

    .line 3065
    return-void
.end method

.method public updateDecoration()V
    .registers 1

    .prologue
    .line 3026
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->invalidate()V

    .line 3034
    return-void
.end method
