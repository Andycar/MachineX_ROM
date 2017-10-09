.class public Lcom/android/settings/widget/SetupWizardIllustration;
.super Landroid/widget/FrameLayout;
.source "SetupWizardIllustration.java"


# instance fields
.field private mAspectRatio:F

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBaselineGridSize:F

.field private mForeground:Landroid/graphics/drawable/Drawable;

.field private final mForegroundBounds:Landroid/graphics/Rect;

.field private mScale:F

.field private final mViewBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SetupWizardIllustration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SetupWizardIllustration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/SetupWizardIllustration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mViewBounds:Landroid/graphics/Rect;

    .line 48
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mForegroundBounds:Landroid/graphics/Rect;

    .line 49
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mScale:F

    .line 50
    iput v2, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mAspectRatio:F

    .line 67
    if-eqz p2, :cond_0

    .line 68
    sget-object v1, Lcom/android/settings/R$styleable;->SetupWizardIllustration:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mAspectRatio:F

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/SetupWizardIllustration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mBaselineGridSize:F

    .line 75
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SetupWizardIllustration;->setWillNotDraw(Z)V

    .line 76
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 147
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mForegroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 149
    iget v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mScale:F

    iget v1, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mScale:F

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 159
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 116
    sub-int v7, p4, p2

    .line 117
    .local v7, "layoutWidth":I
    sub-int v6, p5, p3

    .line 118
    .local v6, "layoutHeight":I
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 120
    .local v1, "intrinsicWidth":I
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 121
    .local v2, "intrinsicHeight":I
    invoke-virtual {p0}, Lcom/android/settings/widget/SetupWizardIllustration;->getLayoutDirection()I

    move-result v5

    .line 123
    .local v5, "layoutDirection":I
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mViewBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v7, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 124
    iget v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mAspectRatio:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    .line 125
    int-to-float v0, v7

    int-to-float v3, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mScale:F

    .line 126
    move v1, v7

    .line 127
    int-to-float v0, v2

    iget v3, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mScale:F

    mul-float/2addr v0, v3

    float-to-int v2, v0

    .line 129
    :cond_0
    const/16 v0, 0x37

    iget-object v3, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mViewBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mForegroundBounds:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mForeground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mForegroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 133
    .end local v1    # "intrinsicWidth":I
    .end local v2    # "intrinsicHeight":I
    .end local v5    # "layoutDirection":I
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v8, v7

    iget v9, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mScale:F

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    iget-object v9, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mForegroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v9, v6, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mScale:F

    div-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    invoke-virtual {v0, v3, v4, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 140
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 104
    iget v2, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mAspectRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 106
    .local v1, "parentWidth":I
    int-to-float v2, v1

    iget v3, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mAspectRatio:F

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 107
    .local v0, "illustrationHeight":I
    int-to-float v2, v0

    int-to-float v3, v0

    iget v4, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mBaselineGridSize:F

    rem-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 108
    invoke-virtual {p0, v5, v0, v5, v5}, Lcom/android/settings/widget/SetupWizardIllustration;->setPaddingRelative(IIII)V

    .line 110
    .end local v0    # "illustrationHeight":I
    .end local v1    # "parentWidth":I
    :cond_0
    sget-object v2, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SetupWizardIllustration;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 111
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 112
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 100
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 85
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "foreground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/widget/SetupWizardIllustration;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 94
    return-void
.end method
