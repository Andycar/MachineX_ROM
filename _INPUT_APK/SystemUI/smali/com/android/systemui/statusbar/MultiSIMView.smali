.class public Lcom/android/systemui/statusbar/MultiSIMView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "MultiSIMView.java"


# instance fields
.field private mAnimating:Z

.field private final mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mContent:Landroid/view/View;

.field private final mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mHeight:I

.field private mIsVisible:Z

.field private mWillBeGone:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v2, v1, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 41
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MultiSIMView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b031a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mHeight:I

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MultiSIMView;->setNotification(Z)V

    .line 47
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/MultiSIMView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MultiSIMView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mAnimating:Z

    return p1
.end method

.method private animateText(ZLjava/lang/Runnable;)V
    .locals 6
    .param p1, "nowVisible"    # Z
    .param p2, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mIsVisible:Z

    if-eq p1, v2, :cond_3

    .line 111
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 113
    .local v0, "endValue":F
    :goto_0
    if-eqz p1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 118
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mAnimating:Z

    .line 119
    iget-object v2, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x104

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/MultiSIMView$1;

    invoke-direct {v3, p0, p2}, Lcom/android/systemui/statusbar/MultiSIMView$1;-><init>(Lcom/android/systemui/statusbar/MultiSIMView;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 133
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mIsVisible:Z

    .line 139
    .end local v0    # "endValue":F
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_0
    :goto_2
    return-void

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 116
    .restart local v0    # "endValue":F
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .restart local v1    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_1

    .line 135
    .end local v0    # "endValue":F
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_3
    if-eqz p2, :cond_0

    .line 136
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 163
    return-void
.end method

.method protected getInitialHeight()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mHeight:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mHeight:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mIsVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableView;->onFinishInflate()V

    .line 56
    const v0, 0x7f0e01a0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MultiSIMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mContent:Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MultiSIMView;->setInvisible()V

    .line 58
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 80
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ExpandableView;->onLayout(ZIIII)V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MultiSIMView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 82
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/MultiSIMView;->measureChildren(II)V

    .line 73
    iget v0, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mHeight:I

    .line 74
    .local v0, "height":I
    iget v1, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mHeight:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MultiSIMView;->setActualHeight(I)V

    .line 75
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/MultiSIMView;->setMeasuredDimension(II)V

    .line 76
    return-void
.end method

.method public performAddAnimation(JJ)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MultiSIMView;->performVisibilityAnimation(Z)V

    .line 154
    return-void
.end method

.method public performRemoveAnimation(JFLjava/lang/Runnable;)V
    .locals 1
    .param p1, "duration"    # J
    .param p3, "translationDirection"    # F
    .param p4, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/MultiSIMView;->performVisibilityAnimation(Z)V

    .line 149
    return-void
.end method

.method public performVisibilityAnimation(Z)V
    .locals 1
    .param p1, "nowVisible"    # Z

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/MultiSIMView;->animateText(ZLjava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public performVisibilityAnimation(ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "nowVisible"    # Z
    .param p2, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/MultiSIMView;->animateText(ZLjava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public setInvisible()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mIsVisible:Z

    .line 144
    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mContent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method public setWillBeGone(Z)V
    .locals 0
    .param p1, "willBeGone"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mWillBeGone:Z

    .line 171
    return-void
.end method

.method public willBeGone()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MultiSIMView;->mWillBeGone:Z

    return v0
.end method
