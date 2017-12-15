.class public Landroid/widget/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# static fields
.field private static final ANGLE:D = 0.5235987755982988

.field private static final COS:F

.field private static final EPSILON:F = 0.001f

.field private static final MAX_ALPHA:F = 0.5f

.field private static final MAX_GLOW_SCALE:F = 2.0f

.field private static final MAX_VELOCITY:I = 0x2710

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x7d0

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 0.8f

.field private static final PULL_GLOW_BEGIN:F = 0.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x258

.field private static final SIN:F

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_GLOW_FACTOR:I = 0x6


# instance fields
.field private mBaseGlowScale:F

.field private final mBounds:Landroid/graphics/Rect;

.field private mDisplacement:F

.field private mDuration:F

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPullDistance:F

.field private mRadius:F

.field private mStartTime:J

.field private mState:I

.field private mTargetDisplacement:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide v2, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 77
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/widget/EdgeEffect;->SIN:F

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/widget/EdgeEffect;->COS:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 107
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 108
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    .line 111
    iput v3, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    .line 112
    iput v3, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    .line 119
    iget-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    sget-object v2, Lcom/android/internal/R$styleable;->EdgeEffect:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v0, "a":Landroid/content/res/TypedArray;
    const v2, -0x99999a

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 124
    .local v1, "themeColor":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    iget-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const v3, 0xffffff

    and-int/2addr v3, v1

    const/high16 v4, 0x33000000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    iget-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 128
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 129
    return-void
.end method

.method private update()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 356
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 357
    .local v2, "time":J
    iget-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Landroid/widget/EdgeEffect;->mDuration:F

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 359
    .local v1, "t":F
    iget-object v4, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 361
    .local v0, "interp":F
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 362
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 363
    iget v4, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    .line 365
    const v4, 0x3f7fbe77    # 0.999f

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_46

    .line 366
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    packed-switch v4, :pswitch_data_82

    .line 399
    :cond_46
    :goto_46
    return-void

    .line 368
    :pswitch_47
    iput v8, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 369
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 370
    const/high16 v4, 0x44160000    # 600.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 372
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 373
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 376
    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 377
    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_46

    .line 380
    :pswitch_60
    const/4 v4, 0x4

    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 381
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 382
    const/high16 v4, 0x44fa0000    # 2000.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 384
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 385
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 388
    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 389
    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_46

    .line 392
    :pswitch_7a
    iput v8, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_46

    .line 395
    :pswitch_7d
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_46

    .line 366
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_60
        :pswitch_47
        :pswitch_7d
        :pswitch_7a
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 319
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->update()V

    .line 321
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 323
    .local v2, "count":I
    iget-object v7, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v0, v7

    .line 324
    .local v0, "centerX":F
    iget-object v7, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/widget/EdgeEffect;->mRadius:F

    sub-float v1, v7, v8

    .line 326
    .local v1, "centerY":F
    iget v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget v8, p0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    mul-float/2addr v7, v8

    invoke-virtual {p1, v9, v7, v0, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 328
    iget v7, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float v3, v7, v8

    .line 329
    .local v3, "displacement":F
    iget-object v7, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float v5, v7, v8

    .line 331
    .local v5, "translateX":F
    iget-object v7, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 332
    invoke-virtual {p1, v5, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 333
    iget-object v7, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x437f0000    # 255.0f

    iget v9, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 334
    iget v7, p0, Landroid/widget/EdgeEffect;->mRadius:F

    iget-object v8, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 335
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 337
    const/4 v4, 0x0

    .line 338
    .local v4, "oneLastFrame":Z
    iget v7, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6f

    iget v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_6f

    .line 339
    iput v6, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 340
    const/4 v4, 0x1

    .line 343
    :cond_6f
    iget v7, p0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v7, :cond_75

    if-eqz v4, :cond_76

    :cond_75
    const/4 v6, 0x1

    :cond_76
    return v6
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 168
    return-void
.end method

.method public getColor()I
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .registers 3

    .prologue
    .line 352
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onAbsorb(I)V
    .registers 6
    .param p1, "velocity"    # I

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 268
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 269
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 271
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 272
    const v0, 0x3e19999a    # 0.15f

    int-to-float v1, p1

    const v2, 0x3ca3d70a    # 0.02f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 276
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 277
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 284
    const v0, 0x3ccccccd    # 0.025f

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952    # 1.5E-4f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 286
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x6

    int-to-float v1, v1

    const v2, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 288
    iput v3, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    .line 289
    return-void
.end method

.method public onPull(F)V
    .registers 3
    .param p1, "deltaDistance"    # F

    .prologue
    .line 184
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 185
    return-void
.end method

.method public onPull(FF)V
    .registers 12
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .prologue
    const/4 v6, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 201
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 202
    .local v2, "now":J
    iput p2, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    .line 203
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1b

    iget-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Landroid/widget/EdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1b

    .line 231
    :goto_1a
    return-void

    .line 206
    :cond_1b
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    if-eq v4, v6, :cond_27

    .line 207
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 209
    :cond_27
    iput v6, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 211
    iput-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 212
    const/high16 v4, 0x43270000    # 167.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 214
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 216
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 217
    .local v0, "absdd":F
    const/high16 v4, 0x3f000000    # 0.5f

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 220
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_5c

    .line 221
    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 229
    :goto_53
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 230
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_1a

    .line 223
    :cond_5c
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    div-float v4, v8, v4

    sub-float v4, v8, v4

    const v5, 0x3e99999a    # 0.3f

    sub-float/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const v5, 0x3f333333    # 0.7f

    div-float v1, v4, v5

    .line 226
    .local v1, "scale":F
    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    goto :goto_53
.end method

.method public onRelease()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 240
    iput v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 242
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    .line 255
    :goto_d
    return-void

    .line 246
    :cond_e
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 247
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 248
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 250
    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 251
    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 253
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 254
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    goto :goto_d
.end method

.method public setColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 297
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    return-void
.end method

.method public setSize(II)V
    .registers 13
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f400000    # 0.75f

    .line 138
    int-to-float v7, p1

    mul-float/2addr v7, v9

    sget v8, Landroid/widget/EdgeEffect;->SIN:F

    div-float v4, v7, v8

    .line 139
    .local v4, "r":F
    sget v7, Landroid/widget/EdgeEffect;->COS:F

    mul-float v5, v7, v4

    .line 140
    .local v5, "y":F
    sub-float v0, v4, v5

    .line 141
    .local v0, "h":F
    int-to-float v7, p2

    mul-float/2addr v7, v9

    sget v8, Landroid/widget/EdgeEffect;->SIN:F

    div-float v2, v7, v8

    .line 142
    .local v2, "or":F
    sget v7, Landroid/widget/EdgeEffect;->COS:F

    mul-float v3, v7, v2

    .line 143
    .local v3, "oy":F
    sub-float v1, v2, v3

    .line 145
    .local v1, "oh":F
    iput v4, p0, Landroid/widget/EdgeEffect;->mRadius:F

    .line 146
    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-lez v7, :cond_29

    div-float v7, v1, v0

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :cond_29
    iput v6, p0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    .line 148
    iget-object v6, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v9, p2

    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v6, v7, v8, p1, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 149
    return-void
.end method
