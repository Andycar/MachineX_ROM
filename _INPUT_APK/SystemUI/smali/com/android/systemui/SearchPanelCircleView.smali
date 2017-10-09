.class public Lcom/android/systemui/SearchPanelCircleView;
.super Landroid/widget/FrameLayout;
.source "SearchPanelCircleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SearchPanelCircleView$Ripple;
    }
.end annotation


# instance fields
.field private mAnimatingOut:Z

.field private final mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mBaseMargin:I

.field private mCircleAnimationEndValue:F

.field private mCircleAnimator:Landroid/animation/ValueAnimator;

.field private mCircleHidden:Z

.field private final mCircleMinSize:I

.field private final mCircleRect:Landroid/graphics/Rect;

.field private mCircleSize:F

.field private mCircleUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mClipToOutline:Z

.field private final mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mDraggedFarEnough:Z

.field private mFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mHorizontal:Z

.field private mLogo:Landroid/widget/ImageView;

.field private final mMaxElevation:I

.field private mOffset:F

.field private mOffsetAnimatingIn:Z

.field private mOffsetAnimator:Landroid/animation/ValueAnimator;

.field private mOffsetUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mOutlineAlpha:F

.field private final mRipplePaint:Landroid/graphics/Paint;

.field private mRipples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/SearchPanelCircleView$Ripple;",
            ">;"
        }
    .end annotation
.end field

.field private final mStaticOffset:I

