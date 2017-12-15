.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList; = null

.field private static DEFAULT_NORMAL_COLOR:Landroid/content/res/ColorStateList; = null

.field private static final NO_ALPHA:I = 0xff

.field private static OVERLAP_ACTIVATED_COLOR:Landroid/content/res/ColorStateList; = null

.field private static OVERLAP_NORMAL_COLOR:Landroid/content/res/ColorStateList; = null

.field private static final PROGRESS_ANIMATION_DURATION:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "AbsSeekBar"


# instance fields
.field private mDisabledAlpha:F

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHoveringLevel:I

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mOverlapBackground:Landroid/graphics/drawable/Drawable;

.field private mOverlapPoint:I

.field private mOverlapPrimary:Landroid/graphics/drawable/Drawable;

.field private mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private mScaledTouchSlop:I

.field private mSplitProgress:Landroid/graphics/drawable/Drawable;

.field private mSplitTrack:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbPosX:I

.field private mThumbPosY:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTouchDownX:F

.field private mTouchDownY:F

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 58
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 59
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 60
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 61
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 75
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 81
    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 102
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 58
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 59
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 60
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 61
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 75
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 81
    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 102
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v4, -0x1

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 126
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 58
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 59
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 60
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 61
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 75
    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 81
    iput v6, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 102
    iput v5, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 106
    iput v4, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 128
    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 131
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 132
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 134
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 135
    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 137
    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 140
    :cond_42
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 141
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 142
    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 146
    :cond_50
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 148
    .local v2, "thumbOffset":I
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 150
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    .line 151
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 155
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 156
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 160
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 163
    const-string v3, "#b4bcc0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    sput-object v3, Landroid/widget/AbsSeekBar;->DEFAULT_NORMAL_COLOR:Landroid/content/res/ColorStateList;

    .line 164
    const-string v3, "#00a0ce"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    sput-object v3, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    .line 165
    const-string v3, "#f4b096"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    sput-object v3, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_COLOR:Landroid/content/res/ColorStateList;

    .line 166
    const-string v3, "#e94f12"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/AbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    sput-object v3, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    .line 168
    return-void
.end method

.method private applyThumbTint()V
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2a

    .line 306
    :cond_c
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 308
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_1f

    .line 309
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 312
    :cond_1f
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2a

    .line 313
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 316
    :cond_2a
    return-void
.end method

.method private attemptClaimDrag()V
    .registers 3

    .prologue
    .line 911
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_a

    .line 912
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 914
    :cond_a
    return-void
.end method

