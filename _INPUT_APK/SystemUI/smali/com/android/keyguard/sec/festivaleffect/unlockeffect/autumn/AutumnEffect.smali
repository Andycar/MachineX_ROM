.class public Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;
.super Landroid/widget/FrameLayout;
.source "AutumnEffect.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "AutumnEffect"


# instance fields
.field private alpha:Landroid/animation/ValueAnimator;

.field private alphaBack:Landroid/animation/ValueAnimator;

.field private dx:F

.field private m:I

.field private mContext:Landroid/content/Context;

.field private mHasAddImage:Z

.field private mImageEffect:Landroid/widget/ImageView;

.field private mImageTouch:Landroid/widget/ImageView;

.field private mImageTouch2:Landroid/widget/ImageView;

.field private mScreenAdjust:F

.field private maxRand:F

.field private resId:[I

.field private resIdTouch:[I

.field private rotateAngel:I

.field private rotation:Landroid/animation/ValueAnimator;

.field private scaleX:Landroid/animation/ValueAnimator;

.field private scaleXBack:Landroid/animation/ValueAnimator;

.field private scaleXBlank:Landroid/animation/ValueAnimator;

.field private scaleY:Landroid/animation/ValueAnimator;

.field private scaleYBack:Landroid/animation/ValueAnimator;

.field private scaleYBlank:Landroid/animation/ValueAnimator;

.field private touchAlpha:Landroid/animation/ValueAnimator;

.field private touchAlpha2:Landroid/animation/ValueAnimator;

.field private touchScaleX:Landroid/animation/ValueAnimator;

.field private touchScaleX2:Landroid/animation/ValueAnimator;

.field private touchScaleX2Move:Landroid/animation/ValueAnimator;

.field private touchScaleXMove:Landroid/animation/ValueAnimator;

.field private touchScaleY:Landroid/animation/ValueAnimator;

.field private touchScaleY2:Landroid/animation/ValueAnimator;

.field private touchScaleY2Move:Landroid/animation/ValueAnimator;

.field private touchScaleYMove:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->maxRand:F

    iput v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->m:I

    iput v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->rotateAngel:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Lcom/android/keyguard/R$drawable;->unlock_autumn_particle_01:I

    aput v1, v0, v3

    sget v1, Lcom/android/keyguard/R$drawable;->unlock_autumn_particle_02:I

    aput v1, v0, v4

    sget v1, Lcom/android/keyguard/R$drawable;->unlock_autumn_particle_03:I

    aput v1, v0, v5

    const/4 v1, 0x3

    sget v2, Lcom/android/keyguard/R$drawable;->unlock_autumn_particle_04:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/keyguard/R$drawable;->unlock_autumn_particle_05:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->resId:[I

    new-array v0, v5, [I

    sget v1, Lcom/android/keyguard/R$drawable;->unlock_spring_touch_01:I

    aput v1, v0, v3

    sget v1, Lcom/android/keyguard/R$drawable;->unlock_spring_touch_02:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->resIdTouch:[I

    iput-boolean v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mHasAddImage:Z

    iput-object p1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mScreenAdjust:F

    invoke-virtual {p0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->init()V

    return-void
.end method


# virtual methods
.method public add(FF)V
    .locals 11

    const/high16 v10, 0x420c0000    # 35.0f

    const/4 v5, -0x2

    const-wide/16 v8, 0x5be

    const-wide/16 v6, 0x14a

    const/4 v4, 0x2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->resIdTouch:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->resIdTouch:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v5, v5}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch2:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v5, v5}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch:Landroid/widget/ImageView;

    const/high16 v2, 0x42900000    # 72.0f

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mScreenAdjust:F

    mul-float/2addr v2, v3

    sub-float v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch:Landroid/widget/ImageView;

    const/high16 v2, 0x42900000    # 72.0f

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mScreenAdjust:F

    mul-float/2addr v2, v3

    sub-float v2, p2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch2:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mScreenAdjust:F

    mul-float/2addr v2, v10

    sub-float v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch2:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mScreenAdjust:F

    mul-float/2addr v2, v10

    sub-float v2, p2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch:Landroid/widget/ImageView;

    const-string v2, "ScaleX"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleX:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch:Landroid/widget/ImageView;

    const-string v2, "ScaleY"

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleY:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleY:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch:Landroid/widget/ImageView;

    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_2

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchAlpha:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchAlpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch:Landroid/widget/ImageView;

    const-string v2, "ScaleX"

    new-array v3, v4, [F

    fill-array-data v3, :array_3

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleXMove:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch:Landroid/widget/ImageView;

    const-string v2, "ScaleY"

    new-array v3, v4, [F

    fill-array-data v3, :array_4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleYMove:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleXMove:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleYMove:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleY:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleXMove:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleYMove:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch2:Landroid/widget/ImageView;

    const-string v2, "ScaleX"

    new-array v3, v4, [F

    fill-array-data v3, :array_5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleX2:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch2:Landroid/widget/ImageView;

    const-string v2, "ScaleY"

    new-array v3, v4, [F

    fill-array-data v3, :array_6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleY2:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleX2:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleY2:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch2:Landroid/widget/ImageView;

    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchAlpha2:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchAlpha2:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch2:Landroid/widget/ImageView;

    const-string v2, "ScaleX"

    new-array v3, v4, [F

    fill-array-data v3, :array_8

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleX2Move:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch2:Landroid/widget/ImageView;

    const-string v2, "ScaleY"

    new-array v3, v4, [F

    fill-array-data v3, :array_9

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleY2Move:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleX2Move:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleY2Move:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleX2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleY2:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleX2Move:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleY2Move:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->touchScaleX2:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mHasAddImage:Z

    return-void

    :array_0
    .array-data 4
        0x3f400000    # 0.75f
        0x3f733333    # 0.95f
    .end array-data

    :array_1
    .array-data 4
        0x3f400000    # 0.75f
        0x3f733333    # 0.95f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public clearEffect()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch2:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->removeAllViews()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mHasAddImage:Z

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public move(FF)V
    .locals 8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->maxRand:F

    float-to-double v4, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->dx:F

    iget-boolean v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mHasAddImage:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->add(FF)V

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch:Landroid/widget/ImageView;

    const/high16 v4, 0x42900000    # 72.0f

    iget v5, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mScreenAdjust:F

    mul-float/2addr v4, v5

    sub-float v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch:Landroid/widget/ImageView;

    const/high16 v4, 0x42900000    # 72.0f

    iget v5, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mScreenAdjust:F

    mul-float/2addr v4, v5

    sub-float v4, p2, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch2:Landroid/widget/ImageView;

    const/high16 v4, 0x420c0000    # 35.0f

    iget v5, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mScreenAdjust:F

    mul-float/2addr v4, v5

    sub-float v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageTouch2:Landroid/widget/ImageView;

    const/high16 v4, 0x420c0000    # 35.0f

    iget v5, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mScreenAdjust:F

    mul-float/2addr v4, v5

    sub-float v4, p2, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->m:I

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x168

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->rotateAngel:I

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->m:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageEffect:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageEffect:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->resId:[I

    iget v5, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->m:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageEffect:Landroid/widget/ImageView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->addView(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->dx:F

    sub-float v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->dx:F

    add-float/2addr v4, p2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleX:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleY:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleX:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleY:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleYBlank:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x177

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleYBlank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x177

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleXBack:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_5

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleYBack:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleXBack:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleYBack:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->alpha:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->alpha:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->alphaBack:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->alphaBack:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x2ee

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "rotation"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->rotateAngel:I

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->rotation:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->rotation:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleY:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->rotation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleYBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleXBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleYBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->alphaBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/AutumnEffect;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