.field private final mStaticRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/SearchPanelCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SearchPanelCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/SearchPanelCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipplePaint:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleRect:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticRect:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipples:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Lcom/android/systemui/SearchPanelCircleView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelCircleView$1;-><init>(Lcom/android/systemui/SearchPanelCircleView;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 78
    new-instance v0, Lcom/android/systemui/SearchPanelCircleView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelCircleView$2;-><init>(Lcom/android/systemui/SearchPanelCircleView;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 84
    new-instance v0, Lcom/android/systemui/SearchPanelCircleView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelCircleView$3;-><init>(Lcom/android/systemui/SearchPanelCircleView;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 108
    new-instance v0, Lcom/android/systemui/SearchPanelCircleView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelCircleView$4;-><init>(Lcom/android/systemui/SearchPanelCircleView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelCircleView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelCircleView;->setWillNotDraw(Z)V

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleMinSize:I

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mBaseMargin:I

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mMaxElevation:I

    .line 128
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mContext:Landroid/content/Context;

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mContext:Landroid/content/Context;

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 132
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mContext:Landroid/content/Context;

    const v1, 0x10c000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 134
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipplePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipplePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SearchPanelCircleView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelCircleView;
    .param p1, "x1"    # F

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/SearchPanelCircleView;->applyCircleSize(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/SearchPanelCircleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelCircleView;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->updateElevation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/SearchPanelCircleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelCircleView;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->addRipple()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/SearchPanelCircleView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelCircleView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/SearchPanelCircleView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelCircleView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/SearchPanelCircleView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelCircleView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipples:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/SearchPanelCircleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelCircleView;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->updateClipping()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/SearchPanelCircleView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelCircleView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipplePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/SearchPanelCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelCircleView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/SearchPanelCircleView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelCircleView;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleSize:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/SearchPanelCircleView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelCircleView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/SearchPanelCircleView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelCircleView;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mOutlineAlpha:F

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/SearchPanelCircleView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelCircleView;
    .param p1, "x1"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mOutlineAlpha:F

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui/SearchPanelCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelCircleView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/SearchPanelCircleView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelCircleView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mBackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/SearchPanelCircleView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelCircleView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/SearchPanelCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SearchPanelCircleView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private addRipple()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 465
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipples:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 484
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mHorizontal:Z

    if-eqz v6, :cond_1

    .line 471
    const/high16 v4, 0x3f400000    # 0.75f

    .line 472
    .local v4, "xInterpolation":F
    const/high16 v5, 0x3f000000    # 0.5f

    .line 477
    .local v5, "yInterpolation":F
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float v7, v8, v4

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float v0, v6, v7

    .line 479
    .local v0, "circleCenterX":F
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float v7, v8, v5

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float v1, v6, v7

    .line 481
    .local v1, "circleCenterY":F
    iget v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleSize:F

    iget v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleMinSize:I

    int-to-float v7, v7

    const/high16 v8, 0x3fa00000    # 1.25f

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v7, 0x3f400000    # 0.75f

    mul-float v2, v6, v7

    .line 482
    .local v2, "radius":F
    new-instance v3, Lcom/android/systemui/SearchPanelCircleView$Ripple;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/systemui/SearchPanelCircleView$Ripple;-><init>(Lcom/android/systemui/SearchPanelCircleView;FFF)V

    .line 483
    .local v3, "ripple":Lcom/android/systemui/SearchPanelCircleView$Ripple;
    invoke-virtual {v3}, Lcom/android/systemui/SearchPanelCircleView$Ripple;->start()V

    goto :goto_0

    .line 474
    .end local v0    # "circleCenterX":F
    .end local v1    # "circleCenterY":F
    .end local v2    # "radius":F
    .end local v3    # "ripple":Lcom/android/systemui/SearchPanelCircleView$Ripple;
    .end local v4    # "xInterpolation":F
    .end local v5    # "yInterpolation":F
    :cond_1
    const/high16 v4, 0x3f000000    # 0.5f

    .line 475
    .restart local v4    # "xInterpolation":F
    const/high16 v5, 0x3f400000    # 0.75f

    .restart local v5    # "yInterpolation":F
    goto :goto_1
.end method

.method private applyCircleSize(F)V
    .locals 0
    .param p1, "circleSize"    # F

    .prologue
    .line 222
    iput p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleSize:F

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->updateLayout()V

    .line 224
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 157
    return-void
.end method

.method private drawRipples(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipples:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipples:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/SearchPanelCircleView$Ripple;

    .line 150
    .local v1, "ripple":Lcom/android/systemui/SearchPanelCircleView$Ripple;
    invoke-virtual {v1, p1}, Lcom/android/systemui/SearchPanelCircleView$Ripple;->draw(Landroid/graphics/Canvas;)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v1    # "ripple":Lcom/android/systemui/SearchPanelCircleView$Ripple;
    :cond_0
    return-void
.end method

.method private performExitFadeOutAnimation(IILjava/lang/Runnable;)V
    .locals 4
    .param p1, "startDelay"    # I
    .param p2, "duration"    # I
    .param p3, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 403
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 406
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/SearchPanelCircleView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/SearchPanelCircleView$7;-><init>(Lcom/android/systemui/SearchPanelCircleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 423
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/SearchPanelCircleView$8;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/SearchPanelCircleView$8;-><init>(Lcom/android/systemui/SearchPanelCircleView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 435
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 436
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 437
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 438
    return-void
.end method

.method private rubberband(F)F
    .locals 4
    .param p1, "diff"    # F

    .prologue
    .line 357
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fe3333340000000L    # 0.6000000238418579

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private setOffset(FZILandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "offset"    # F
    .param p2, "animate"    # Z
    .param p3, "startDelay"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p5, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 255
    if-nez p2, :cond_1

    .line 256
    iput p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffset:F

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->updateLayout()V

    .line 258
    if-eqz p5, :cond_0

    .line 259
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    .line 263
    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 264
    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 266
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffset:F

    aput v4, v3, v2

    aput p1, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 267
    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 268
    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/systemui/SearchPanelCircleView$6;

    invoke-direct {v4, p0, p5}, Lcom/android/systemui/SearchPanelCircleView$6;-><init>(Lcom/android/systemui/SearchPanelCircleView;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 277
    if-eqz p4, :cond_3

    move-object v0, p4

    .line 279
    .local v0, "desiredInterpolator":Landroid/view/animation/Interpolator;
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 280
    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    int-to-long v4, p3

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 281
    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 282
    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 283
    cmpl-float v3, p1, v6

    if-eqz v3, :cond_5

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimatingIn:Z

    goto :goto_0

    .line 277
    .end local v0    # "desiredInterpolator":Landroid/view/animation/Interpolator;
    :cond_3
    cmpl-float v3, p1, v6

    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    .restart local v0    # "desiredInterpolator":Landroid/view/animation/Interpolator;
    :cond_5
    move v1, v2

    .line 283
    goto :goto_2
.end method

.method private updateCircleRect()V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffset:F

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/SearchPanelCircleView;->updateCircleRect(Landroid/graphics/Rect;FZ)V

    .line 327
    return-void
.end method

.method private updateCircleRect(Landroid/graphics/Rect;FZ)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "offset"    # F
    .param p3, "useStaticSize"    # Z

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 331
    if-eqz p3, :cond_0

    iget v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleMinSize:I

    int-to-float v0, v3

    .line 332
    .local v0, "circleSize":F
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mHorizontal:Z

    if-eqz v3, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v4, v0, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/SearchPanelCircleView;->mBaseMargin:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, p2

    float-to-int v1, v3

    .line 334
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    div-float/2addr v3, v5

    float-to-int v2, v3

    .line 339
    .local v2, "top":I
    :goto_1
    int-to-float v3, v1

    add-float/2addr v3, v0

    float-to-int v3, v3

    int-to-float v4, v2

    add-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 340
    return-void

    .line 331
    .end local v0    # "circleSize":F
    .end local v1    # "left":I
    .end local v2    # "top":I
    :cond_0
    iget v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleSize:F

    goto :goto_0

    .line 336
    .restart local v0    # "circleSize":F
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    div-int/lit8 v1, v3, 0x2

    .line 337
    .restart local v1    # "left":I
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v4, v0, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/SearchPanelCircleView;->mBaseMargin:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, p2

    float-to-int v2, v3

    .restart local v2    # "top":I
    goto :goto_1
.end method

.method private updateClipping()V
    .locals 3

    .prologue
    .line 296
    iget v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleSize:F

    iget v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleMinSize:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipples:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 297
    .local v0, "clip":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mClipToOutline:Z

    if-eq v0, v1, :cond_1

    .line 298
    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelCircleView;->setClipToOutline(Z)V

    .line 299
    iput-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mClipToOutline:Z

    .line 301
    :cond_1
    return-void

    .line 296
    .end local v0    # "clip":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateElevation()V
    .locals 4

    .prologue
    .line 227
    iget v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffset:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 228
    .local v1, "t":F
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float v1, v2, v3

    .line 229
    iget v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mMaxElevation:I

    int-to-float v2, v2

    mul-float v0, v1, v2

    .line 230
    .local v0, "offset":F
    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelCircleView;->setElevation(F)V

    .line 231
    return-void
.end method

.method private updateLayout()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->updateCircleRect()V

    .line 289
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->updateLogo()V

    .line 290
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->invalidateOutline()V

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->invalidate()V

    .line 292
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->updateClipping()V

    .line 293
    return-void
.end method

.method private updateLogo()V
    .locals 10

    .prologue
    const v9, 0x3e99999a    # 0.3f

    const/high16 v8, 0x40000000    # 2.0f

    .line 304
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    .line 305
    .local v1, "exitAnimationRunning":Z
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleRect:Landroid/graphics/Rect;

    .line 306
    .local v2, "rect":Landroid/graphics/Rect;
    :goto_1
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    iget-object v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    sub-float v4, v6, v7

    .line 307
    .local v4, "translationX":F
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    iget-object v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    sub-float v5, v6, v7

    .line 308
    .local v5, "translationY":F
    iget v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffset:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 309
    .local v3, "t":F
    if-nez v1, :cond_3

    .line 310
    iget-boolean v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mHorizontal:Z

    if-eqz v6, :cond_2

    .line 311
    iget v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    mul-float/2addr v6, v9

    add-float/2addr v4, v6

    .line 315
    :goto_2
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v0, v6, v3

    .line 316
    .local v0, "alpha":F
    const/high16 v6, 0x3f000000    # 0.5f

    sub-float v6, v0, v6

    mul-float/2addr v6, v8

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 317
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 321
    .end local v0    # "alpha":F
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 322
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 323
    return-void

    .line 304
    .end local v1    # "exitAnimationRunning":Z
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "t":F
    .end local v4    # "translationX":F
    .end local v5    # "translationY":F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 305
    .restart local v1    # "exitAnimationRunning":Z
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticRect:Landroid/graphics/Rect;

    goto :goto_1

    .line 313
    .restart local v2    # "rect":Landroid/graphics/Rect;
    .restart local v3    # "t":F
    .restart local v4    # "translationX":F
    .restart local v5    # "translationY":F
    :cond_2
    iget v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    goto :goto_2

    .line 319
    :cond_3
    iget v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffset:F

    iget v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    goto :goto_3
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    return v0
.end method

.method public isAnimatingOut()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mAnimatingOut:Z

    return v0
.end method

.method public isAnimationRunning(Z)Z
    .locals 1
    .param p1, "enterAnimation"    # Z

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimatingIn:Z

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/android/systemui/SearchPanelCircleView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/android/systemui/SearchPanelCircleView;->drawRipples(Landroid/graphics/Canvas;)V

    .line 145
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 162
    const v0, 0x7f0e0321

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    .line 163
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 167
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 168
    if-eqz p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/SearchPanelCircleView;->updateCircleRect(Landroid/graphics/Rect;FZ)V

    .line 171
    :cond_0
    return-void
.end method

.method public performOnAnimationFinished(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/SearchPanelCircleView$10;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/SearchPanelCircleView$10;-><init>(Lcom/android/systemui/SearchPanelCircleView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    if-eqz p1, :cond_0

    .line 519
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 487
    iput-boolean v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mDraggedFarEnough:Z

    .line 488
    iput-boolean v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mAnimatingOut:Z

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleHidden:Z

    .line 490
    iput-boolean v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mClipToOutline:Z

    .line 491
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 495
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mOutlineAlpha:F

    .line 496
    return-void
.end method

.method public setAnimatingOut(Z)V
    .locals 0
    .param p1, "animatingOut"    # Z

    .prologue
    .line 525
    iput-boolean p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mAnimatingOut:Z

    .line 526
    return-void
.end method

.method public setCircleSize(F)V
    .locals 6
    .param p1, "circleSize"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 174
    move-object v0, p0

    move v1, p1

    move v4, v2

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/SearchPanelCircleView;->setCircleSize(FZLjava/lang/Runnable;ILandroid/view/animation/Interpolator;)V

    .line 175
    return-void
.end method

.method public setCircleSize(FZLjava/lang/Runnable;ILandroid/view/animation/Interpolator;)V
    .locals 10
    .param p1, "circleSize"    # F
    .param p2, "animated"    # Z
    .param p3, "endRunnable"    # Ljava/lang/Runnable;
    .param p4, "startDelay"    # I
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 179
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    .line 180
    .local v4, "isAnimating":Z
    :goto_0
    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v1, 0x1

    .line 181
    .local v1, "animationPending":Z
    :goto_1
    if-eqz v4, :cond_3

    iget v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimationEndValue:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    const/4 v0, 0x1

    .line 182
    .local v0, "animatingOut":Z
    :goto_2
    if-nez p2, :cond_0

    if-nez v1, :cond_0

    if-eqz v0, :cond_8

    .line 183
    :cond_0
    if-eqz v4, :cond_5

    .line 184
    iget v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimationEndValue:F

    cmpl-float v6, p1, v6

    if-nez v6, :cond_4

    .line 219
    :goto_3
    return-void

    .line 179
    .end local v0    # "animatingOut":Z
    .end local v1    # "animationPending":Z
    .end local v4    # "isAnimating":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 180
    .restart local v4    # "isAnimating":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 181
    .restart local v1    # "animationPending":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 187
    .restart local v0    # "animatingOut":Z
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    .line 189
    :cond_5
    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleSize:F

    aput v8, v6, v7

    const/4 v7, 0x1

    aput p1, v6, v7

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    .line 190
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget-object v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 191
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget-object v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 192
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/systemui/SearchPanelCircleView$5;

    invoke-direct {v7, p0, p3}, Lcom/android/systemui/SearchPanelCircleView$5;-><init>(Lcom/android/systemui/SearchPanelCircleView;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    if-eqz p5, :cond_6

    move-object v2, p5

    .line 202
    .local v2, "desiredInterpolator":Landroid/view/animation/Interpolator;
    :goto_4
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 203
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 204
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    int-to-long v8, p4

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 205
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 206
    iput p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimationEndValue:F

    goto :goto_3

    .line 200
    .end local v2    # "desiredInterpolator":Landroid/view/animation/Interpolator;
    :cond_6
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-nez v6, :cond_7

    iget-object v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_4

    .line 208
    :cond_8
    if-eqz v4, :cond_9

    .line 209
    iget v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimationEndValue:F

    sub-float v3, p1, v6

    .line 210
    .local v3, "diff":F
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 211
    .local v5, "values":[Landroid/animation/PropertyValuesHolder;
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v3, v7, v8

    const/4 v8, 0x1

    aput p1, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 212
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget-object v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 213
    iput p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimationEndValue:F

    goto/16 :goto_3

    .line 215
    .end local v3    # "diff":F
    .end local v5    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/systemui/SearchPanelCircleView;->applyCircleSize(F)V

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->updateElevation()V

    goto/16 :goto_3
.end method

.method public setDragDistance(F)V
    .locals 3
    .param p1, "distance"    # F

    .prologue
    .line 349
    iget-boolean v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mAnimatingOut:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleHidden:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mDraggedFarEnough:Z

    if-eqz v1, :cond_1

    .line 350
    :cond_0
    iget v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleMinSize:I

    int-to-float v1, v1

    invoke-direct {p0, p1}, Lcom/android/systemui/SearchPanelCircleView;->rubberband(F)F

    move-result v2

    add-float v0, v1, v2

    .line 351
    .local v0, "circleSize":F
    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelCircleView;->setCircleSize(F)V

    .line 354
    .end local v0    # "circleSize":F
    :cond_1
    return-void
.end method

.method public setDraggedFarEnough(Z)V
    .locals 4
    .param p1, "farEnough"    # Z

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mDraggedFarEnough:Z

    if-eq p1, v0, :cond_1

    .line 442
    if-eqz p1, :cond_3

    .line 443
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleHidden:Z

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->startEnterAnimation()V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    .line 447
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->addRipple()V

    .line 459
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mDraggedFarEnough:Z

    .line 462
    :cond_1
    return-void

    .line 449
    :cond_2
    new-instance v0, Lcom/android/systemui/SearchPanelCircleView$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelCircleView$9;-><init>(Lcom/android/systemui/SearchPanelCircleView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/SearchPanelCircleView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 457
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelCircleView;->startAbortAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setHorizontal(Z)V
    .locals 3
    .param p1, "horizontal"    # Z

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mHorizontal:Z

    .line 344
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/SearchPanelCircleView;->updateCircleRect(Landroid/graphics/Rect;FZ)V

    .line 345
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->updateLayout()V

    .line 346
    return-void
.end method

.method public setOffset(F)V
    .locals 6
    .param p1, "offset"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 239
    move-object v0, p0

    move v1, p1

    move v3, v2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/SearchPanelCircleView;->setOffset(FZILandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 240
    return-void
.end method

.method public startAbortAnimation(Ljava/lang/Runnable;)V
    .locals 11
    .param p1, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 361
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mAnimatingOut:Z

    if-eqz v0, :cond_1

    .line 362
    if-eqz p1, :cond_0

    .line 363
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 370
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    move-object v5, v3

    .line 367
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/SearchPanelCircleView;->setCircleSize(FZLjava/lang/Runnable;ILandroid/view/animation/Interpolator;)V

    move-object v5, p0

    move v6, v1

    move v7, v2

    move v8, v4

    move-object v9, v3

    move-object v10, p1

    .line 368
    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/SearchPanelCircleView;->setOffset(FZILandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 369
    iput-boolean v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleHidden:Z

    goto :goto_0
.end method

.method public startEnterAnimation()V
    .locals 11

    .prologue
    const/16 v4, 0x32

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 373
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mAnimatingOut:Z

    if-eqz v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/SearchPanelCircleView;->applyCircleSize(F)V

    .line 377
    invoke-virtual {p0, v1}, Lcom/android/systemui/SearchPanelCircleView;->setOffset(F)V

    .line 378
    iget v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleMinSize:I

    int-to-float v1, v0

    move-object v0, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/SearchPanelCircleView;->setCircleSize(FZLjava/lang/Runnable;ILandroid/view/animation/Interpolator;)V

    .line 379
    iget v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v6, v0

    move-object v5, p0

    move v7, v2

    move v8, v4

    move-object v9, v3

    move-object v10, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/SearchPanelCircleView;->setOffset(FZILandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleHidden:Z

    goto :goto_0
.end method

.method public startExitAnimation(Ljava/lang/Runnable;)V
    .locals 9
    .param p1, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mHorizontal:Z

    if-nez v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v6, v0, v2

    .line 387
    .local v6, "offset":F
    iget v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mBaseMargin:I

    int-to-float v0, v0

    sub-float v1, v6, v0

    const/4 v2, 0x1

    const/16 v3, 0x32

    iget-object v4, p0, Lcom/android/systemui/SearchPanelCircleView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/SearchPanelCircleView;->setOffset(FZILandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    .line 389
    .local v7, "xMax":F
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v8, v0

    .line 390
    .local v8, "yMax":F
    float-to-double v2, v7

    float-to-double v4, v8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 391
    .local v1, "maxRadius":F
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x32

    iget-object v5, p0, Lcom/android/systemui/SearchPanelCircleView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/SearchPanelCircleView;->setCircleSize(FZLjava/lang/Runnable;ILandroid/view/animation/Interpolator;)V

    .line 392
    const/16 v0, 0x32

    const/16 v2, 0x12c

    invoke-direct {p0, v0, v2, p1}, Lcom/android/systemui/SearchPanelCircleView;->performExitFadeOutAnimation(IILjava/lang/Runnable;)V

    .line 399
    .end local v1    # "maxRadius":F
    .end local v6    # "offset":F
    .end local v7    # "xMax":F
    .end local v8    # "yMax":F
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
