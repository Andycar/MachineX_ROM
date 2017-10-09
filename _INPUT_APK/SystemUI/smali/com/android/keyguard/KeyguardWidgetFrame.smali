.class public Lcom/android/keyguard/KeyguardWidgetFrame;
.super Landroid/widget/FrameLayout;
.source "KeyguardWidgetFrame.java"


# static fields
.field static final ENABLE_HOVER_OVER_DELETE_DROP_TARGET_OVERLAY:Z = true

.field static final HOVER_OVER_DELETE_DROP_TARGET_OVERLAY_COLOR:I = -0x66010000

.field static final OUTLINE_ALPHA_MULTIPLIER:F = 0.6f

.field private static final sAddBlendMode:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private mBackgroundAlpha:F

.field private mBackgroundAlphaMultiplier:F

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mBgAlphaController:Ljava/lang/Object;

.field private mContentAlpha:F

.field private mForegroundAlpha:I

.field private mForegroundGradient:Landroid/graphics/LinearGradient;

.field private final mForegroundRect:Landroid/graphics/Rect;

.field private mFrameFade:Landroid/animation/Animator;

.field private mFrameHeight:I

.field private mFrameStrokeAdjustment:I

.field private mGradientColor:I

.field private mGradientPaint:Landroid/graphics/Paint;

.field private mIsHoveringOverDeleteDropTarget:Z

.field private mIsSmall:Z

.field mLeftToRight:Z

.field private mLeftToRightGradient:Landroid/graphics/LinearGradient;

.field private mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

.field private mMaxChallengeTop:I

.field private mOverScrollAmount:F

.field private mPerformAppWidgetSizeUpdateOnBootComplete:Z

.field private mRightToLeftGradient:Landroid/graphics/LinearGradient;

.field private mSmallFrameHeight:I

.field private mSmallWidgetHeight:I

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWidgetLockedSmall:Z

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/keyguard/KeyguardWidgetFrame;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    .line 55
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    .line 57
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    .line 58
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    .line 59
    iput v4, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    .line 62
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    .line 67
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    .line 69
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    .line 75
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    .line 76
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    .line 135
    new-instance v3, Lcom/android/keyguard/KeyguardWidgetFrame$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardWidgetFrame$1;-><init>(Lcom/android/keyguard/KeyguardWidgetFrame;)V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 101
    new-instance v3, Lcom/android/keyguard/CheckLongPressHelper;

    invoke-direct {v3, p0}, Lcom/android/keyguard/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 106
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 107
    .local v0, "density":F
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 108
    .local v1, "padding":I
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setPadding(IIII)V

    .line 110
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    .line 114
    sget v3, Lcom/android/keyguard/R$dimen;->kg_small_widget_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    .line 116
    sget v3, Lcom/android/keyguard/R$drawable;->kg_widget_bg_padded:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    sget v3, Lcom/android/keyguard/R$color;->kg_widget_pager_gradient:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    .line 118
    iget-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    sget-object v4, Lcom/android/keyguard/KeyguardWidgetFrame;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardWidgetFrame;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardWidgetFrame;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardWidgetFrame;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardWidgetFrame;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardWidgetFrame;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardWidgetFrame;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->performAppWidgetSizeCallbacksIfNecessary()V

    return-void
.end method

