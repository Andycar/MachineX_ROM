.class Landroid/app/ExitTransitionCoordinator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->fadeOutBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;)V
    .registers 2

    .prologue
    .line 287
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 290
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    const/4 v1, 0x0

    # setter for: Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Landroid/app/ExitTransitionCoordinator;->access$902(Landroid/app/ExitTransitionCoordinator;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 291
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    # getter for: Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->access$500(Landroid/app/ExitTransitionCoordinator;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 292
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    const/4 v1, 0x1

    # setter for: Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z
    invoke-static {v0, v1}, Landroid/app/ExitTransitionCoordinator;->access$1002(Landroid/app/ExitTransitionCoordinator;Z)Z

    .line 293
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->notifyComplete()V

    .line 295
    :cond_19
    return-void
.end method