.method private checkInvalidatedDualColorMode()Z
    .registers 3

    .prologue
    .line 1346
    iget v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 6
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1358
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 1359
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private getScale()F
    .registers 4

    .prologue
    .line 515
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    .line 516
    .local v0, "max":I
    if-lez v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private setHotspot(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 842
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 843
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_9

    .line 844
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 846
    :cond_9
    return-void
.end method

.method private setThumbPos(F)V
    .registers 5
    .param p1, "scale"    # F

    .prologue
    .line 520
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 521
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_10

    .line 522
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 526
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 529
    :cond_10
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .registers 27
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .prologue
    .line 541
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 542
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    .line 586
    :goto_1d
    return-void

    .line 546
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v18, v0

    sub-int v18, p1, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 547
    .local v5, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 548
    .local v16, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    .line 549
    .local v14, "thumbHeight":I
    sub-int v5, v5, v16

    .line 552
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int v5, v5, v18

    .line 554
    int-to-float v0, v5

    move/from16 v18, v0

    mul-float v18, v18, p3

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v15, v0

    .line 557
    .local v15, "thumbPos":I
    const/high16 v18, -0x80000000

    move/from16 v0, p4

    move/from16 v1, v18

    if-ne v0, v1, :cond_cd

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 559
    .local v12, "oldBounds":Landroid/graphics/Rect;
    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    .line 560
    .local v17, "top":I
    iget v7, v12, Landroid/graphics/Rect;->bottom:I

    .line 566
    .end local v12    # "oldBounds":Landroid/graphics/Rect;
    .local v7, "bottom":I
    :goto_60
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v18

    if-eqz v18, :cond_d2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d2

    sub-int v9, v5, v15

    .line 567
    .local v9, "left":I
    :goto_70
    add-int v13, v9, v16

    .line 569
    .local v13, "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 570
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_a1

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 572
    .local v8, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v19, v0

    sub-int v10, v18, v19

    .line 573
    .local v10, "offsetX":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    .line 574
    .local v11, "offsetY":I
    add-int v18, v9, v10

    add-int v19, v17, v11

    add-int v20, v13, v10

    add-int v21, v7, v11

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 579
    .end local v8    # "bounds":Landroid/graphics/Rect;
    .end local v10    # "offsetX":I
    .end local v11    # "offsetY":I
    :cond_a1
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v9, v1, v13, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 582
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    .line 583
    div-int/lit8 v18, v14, 0x2

    add-int v18, v18, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    .line 585
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    goto/16 :goto_1d

    .line 562
    .end local v6    # "background":Landroid/graphics/drawable/Drawable;
    .end local v7    # "bottom":I
    .end local v9    # "left":I
    .end local v13    # "right":I
    .end local v17    # "top":I
    :cond_cd
    move/from16 v17, p4

    .line 563
    .restart local v17    # "top":I
    add-int v7, p4, v14

    .restart local v7    # "bottom":I
    goto :goto_60

    :cond_d2
    move v9, v15

    .line 566
    goto :goto_70
.end method

.method private setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V
    .registers 26
    .param p1, "h"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .prologue
    .line 589
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v17, v0

    sub-int v17, p1, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 590
    .local v4, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 591
    .local v15, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 592
    .local v13, "thumbHeight":I
    sub-int/2addr v4, v13

    .line 595
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    add-int v4, v4, v17

    .line 597
    int-to-float v0, v4

    move/from16 v17, v0

    mul-float v17, v17, p3

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 600
    .local v14, "thumbPos":I
    const/high16 v17, -0x80000000

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_9a

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 602
    .local v11, "oldBounds":Landroid/graphics/Rect;
    iget v8, v11, Landroid/graphics/Rect;->left:I

    .line 603
    .local v8, "left":I
    iget v12, v11, Landroid/graphics/Rect;->right:I

    .line 609
    .end local v11    # "oldBounds":Landroid/graphics/Rect;
    .local v12, "right":I
    :goto_3f
    sub-int v16, v4, v14

    .line 610
    .local v16, "top":I
    add-int v6, v16, v13

    .line 612
    .local v6, "bottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 613
    .local v5, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_72

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 615
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    .line 616
    .local v9, "offsetX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    move/from16 v18, v0

    sub-int v10, v17, v18

    .line 618
    .local v10, "offsetY":I
    add-int v17, v8, v9

    add-int v18, v16, v10

    add-int v19, v12, v9

    add-int v20, v6, v10

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 623
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "offsetX":I
    .end local v10    # "offsetY":I
    :cond_72
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v8, v1, v12, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 626
    div-int/lit8 v17, v15, 0x2

    add-int v17, v17, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    .line 627
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    move/from16 v17, v0

    add-int v17, v17, v16

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    .line 628
    return-void

    .line 605
    .end local v5    # "background":Landroid/graphics/drawable/Drawable;
    .end local v6    # "bottom":I
    .end local v8    # "left":I
    .end local v12    # "right":I
    .end local v16    # "top":I
    :cond_9a
    move/from16 v8, p4

    .line 606
    .restart local v8    # "left":I
    add-int v12, p4, v15

    .restart local v12    # "right":I
    goto :goto_3f
.end method

.method private trackHoverEvent(II)V
    .registers 10
    .param p1, "posX"    # I
    .param p2, "posY"    # I

    .prologue
    .line 1099
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    .line 1100
    .local v4, "width":I
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v5, v4, v5

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 1102
    .local v0, "available":I
    const/4 v1, 0x0

    .line 1104
    .local v1, "hoverLevel":F
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge p1, v5, :cond_1d

    .line 1105
    const/4 v3, 0x0

    .line 1113
    .local v3, "scale":F
    :goto_12
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    .line 1114
    .local v2, "max":I
    int-to-float v5, v2

    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    .line 1115
    float-to-int v5, v1

    iput v5, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 1116
    return-void

    .line 1106
    .end local v2    # "max":I
    .end local v3    # "scale":F
    :cond_1d
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le p1, v5, :cond_26

    .line 1107
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_12

    .line 1109
    .end local v3    # "scale":F
    :cond_26
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    int-to-float v6, v0

    div-float v3, v5, v6

    .line 1110
    .restart local v3    # "scale":F
    iget v1, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_12
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 849
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 850
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEventInVertical(Landroid/view/MotionEvent;)V

    .line 883
    :goto_a
    return-void

    .line 854
    :cond_b
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    .line 855
    .local v4, "width":I
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v6, v7

    .line 856
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 858
    .local v5, "x":I
    const/4 v2, 0x0

    .line 859
    .local v2, "progress":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_58

    iget-boolean v6, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v6, :cond_58

    .line 860
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_45

    .line 861
    const/4 v3, 0x0

    .line 878
    .local v3, "scale":F
    :goto_2e
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    .line 879
    .local v1, "max":I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    .line 881
    int-to-float v6, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-direct {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    .line 882
    float-to-int v6, v2

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    goto :goto_a

    .line 862
    .end local v1    # "max":I
    .end local v3    # "scale":F
    :cond_45
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_4c

    .line 863
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_2e

    .line 865
    .end local v3    # "scale":F
    :cond_4c
    sub-int v6, v0, v5

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 866
    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_2e

    .line 869
    .end local v3    # "scale":F
    :cond_58
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_5e

    .line 870
    const/4 v3, 0x0

    .restart local v3    # "scale":F
    goto :goto_2e

    .line 871
    .end local v3    # "scale":F
    :cond_5e
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_67

    .line 872
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_2e

    .line 874
    .end local v3    # "scale":F
    :cond_67
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 875
    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_2e
.end method

.method private trackTouchEventInVertical(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 886
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v1

    .line 887
    .local v1, "height":I
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v6, v1, v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v0, v6, v7

    .line 888
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int v5, v1, v6

    .line 890
    .local v5, "y":I
    const/4 v3, 0x0

    .line 891
    .local v3, "progress":F
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    if-ge v5, v6, :cond_35

    .line 892
    const/4 v4, 0x0

    .line 899
    .local v4, "scale":F
    :goto_19
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    .line 900
    .local v2, "max":I
    int-to-float v6, v2

    mul-float/2addr v6, v4

    add-float/2addr v3, v6

    .line 902
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-direct {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    .line 903
    float-to-int v6, v3

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 904
    return-void

    .line 893
    .end local v2    # "max":I
    .end local v4    # "scale":F
    :cond_35
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v6, v1, v6

    if-le v5, v6, :cond_3e

    .line 894
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "scale":F
    goto :goto_19

    .line 896
    .end local v4    # "scale":F
    :cond_3e
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v4, v6, v7

    .line 897
    .restart local v4    # "scale":F
    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_19
.end method

.method private updateBoundsForDualColor()V
    .registers 14

    .prologue
    .line 1316
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_f

    iget v9, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_f

    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_10

    .line 1341
    :cond_f
    :goto_f
    return-void

    .line 1320
    :cond_10
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1321
    .local v0, "base":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v5

    .line 1322
    .local v5, "maxProgress":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v2

    .line 1323
    .local v2, "curProgress":I
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v9

    if-eqz v9, :cond_5e

    .line 1324
    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    sub-int v8, v9, v10

    .line 1326
    .local v8, "width":I
    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    int-to-float v10, v8

    iget v11, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    int-to-float v11, v11

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v4, v9

    .line 1327
    .local v4, "left":I
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v4, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1329
    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    int-to-float v10, v8

    int-to-float v11, v2

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v6, v9

    .line 1330
    .local v6, "right":I
    iget v9, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1331
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v4, v10, v6, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_f

    .line 1332
    .end local v4    # "left":I
    .end local v6    # "right":I
    .end local v8    # "width":I
    :cond_5e
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1333
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, v9, v10

    .line 1335
    .local v3, "height":I
    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    int-to-float v10, v3

    iget v11, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    sub-int v11, v5, v11

    int-to-float v11, v11

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v1, v9

    .line 1336
    .local v1, "bottom":I
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v0, Landroid/graphics/Rect;->top:I

    iget v12, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10, v11, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1338
    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    int-to-float v10, v3

    sub-int v11, v5, v2

    int-to-float v11, v11

    int-to-float v12, v5

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v7, v9

    .line 1339
    .local v7, "top":I
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10, v7, v11, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_f
.end method

.method private updateDualColorMode()V
    .registers 4

    .prologue
    .line 1299
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1313
    :goto_6
    return-void

    .line 1303
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v2, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1304
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v2, Landroid/widget/AbsSeekBar;->OVERLAP_NORMAL_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1306
    sget-object v0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    .line 1307
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    if-le v1, v2, :cond_25

    .line 1308
    sget-object v0, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    .line 1310
    :cond_25
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1312
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForDualColor()V

    goto :goto_6
.end method

.method private updateSplitProgress()V
    .registers 13

    .prologue
    const/high16 v11, 0x41b00000    # 22.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v10, 0x40000000    # 2.0f

    .line 634
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 664
    :goto_d
    return-void

    .line 636
    :cond_e
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 637
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 638
    .local v0, "base":Landroid/graphics/Rect;
    if-eqz v1, :cond_34

    .line 649
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_66

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_66

    .line 650
    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 657
    :cond_34
    :goto_34
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v3

    .line 658
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v2

    .line 659
    .local v2, "h":I
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v6, v9

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v7, v11

    div-float/2addr v7, v10

    sub-float/2addr v6, v7

    float-to-int v6, v6

    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    iget v8, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v8, v9

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mDensity:F

    mul-float/2addr v9, v11

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_d

    .line 653
    .end local v2    # "h":I
    .end local v3    # "w":I
    :cond_66
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_34
.end method

.method private updateThumbAndTrackPos(II)V
    .registers 13
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v6, 0x0

    .line 448
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 449
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPosInVertical(II)V

    .line 482
    :goto_b
    return-void

    .line 453
    :cond_c
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 454
    .local v3, "track":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 458
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    iget v7, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v8, p2, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 459
    .local v4, "trackHeight":I
    if-nez v0, :cond_4a

    move v1, v6

    .line 464
    .local v1, "thumbHeight":I
    :goto_22
    if-le v1, v4, :cond_4f

    .line 465
    sub-int v7, v1, v4

    div-int/lit8 v5, v7, 0x2

    .line 466
    .local v5, "trackOffset":I
    const/4 v2, 0x0

    .line 472
    .local v2, "thumbOffset":I
    :goto_29
    if-eqz v3, :cond_3d

    .line 473
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v7, p1, v7

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v8, p2, v8

    sub-int/2addr v8, v5

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v8, v9

    invoke-virtual {v3, v6, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 477
    :cond_3d
    if-eqz v0, :cond_46

    .line 478
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v6

    invoke-direct {p0, p1, v0, v6, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 481
    :cond_46
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateSplitProgress()V

    goto :goto_b

    .line 459
    .end local v1    # "thumbHeight":I
    .end local v2    # "thumbOffset":I
    .end local v5    # "trackOffset":I
    :cond_4a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_22

    .line 468
    .restart local v1    # "thumbHeight":I
    :cond_4f
    const/4 v5, 0x0

    .line 469
    .restart local v5    # "trackOffset":I
    sub-int v7, v4, v1

    div-int/lit8 v2, v7, 0x2

    .restart local v2    # "thumbOffset":I
    goto :goto_29
.end method

.method private updateThumbAndTrackPosInVertical(II)V
    .registers 13
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v6, 0x0

    .line 485
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 486
    .local v3, "track":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 490
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    iget v7, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v8, p1, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 491
    .local v5, "trackWidth":I
    if-nez v0, :cond_3c

    move v2, v6

    .line 496
    .local v2, "thumbWidth":I
    :goto_17
    if-le v2, v5, :cond_41

    .line 497
    sub-int v7, v2, v5

    div-int/lit8 v4, v7, 0x2

    .line 498
    .local v4, "trackOffset":I
    const/4 v1, 0x0

    .line 504
    .local v1, "thumbOffset":I
    :goto_1e
    if-eqz v3, :cond_32

    .line 505
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v7, p1, v7

    sub-int/2addr v7, v4

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v8, p2, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v8, v9

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 509
    :cond_32
    if-eqz v0, :cond_3b

    .line 510
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v6

    invoke-direct {p0, p2, v0, v6, v1}, Landroid/widget/AbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    .line 512
    :cond_3b
    return-void

    .line 491
    .end local v1    # "thumbOffset":I
    .end local v2    # "thumbWidth":I
    .end local v4    # "trackOffset":I
    :cond_3c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_17

    .line 500
    .restart local v2    # "thumbWidth":I
    :cond_41
    const/4 v4, 0x0

    .line 501
    .restart local v4    # "trackOffset":I
    sub-int v7, v5, v2

    div-int/lit8 v1, v7, 0x2

    .restart local v1    # "thumbOffset":I
    goto :goto_1e
.end method

.method private updateWarningMode(I)V
    .registers 4
    .param p1, "progress"    # I

    .prologue
    const/4 v0, 0x1

    .line 1363
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1364
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ne p1, v1, :cond_1c

    .line 1365
    .local v0, "isMax":Z
    :goto_d
    if-eqz v0, :cond_1e

    sget-object v1, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    :goto_11
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1366
    if-eqz v0, :cond_21

    sget-object v1, Landroid/widget/AbsSeekBar;->OVERLAP_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    :goto_18
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1368
    .end local v0    # "isMax":Z
    :cond_1b
    return-void

    .line 1364
    :cond_1c
    const/4 v0, 0x0

    goto :goto_d

    .line 1365
    .restart local v0    # "isMax":Z
    :cond_1e
    sget-object v1, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    goto :goto_11

    .line 1366
    :cond_21
    sget-object v1, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    goto :goto_18
.end method


# virtual methods
.method animateSetProgress(I)V
    .registers 7
    .param p1, "progress"    # I

    .prologue
    const/4 v4, 0x1

    .line 993
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getAnimationPosition()F

    move-result v0

    .line 995
    .local v0, "curProgress":F
    :goto_b
    if-gez p1, :cond_3a

    .line 996
    const/4 p1, 0x0

    .line 1000
    :cond_e
    :goto_e
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->setProgressValueOnly(I)V

    .line 1002
    const-string v1, "animationPosition"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    int-to-float v3, p1

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    .line 1004
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1005
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 1006
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1007
    return-void

    .line 993
    .end local v0    # "curProgress":F
    :cond_34
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v0, v1

    goto :goto_b

    .line 997
    .restart local v0    # "curProgress":F
    :cond_3a
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-le p1, v1, :cond_e

    .line 998
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result p1

    goto :goto_e
.end method

.method drawThumb(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 731
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_22

    .line 732
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 735
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 736
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 740
    :goto_1a
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 741
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 743
    :cond_22
    return-void

    .line 738
    :cond_23
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1a
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 690
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 691
    .local v3, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_67

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    if-eqz v4, :cond_67

    .line 692
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 693
    .local v0, "insets":Landroid/graphics/Insets;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 694
    .local v2, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 695
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 696
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 697
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 699
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 700
    .local v1, "saveCount":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 701
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 702
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 707
    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v1    # "saveCount":I
    .end local v2    # "tempRect":Landroid/graphics/Rect;
    :goto_38
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v4

    if-nez v4, :cond_66

    .line 708
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 709
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 710
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 719
    :goto_51
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 720
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    if-le v4, v5, :cond_63

    .line 721
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 723
    :cond_63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 725
    :cond_66
    return-void

    .line 704
    :cond_67
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    goto :goto_38

    .line 712
    :cond_6b
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_8b

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_8b

    .line 713
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 714
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_51

    .line 716
    :cond_8b
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_51
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 419
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->drawableHotspotChanged(FF)V

    .line 421
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 422
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 424
    :cond_c
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 5

    .prologue
    .line 404
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 406
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 407
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_14

    .line 408
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_26

    const/16 v2, 0xff

    :goto_11
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 411
    :cond_14
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 412
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 413
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 415
    :cond_25
    return-void

    .line 408
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_26
    const/high16 v2, 0x437f0000    # 255.0f

    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_11
.end method

.method public getKeyProgressIncrement()I
    .registers 2

    .prologue
    .line 374
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSplitTrack()Z
    .registers 2

    .prologue
    .line 352
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbCentralX()I
    .registers 2

    .prologue
    .line 1186
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbPosX:I

    return v0
.end method

.method public getThumbCentralY()I
    .registers 2

    .prologue
    .line 1196
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbPosY:I

    return v0
.end method

.method public getThumbHeight()I
    .registers 2

    .prologue
    .line 1216
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getThumbOffset()I
    .registers 2

    .prologue
    .line 322
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getThumbWith()I
    .registers 2

    .prologue
    .line 1206
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method isAnimationRunning()Z
    .registers 2

    .prologue
    .line 976
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 395
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 397
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 398
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 400
    :cond_c
    return-void
.end method

.method onAnimatePosition(FZ)V
    .registers 3
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 437
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->setThumbPos(F)V

    .line 438
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 680
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 681
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 682
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 683
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 685
    :cond_15
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 686
    monitor-exit p0

    return-void

    .line 680
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onHoverChanged(III)V
    .registers 4
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 1096
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1142
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_f

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    if-ne v5, v4, :cond_10

    :cond_f
    move v1, v4

    .line 1145
    .local v1, "isPossibleTooltype":Z
    :cond_10
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isHoveringUIEnabled()Z

    move-result v4

    if-eqz v4, :cond_32

    if-eqz v1, :cond_32

    .line 1146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1147
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 1148
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 1149
    .local v3, "y":I
    const/16 v4, 0x9

    if-ne v0, v4, :cond_37

    .line 1151
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->trackHoverEvent(II)V

    .line 1152
    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/AbsSeekBar;->onStartTrackingHover(III)V

    .line 1168
    .end local v0    # "action":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_32
    :goto_32
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 1153
    .restart local v0    # "action":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_37
    const/4 v4, 0x7

    if-ne v0, v4, :cond_60

    .line 1154
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->trackHoverEvent(II)V

    .line 1155
    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/AbsSeekBar;->onHoverChanged(III)V

    .line 1157
    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoverPopupType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_32

    .line 1159
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 1161
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    goto :goto_32

    .line 1163
    :cond_60
    const/16 v4, 0xa

    if-ne v0, v4, :cond_32

    .line 1164
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingHover()V

    goto :goto_32
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1011
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1012
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1013
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1017
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1018
    const-class v1, Landroid/widget/AbsSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1020
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1021
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 1022
    .local v0, "progress":I
    if-lez v0, :cond_1d

    .line 1023
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1025
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 1026
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1029
    .end local v0    # "progress":I
    :cond_28
    return-void
.end method

.method onKeyChange()V
    .registers 1

    .prologue
    .line 935
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 939
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 940
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 941
    .local v0, "progress":I
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 942
    packed-switch p1, :pswitch_data_58

    .line 972
    .end local v0    # "progress":I
    :cond_15
    :goto_15
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_19
    return v1

    .line 944
    .restart local v0    # "progress":I
    :pswitch_1a
    if-lez v0, :cond_15

    .line 945
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->animateSetProgress(I)V

    .line 946
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_19

    .line 950
    :pswitch_27
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_15

    .line 951
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->animateSetProgress(I)V

    .line 952
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_19

    .line 956
    :cond_37
    packed-switch p1, :pswitch_data_60

    goto :goto_15

    .line 958
    :pswitch_3b
    if-lez v0, :cond_15

    .line 959
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->animateSetProgress(I)V

    .line 960
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_19

    .line 964
    :pswitch_48
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_15

    .line 965
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->animateSetProgress(I)V

    .line 966
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_19

    .line 942
    :pswitch_data_58
    .packed-switch 0x13
        :pswitch_27
        :pswitch_1a
    .end packed-switch

    .line 956
    :pswitch_data_60
    .packed-switch 0x15
        :pswitch_3b
        :pswitch_48
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 747
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 749
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 750
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 751
    .local v1, "dh":I
    if-eqz v0, :cond_3a

    .line 752
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 753
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_55

    move v4, v3

    .line 754
    .local v4, "thumbWidth":I
    :goto_16
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 755
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 756
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 764
    .end local v4    # "thumbWidth":I
    :cond_3a
    :goto_3a
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 765
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 767
    const/4 v5, 0x0

    invoke-static {v2, p1, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v1, p2, v6}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_53
    .catchall {:try_start_2 .. :try_end_53} :catchall_8c

    .line 769
    monitor-exit p0

    return-void

    .line 753
    :cond_55
    :try_start_55
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_16

    .line 758
    :cond_5c
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_85

    .line 759
    .local v3, "thumbHeight":I
    :goto_60
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 760
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 761
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3a

    .line 758
    .end local v3    # "thumbHeight":I
    :cond_85
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_8a
    .catchall {:try_start_55 .. :try_end_8a} :catchall_8c

    move-result v3

    goto :goto_60

    .line 747
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    :catchall_8c
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method onProgressRefresh(FZ)V
    .registers 4
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 428
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZ)V

    .line 430
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_c

    .line 431
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->setThumbPos(F)V

    .line 433
    :cond_c
    return-void
.end method

.method public onResolveDrawables(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 671
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    .line 673
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 674
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 676
    :cond_c
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 6
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1064
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    .line 1066
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1067
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_17

    .line 1068
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1073
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1075
    :cond_17
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 442
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 444
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 445
    return-void
.end method

.method onStartTrackingHover(III)V
    .registers 4
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 1082
    return-void
.end method

.method onStartTrackingTouch()V
    .registers 2

    .prologue
    .line 920
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 921
    return-void
.end method

.method onStopTrackingHover()V
    .registers 1

    .prologue
    .line 1089
    return-void
.end method

.method onStopTrackingTouch()V
    .registers 2

    .prologue
    .line 928
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 929
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 773
    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_f

    :cond_d
    move v2, v3

    .line 838
    :cond_e
    :goto_e
    return v2

    .line 777
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_c4

    goto :goto_e

    .line 779
    :pswitch_17
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 780
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    .line 781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mTouchDownY:F

    goto :goto_e

    .line 783
    :cond_2a
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 784
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3a

    .line 785
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 787
    :cond_3a
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 788
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 789
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_e

    .line 794
    :pswitch_44
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_4c

    .line 795
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_e

    .line 797
    :cond_4c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 798
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 799
    .local v1, "y":F
    invoke-virtual {p0, v5}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v3

    if-nez v3, :cond_69

    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_7e

    :cond_69
    invoke-virtual {p0, v5}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, p0, Landroid/widget/AbsSeekBar;->mTouchDownY:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_e

    .line 801
    :cond_7e
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 802
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8e

    .line 803
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 805
    :cond_8e
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 806
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 807
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto/16 :goto_e

    .line 813
    .end local v0    # "x":F
    .end local v1    # "y":F
    :pswitch_99
    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v4, :cond_ab

    .line 814
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 815
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 816
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 827
    :goto_a6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_e

    .line 820
    :cond_ab
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 821
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 822
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_a6

    .line 831
    :pswitch_b5
    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v4, :cond_bf

    .line 832
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 833
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 835
    :cond_bf
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_e

    .line 777
    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_17
        :pswitch_99
        :pswitch_44
        :pswitch_b5
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1033
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1059
    :goto_8
    return v2

    .line 1036
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_11

    move v2, v3

    .line 1037
    goto :goto_8

    .line 1039
    :cond_11
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    .line 1040
    .local v1, "progress":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1041
    .local v0, "increment":I
    sparse-switch p1, :sswitch_data_48

    move v2, v3

    .line 1059
    goto :goto_8

    .line 1043
    :sswitch_2a
    if-gtz v1, :cond_2e

    move v2, v3

    .line 1044
    goto :goto_8

    .line 1046
    :cond_2e
    sub-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 1047
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_8

    .line 1051
    :sswitch_37
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    if-lt v1, v4, :cond_3f

    move v2, v3

    .line 1052
    goto :goto_8

    .line 1054
    :cond_3f
    add-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 1055
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_8

    .line 1041
    :sswitch_data_48
    .sparse-switch
        0x1000 -> :sswitch_37
        0x2000 -> :sswitch_2a
    .end sparse-switch
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1263
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 1265
    :goto_4
    return-void

    .line 1264
    :cond_5
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_4
.end method

.method public setHoverPopupType(I)V
    .registers 6
    .param p1, "type"    # I

    .prologue
    .line 1123
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isHoveringUIEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1135
    :goto_6
    return-void

    .line 1127
    :cond_7
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2a

    .line 1128
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0x3231

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 1130
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMeasuredHeight()I

    move-result v0

    .line 1131
    .local v0, "contentHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 1132
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    .line 1134
    .end local v0    # "contentHeight":I
    :cond_2a
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setHoverPopupType(I)V

    goto :goto_6
.end method

.method public setKeyProgressIncrement(I)V
    .registers 2
    .param p1, "increment"    # I

    .prologue
    .line 362
    if-gez p1, :cond_3

    neg-int p1, p1

    .end local p1    # "increment":I
    :cond_3
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 363
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .registers 5
    .param p1, "max"    # I

    .prologue
    .line 379
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 381
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_27

    .line 384
    :cond_13
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 386
    :cond_27
    monitor-exit p0

    return-void

    .line 379
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 1230
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMode(I)V

    .line 1231
    packed-switch p1, :pswitch_data_42

    .line 1248
    :goto_6
    :pswitch_6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1249
    return-void

    .line 1233
    :pswitch_a
    sget-object v1, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1234
    sget-object v1, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_6

    .line 1237
    :pswitch_15
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v2, 0x1080adc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1238
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 1241
    .end local v0    # "thumb":Landroid/graphics/drawable/Drawable;
    :pswitch_22
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v2, 0x1080aea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 1242
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    const v2, 0x1080aeb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 1245
    :pswitch_39
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/AbsSeekBar;->updateWarningMode(I)V

    goto :goto_6

    .line 1231
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_a
        :pswitch_39
        :pswitch_6
        :pswitch_15
        :pswitch_22
    .end packed-switch
.end method

.method public setOverlapPointForDualColor(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    const v2, 0x1080ae1

    const v1, 0x1080adf

    .line 1274
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    if-ge p1, v0, :cond_e

    if-nez p1, :cond_f

    .line 1296
    :cond_e
    :goto_e
    return-void

    .line 1278
    :cond_f
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1d

    .line 1279
    iput p1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 1280
    sget-object v0, Landroid/widget/AbsSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1295
    :goto_19
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto :goto_e

    .line 1282
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1283
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    .line 1284
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    .line 1292
    :goto_34
    iput p1, p0, Landroid/widget/AbsSeekBar;->mOverlapPoint:I

    .line 1293
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    goto :goto_19

    .line 1285
    :cond_3a
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1286
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    .line 1287
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_34
.end method

.method public setProgress(IZ)V
    .registers 4
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 984
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 985
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 987
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 988
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->updateWarningMode(I)V

    .line 989
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateDualColorMode()V

    .line 990
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1176
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1177
    return-void
.end method

.method public setProgressDrawableForAutoBrightness(Z)V
    .registers 2
    .param p1, "auto"    # Z

    .prologue
    .line 1226
    return-void
.end method

.method public setSplitProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1255
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 1257
    :goto_4
    return-void

    .line 1256
    :cond_5
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    goto :goto_4
.end method

.method public setSplitTrack(Z)V
    .registers 2
    .param p1, "splitTrack"    # Z

    .prologue
    .line 344
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    .line 345
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 346
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 183
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_72

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_72

    .line 184
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 185
    const/4 v0, 0x1

    .line 190
    .local v0, "needUpdate":Z
    :goto_f
    if-eqz p1, :cond_4d

    .line 191
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 192
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 193
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 199
    :cond_21
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 200
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 206
    :goto_30
    if-eqz v0, :cond_4d

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_4a

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_4d

    .line 209
    :cond_4a
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    .line 213
    :cond_4d
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 215
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 216
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 218
    if-eqz v0, :cond_71

    .line 219
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 220
    if-eqz p1, :cond_71

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 223
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 224
    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 227
    .end local v1    # "state":[I
    :cond_71
    return-void

    .line 187
    .end local v0    # "needUpdate":Z
    :cond_72
    const/4 v0, 0x0

    .restart local v0    # "needUpdate":Z
    goto :goto_f

    .line 202
    :cond_74
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    goto :goto_30
.end method

.method public setThumbOffset(I)V
    .registers 2
    .param p1, "thumbOffset"    # I

    .prologue
    .line 332
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 333
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 334
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 254
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 257
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 258
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 285
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 288
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 289
    return-void
.end method

.method protected updateDrawableBounds(II)V
    .registers 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1353
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 1354
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateBoundsForDualColor()V

    .line 1355
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 390
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_a

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
