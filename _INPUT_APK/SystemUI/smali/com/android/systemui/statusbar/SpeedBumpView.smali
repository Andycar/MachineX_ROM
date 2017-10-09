.class public Lcom/android/systemui/statusbar/SpeedBumpView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "SpeedBumpView.java"


# instance fields
.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mIsVisible:Z

.field private mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

.field private final mSpeedBumpHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mIsVisible:Z

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SpeedBumpView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mSpeedBumpHeight:I

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SpeedBumpView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 41
    return-void
.end method


# virtual methods
.method public animateDivider(ZJLjava/lang/Runnable;)V
    .locals 4
    .param p1, "nowVisible"    # Z
    .param p2, "delay"    # J
    .param p4, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 92
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mIsVisible:Z

    if-eq p1, v1, :cond_2

    .line 94
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 95
    .local v0, "endValue":F
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/AlphaOptimizedView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 102
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mIsVisible:Z

    .line 108
    .end local v0    # "endValue":F
    :cond_0
    :goto_1
    return-void

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_2
    if-eqz p4, :cond_0

    .line 105
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method protected getInitialHeight()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mSpeedBumpHeight:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mSpeedBumpHeight:I

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableView;->onFinishInflate()V

    .line 46
    const v0, 0x7f0e0311

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SpeedBumpView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/AlphaOptimizedView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

    .line 47
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 61
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ExpandableView;->onLayout(ZIIII)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/AlphaOptimizedView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlphaOptimizedView;->setPivotX(F)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/AlphaOptimizedView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlphaOptimizedView;->setPivotY(F)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SpeedBumpView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 65
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/SpeedBumpView;->measureChildren(II)V

    .line 70
    iget v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mSpeedBumpHeight:I

    .line 71
    .local v0, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/SpeedBumpView;->setMeasuredDimension(II)V

    .line 72
    return-void
.end method

.method public performAddAnimation(JJ)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/SpeedBumpView;->performVisibilityAnimation(ZJ)V

    .line 128
    return-void
.end method

.method public performRemoveAnimation(JFLjava/lang/Runnable;)V
    .locals 4
    .param p1, "duration"    # J
    .param p3, "translationDirection"    # F
    .param p4, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 121
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/SpeedBumpView;->performVisibilityAnimation(ZJ)V

    .line 122
    return-void
.end method

.method public performVisibilityAnimation(ZJ)V
    .locals 2
    .param p1, "nowVisible"    # Z
    .param p2, "delay"    # J

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/SpeedBumpView;->animateDivider(ZJLjava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public setInvisible()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlphaOptimizedView;->setAlpha(F)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlphaOptimizedView;->setScaleX(F)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlphaOptimizedView;->setScaleY(F)V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mIsVisible:Z

    .line 115
    return-void
.end method
