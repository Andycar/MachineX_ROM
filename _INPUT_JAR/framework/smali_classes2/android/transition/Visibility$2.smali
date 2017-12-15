.class Landroid/transition/Visibility$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Landroid/transition/Visibility;

.field final synthetic val$finalViewToKeep:Landroid/view/View;

.field final synthetic val$finalVisibility:I

.field final synthetic val$isForcedVisibility:Z


# direct methods
.method constructor <init>(Landroid/transition/Visibility;ZLandroid/view/View;I)V
    .registers 6

    .prologue
    .line 444
    iput-object p1, p0, Landroid/transition/Visibility$2;->this$0:Landroid/transition/Visibility;

    iput-boolean p2, p0, Landroid/transition/Visibility$2;->val$isForcedVisibility:Z

    iput-object p3, p0, Landroid/transition/Visibility$2;->val$finalViewToKeep:Landroid/view/View;

    iput p4, p0, Landroid/transition/Visibility$2;->val$finalVisibility:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/Visibility$2;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Visibility$2;->mCanceled:Z

    .line 464
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 468
    iget-boolean v0, p0, Landroid/transition/Visibility$2;->mCanceled:Z

    if-nez v0, :cond_e

    .line 469
    iget-boolean v0, p0, Landroid/transition/Visibility$2;->val$isForcedVisibility:Z

    if-eqz v0, :cond_f

    .line 470
    iget-object v0, p0, Landroid/transition/Visibility$2;->val$finalViewToKeep:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 475
    :cond_e
    :goto_e
    return-void

    .line 472
    :cond_f
    iget-object v0, p0, Landroid/transition/Visibility$2;->val$finalViewToKeep:Landroid/view/View;

    iget v1, p0, Landroid/transition/Visibility$2;->val$finalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 449
    iget-boolean v0, p0, Landroid/transition/Visibility$2;->mCanceled:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/transition/Visibility$2;->val$isForcedVisibility:Z

    if-nez v0, :cond_f

    .line 450
    iget-object v0, p0, Landroid/transition/Visibility$2;->val$finalViewToKeep:Landroid/view/View;

    iget v1, p0, Landroid/transition/Visibility$2;->val$finalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 452
    :cond_f
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 456
    iget-boolean v0, p0, Landroid/transition/Visibility$2;->mCanceled:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/transition/Visibility$2;->val$isForcedVisibility:Z

    if-nez v0, :cond_e

    .line 457
    iget-object v0, p0, Landroid/transition/Visibility$2;->val$finalViewToKeep:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 459
    :cond_e
    return-void
.end method