.method private drawGradientOverlay(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 218
    return-void
.end method

.method private drawHoveringOverDeleteOverlay(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    if-eqz v0, :cond_0

    .line 222
    const/high16 v0, -0x66010000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 224
    :cond_0
    return-void
.end method

.method private performAppWidgetSizeCallbacksIfNecessary()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 464
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v7

    .line 465
    .local v7, "content":Landroid/view/View;
    instance-of v1, v7, Landroid/appwidget/AppWidgetHostView;

    if-nez v1, :cond_0

    .line 481
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 468
    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    goto :goto_0

    :cond_1
    move-object v0, v7

    .line 475
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 476
    .local v0, "awhv":Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    .line 478
    .local v8, "density":F
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    float-to-int v2, v1

    .line 479
    .local v2, "width":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    float-to-int v3, v1

    .line 480
    .local v3, "height":I
    const/4 v1, 0x0

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    goto :goto_0
.end method

.method private setWidgetHeight(I)V
    .locals 4
    .param p1, "height"    # I

    .prologue
    .line 329
    const/4 v1, 0x0

    .line 330
    .local v1, "needLayout":Z
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v2

    .line 331
    .local v2, "widget":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 332
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 333
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v3, p1, :cond_0

    .line 334
    const/4 v1, 0x1

    .line 335
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 338
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    if-eqz v1, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->requestLayout()V

    .line 341
    :cond_1
    return-void
.end method

.method private updateGradient()V
    .locals 15

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 432
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    if-eqz v0, :cond_0

    move v1, v2

    .line 433
    .local v1, "x0":F
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    .line 434
    .local v3, "x1":F
    :goto_1
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v5, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLeftToRightGradient:Landroid/graphics/LinearGradient;

    .line 436
    new-instance v7, Landroid/graphics/LinearGradient;

    iget v12, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v8, v3

    move v9, v2

    move v10, v1

    move v11, v2

    move v13, v6

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v7, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mRightToLeftGradient:Landroid/graphics/LinearGradient;

    .line 438
    return-void

    .line 432
    .end local v1    # "x0":F
    .end local v3    # "x1":F
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v1, v0

    goto :goto_0

    .restart local v1    # "x0":F
    :cond_1
    move v3, v2

    .line 433
    goto :goto_1
.end method


# virtual methods
.method public adjustFrame(I)V
    .locals 2
    .param p1, "challengeTop"    # I

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getPaddingBottom()I

    move-result v1

    add-int v0, p1, v1

    .line 362
    .local v0, "frameHeight":I
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 363
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 210
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/CheckLongPressHelper;->cancelLongPress()V

    .line 211
    return-void
.end method

.method public disableHardwareLayersForContent()V
    .locals 3

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 269
    .local v0, "widget":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 270
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 272
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->drawBg(Landroid/graphics/Canvas;)V

    .line 242
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 243
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->drawGradientOverlay(Landroid/graphics/Canvas;)V

    .line 245
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->drawHoveringOverDeleteOverlay(Landroid/graphics/Canvas;)V

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 248
    return-void
.end method

.method protected drawBg(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 227
    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 230
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 231
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 232
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 234
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public enableHardwareLayersForContent()V
    .locals 3

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 257
    .local v0, "widget":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 260
    :cond_0
    return-void
.end method

.method public fadeFrame(Ljava/lang/Object;ZFI)V
    .locals 5
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "takeControl"    # Z
    .param p3, "alpha"    # F
    .param p4, "duration"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 413
    if-eqz p2, :cond_0

    .line 414
    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 429
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    .line 422
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 423
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    .line 425
    :cond_2
    const-string v1, "backgroundAlpha"

    new-array v2, v4, [F

    aput p3, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 426
    .local v0, "bgAlpha":Landroid/animation/PropertyValuesHolder;
    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    .line 427
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 428
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundAlphaMultiplier()F
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentAlpha()F
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mContentAlpha:F

    return v0
.end method

.method public getContentAppWidgetId()I
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 280
    .local v0, "content":Landroid/view/View;
    instance-of v1, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_0

    .line 281
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .end local v0    # "content":Landroid/view/View;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    .line 285
    :goto_0
    return v1

    .line 282
    .restart local v0    # "content":Landroid/view/View;
    :cond_0
    instance-of v1, v0, Lcom/android/keyguard/KeyguardStatusView;

    if-eqz v1, :cond_1

    .line 283
    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    .end local v0    # "content":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->getAppWidgetId()I

    move-result v1

    goto :goto_0

    .line 285
    .restart local v0    # "content":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSmallFrameHeight()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    return v0
.end method

.method public getWorkerHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public hideFrame(Ljava/lang/Object;)V
    .locals 3
    .param p1, "caller"    # Ljava/lang/Object;

    .prologue
    .line 404
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x177

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 405
    return-void
.end method

.method public isSmall()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    return v0
.end method

.method public onActive(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .prologue
    .line 500
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 133
    return-void
.end method

.method public onBouncerShowing(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 509
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 124
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->cancelLongPress()V

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 127
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 178
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 165
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/CheckLongPressHelper;->postCheckForLongPress(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 168
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/CheckLongPressHelper;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 173
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 459
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 460
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->performAppWidgetSizeCallbacksIfNecessary()V

    .line 461
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v6, 0x0

    .line 442
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 444
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    if-nez v0, :cond_0

    .line 445
    iput p2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 453
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 454
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->updateGradient()V

    .line 455
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 456
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 187
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/CheckLongPressHelper;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 192
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onUserInteraction(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 204
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->cancelLongPress()V

    .line 205
    return-void
.end method

.method public resetSize()V
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    .line 387
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    if-nez v0, :cond_0

    .line 388
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 391
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 305
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    .line 307
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 309
    :cond_0
    return-void
.end method

.method public setBackgroundAlphaMultiplier(F)V
    .locals 1
    .param p1, "multiplier"    # F

    .prologue
    .line 294
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    .line 296
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 298
    :cond_0
    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 316
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mContentAlpha:F

    .line 317
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    .line 318
    .local v0, "content":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 321
    :cond_0
    return-void
.end method

.method public setFrameHeight(I)V
    .locals 6
    .param p1, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 394
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    .line 395
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 396
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 399
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->updateGradient()V

    .line 400
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 401
    return-void
.end method

.method setIsHoveringOverDeleteDropTarget(Z)V
    .locals 6
    .param p1, "isHovering"    # Z

    .prologue
    .line 148
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    if-eq v2, p1, :cond_0

    .line 149
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    .line 150
    if-eqz p1, :cond_1

    sget v0, Lcom/android/keyguard/R$string;->keyguard_accessibility_delete_widget_start:I

    .line 152
    .local v0, "resId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 157
    .end local v0    # "resId":I
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 150
    :cond_1
    sget v0, Lcom/android/keyguard/R$string;->keyguard_accessibility_delete_widget_end:I

    goto :goto_0
.end method

.method public setMaxChallengeTop(I)V
    .locals 2
    .param p1, "top"    # I

    .prologue
    .line 344
    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 345
    .local v0, "dirty":Z
    :goto_0
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    .line 346
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getPaddingTop()I

    move-result v1

    sub-int v1, p1, v1

    iput v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    .line 347
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    .line 348
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    if-eqz v1, :cond_2

    .line 349
    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 350
    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 354
    :cond_0
    :goto_1
    return-void

    .line 344
    .end local v0    # "dirty":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 351
    .restart local v0    # "dirty":Z
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    if-eqz v1, :cond_0

    .line 352
    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    goto :goto_1
.end method

.method setOverScrollAmount(FZ)V
    .locals 3
    .param p1, "r"    # F
    .param p2, "left"    # Z

    .prologue
    .line 484
    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    .line 486
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLeftToRightGradient:Landroid/graphics/LinearGradient;

    :goto_0
    iput-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundGradient:Landroid/graphics/LinearGradient;

    .line 487
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    .line 491
    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 493
    .local v0, "bgAlpha":F
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    .line 494
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->invalidate()V

    .line 496
    .end local v0    # "bgAlpha":F
    :cond_0
    return-void

    .line 486
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mRightToLeftGradient:Landroid/graphics/LinearGradient;

    goto :goto_0
.end method

.method public setWidgetLockedSmall(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 379
    if-eqz p1, :cond_0

    .line 380
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 382
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    .line 383
    return-void
.end method

.method public setWorkerHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "workerHandler"    # Landroid/os/Handler;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mWorkerHandler:Landroid/os/Handler;

    .line 513
    return-void
.end method

.method public showFrame(Ljava/lang/Object;)V
    .locals 3
    .param p1, "caller"    # Ljava/lang/Object;

    .prologue
    .line 408
    const/4 v0, 0x1

    const v1, 0x3f19999a    # 0.6f

    const/16 v2, 0x64

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 410
    return-void
.end method

.method public shrinkWidget(Z)V
    .locals 1
    .param p1, "alsoShrinkFrame"    # Z

    .prologue
    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    .line 367
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    .line 369
    if-eqz p1, :cond_0

    .line 370
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 372
    :cond_0
    return-void
.end method
