.class Landroid/app/ExitTransitionCoordinator$10;
.super Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;
.source "ExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->getSharedElementExitTransition()Landroid/transition/Transition;
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
    .line 341
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$10;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-direct {p0, p1}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/app/ActivityTransitionCoordinator;)V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 5
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 344
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 345
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$10;->this$0:Landroid/app/ExitTransitionCoordinator;

    # invokes: Landroid/app/ExitTransitionCoordinator;->sharedElementTransitionComplete()V
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->access$1400(Landroid/app/ExitTransitionCoordinator;)V

    .line 346
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$10;->this$0:Landroid/app/ExitTransitionCoordinator;

    # getter for: Landroid/app/ExitTransitionCoordinator;->mIsHidden:Z
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->access$1200(Landroid/app/ExitTransitionCoordinator;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 347
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$10;->this$0:Landroid/app/ExitTransitionCoordinator;

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator$10;->this$0:Landroid/app/ExitTransitionCoordinator;

    iget-object v1, v1, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 349
    :cond_1a
    return-void
.end method
