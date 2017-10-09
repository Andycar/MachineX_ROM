.class public Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;
.super Ljava/lang/Object;
.source "ParticleStraightLine.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private alpha:Landroid/animation/ValueAnimator;

.field private alphaEnd:Landroid/animation/ValueAnimator;

.field private finalTranslateX:Landroid/animation/ValueAnimator;

.field private finalTranslateY:Landroid/animation/ValueAnimator;

.field private rotation:Landroid/animation/ValueAnimator;

.field private scaleX:Landroid/animation/ValueAnimator;

.field private scaleY:Landroid/animation/ValueAnimator;

.field private together:Landroid/animation/AnimatorSet;

.field private translateX:Landroid/animation/ValueAnimator;

.field private translateY:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;JFFFFJJFFJ)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->alpha:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p4, v3, v4

    const/4 v4, 0x1

    aput p6, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p8, p9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-string v2, "y"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p5, v3, v4

    const/4 v4, 0x1

    aput p7, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateY:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p8, p9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p6, v3, v4

    const/4 v4, 0x1

    aput p12, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->finalTranslateX:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->finalTranslateX:Landroid/animation/ValueAnimator;

    move-wide/from16 v0, p14

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-string v2, "y"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p7, v3, v4

    const/4 v4, 0x1

    aput p13, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->finalTranslateY:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->finalTranslateY:Landroid/animation/ValueAnimator;

    move-wide/from16 v0, p14

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->finalTranslateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    move-wide/from16 v0, p10

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->finalTranslateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->finalTranslateY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/widget/ImageView;JFFFFJZJF)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p6, v3, v4

    const/4 v4, 0x1

    aput p4, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p8, p9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const-string v2, "y"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p7, v3, v4

    const/4 v4, 0x1

    aput p5, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateY:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p8, p9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateY:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateY:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->alpha:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->alpha:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->alpha:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->alpha:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v2, "scaleX"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p13, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->scaleX:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->scaleX:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->scaleX:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const-string v2, "scaleY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p13, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->scaleY:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->scaleY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->scaleY:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->scaleY:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    if-eqz p10, :cond_0

    const-string v2, "rotation"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->rotation:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->rotation:Landroid/animation/ValueAnimator;

    move-wide/from16 v0, p11

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->rotation:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->rotation:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_0
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->scaleY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz p10, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->rotation:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43b38000    # 359.0f
    .end array-data
.end method


# virtual methods
.method public getAnimation()Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    return-object v0
.end method
