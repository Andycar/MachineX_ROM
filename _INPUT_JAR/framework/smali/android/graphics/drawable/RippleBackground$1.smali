.class Landroid/graphics/drawable/RippleBackground$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RippleBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/drawable/RippleBackground;->exitSoftware(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/drawable/RippleBackground;

.field final synthetic val$outerDuration:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/RippleBackground;I)V
    .registers 3

    .prologue
    .line 364
    iput-object p1, p0, Landroid/graphics/drawable/RippleBackground$1;->this$0:Landroid/graphics/drawable/RippleBackground;

    iput p2, p0, Landroid/graphics/drawable/RippleBackground$1;->val$outerDuration:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 381
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 382
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 9
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v6, 0x1

    .line 367
    iget-object v1, p0, Landroid/graphics/drawable/RippleBackground$1;->this$0:Landroid/graphics/drawable/RippleBackground;

    const-string/jumbo v2, "outerOpacity"

    new-array v3, v6, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 369
    .local v0, "outerFadeOutAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 370
    iget v1, p0, Landroid/graphics/drawable/RippleBackground$1;->val$outerDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 371
    # getter for: Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;
    invoke-static {}, Landroid/graphics/drawable/RippleBackground;->access$000()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 372
    iget-object v1, p0, Landroid/graphics/drawable/RippleBackground$1;->this$0:Landroid/graphics/drawable/RippleBackground;

    # getter for: Landroid/graphics/drawable/RippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;
    invoke-static {v1}, Landroid/graphics/drawable/RippleBackground;->access$100(Landroid/graphics/drawable/RippleBackground;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 374
    iget-object v1, p0, Landroid/graphics/drawable/RippleBackground$1;->this$0:Landroid/graphics/drawable/RippleBackground;

    # setter for: Landroid/graphics/drawable/RippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;
    invoke-static {v1, v0}, Landroid/graphics/drawable/RippleBackground;->access$202(Landroid/graphics/drawable/RippleBackground;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 376
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 377
    return-void
.end method
