.class Landroid/animation/StateListAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/StateListAnimator;


# direct methods
.method constructor <init>(Landroid/animation/StateListAnimator;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Landroid/animation/StateListAnimator$1;->this$0:Landroid/animation/StateListAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Landroid/animation/StateListAnimator$1;->this$0:Landroid/animation/StateListAnimator;

    # getter for: Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;
    invoke-static {v0}, Landroid/animation/StateListAnimator;->access$000(Landroid/animation/StateListAnimator;)Landroid/animation/Animator;

    move-result-object v0

    if-ne v0, p1, :cond_11

    .line 62
    iget-object v0, p0, Landroid/animation/StateListAnimator$1;->this$0:Landroid/animation/StateListAnimator;

    # setter for: Landroid/animation/StateListAnimator;->mRunningAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Landroid/animation/StateListAnimator;->access$002(Landroid/animation/StateListAnimator;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 64
    :cond_11
    return-void
.end method
