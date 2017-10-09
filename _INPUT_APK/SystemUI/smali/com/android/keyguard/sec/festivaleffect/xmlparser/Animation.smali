.class public Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$FrameImageView;,
        Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$SinYEvaluatorReverse;,
        Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$SinYEvaluator;,
        Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$SinXEvaluatorReverse;,
        Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$SinXEvaluator;,
        Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$ParabolaEvaluatorReverse;,
        Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$ParabolaEvaluator;
    }
.end annotation


# instance fields
.field public a:F

.field public adjust:F

.field public b:F

.field public backgroundId:I

.field public delay:J

.field public duration:J

.field public frameSize:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public from:F

.field public imageView:Landroid/widget/ImageView;

.field public imageViewId:I

.field public imageViewSetId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public interpolator:Landroid/animation/TimeInterpolator;

.field public key:F

.field public length:I

.field public minInterval:I

.field public r:F

.field public ra:F

.field public rb:F

.field public repeatCount:I

.field public repeatMode:I

.field public scale:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public startIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public to:F

.field public top:I

.field public x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public xOffSet:F

.field public y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public yOffSet:F


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->r:F

    iput v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->a:F

    iput v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->b:F

    iput v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->ra:F

    iput v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->rb:F

    iput v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->key:F

    iput v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->xOffSet:F

    iput v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->yOffSet:F

    iput v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->adjust:F

    iput v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->imageViewId:I

    iput v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->length:I

    iput v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->backgroundId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->x:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->y:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    iput v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->top:I

    iput v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->minInterval:I

    iput v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    iput v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    iput-wide v4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->duration:J

    iput-wide v4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->delay:J

    iput v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatCount:I

    iput v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatMode:I

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method


# virtual methods
.method public buildAnimation(Landroid/widget/ImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;
    .locals 6

    const-string v3, "round"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->buildRoundAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_0
    iget-wide v4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->delay:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-wide v4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->duration:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatCount:I

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->repeatMode:I

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :cond_0
    const-string v3, "ellipse"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->buildEllipseAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v3, "parabola"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->buildParabolaAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v3, "sinX"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->buildSinXAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v3, "sinY"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->buildSinYAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v3, "ImageResource"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->length:I

    new-array v2, v3, [I

    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->length:I

    if-ge v1, v3, :cond_5

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->imageViewId:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->imageViewId:I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const-string v3, "ImageResource"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    aput v5, v3, v4

    invoke-static {p1, p2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public buildEllipseAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 8

    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v6, 0x40000000    # 2.0f

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    iput-object p1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    div-float/2addr v1, v7

    mul-float/2addr v1, v6

    float-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    iget v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    div-float/2addr v1, v7

    mul-float/2addr v1, v6

    float-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$2;-><init>(Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public buildParabolaAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    new-instance v2, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$ParabolaEvaluator;

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->key:F

    iget v4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->xOffSet:F

    iget v5, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->yOffSet:F

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$ParabolaEvaluator;-><init>(Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;FFF)V

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$3;-><init>(Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$ParabolaEvaluatorReverse;

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->key:F

    iget v4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->xOffSet:F

    iget v5, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->yOffSet:F

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$ParabolaEvaluatorReverse;-><init>(Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;FFF)V

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$4;-><init>(Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v1, v0

    goto :goto_0
.end method

.method public buildRoundAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 8

    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v6, 0x40000000    # 2.0f

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    iput-object p1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    div-float/2addr v1, v7

    mul-float/2addr v1, v6

    float-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    iget v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    div-float/2addr v1, v7

    mul-float/2addr v1, v6

    float-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$1;-><init>(Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public buildSinXAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iput-object p1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    iget v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$SinXEvaluator;

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->adjust:F

    iget v4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->xOffSet:F

    iget v5, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->yOffSet:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$SinXEvaluator;-><init>(Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;FFFF)V

    new-array v1, v10, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v8

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$5;-><init>(Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v7, v6

    :goto_0
    return-object v7

    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$SinXEvaluatorReverse;

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->adjust:F

    iget v4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->xOffSet:F

    iget v5, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->yOffSet:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$SinXEvaluatorReverse;-><init>(Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;FFFF)V

    new-array v1, v10, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v8

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$6;-><init>(Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v7, v6

    goto :goto_0
.end method

.method public buildSinYAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iput-object p1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    iget v1, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$SinYEvaluator;

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->adjust:F

    iget v4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->yOffSet:F

    iget v5, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->xOffSet:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$SinYEvaluator;-><init>(Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;FFFF)V

    new-array v1, v10, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v8

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$7;-><init>(Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v7, v6

    :goto_0
    return-object v7

    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$SinYEvaluatorReverse;

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->key:F

    iget v3, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->adjust:F

    iget v4, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->yOffSet:F

    iget v5, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->xOffSet:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$SinYEvaluatorReverse;-><init>(Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;FFFF)V

    new-array v1, v10, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->to:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v8

    iget v2, p0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;->from:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation$8;-><init>(Lcom/android/keyguard/sec/festivaleffect/xmlparser/Animation;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v7, v6

    goto :goto_0
.end method
