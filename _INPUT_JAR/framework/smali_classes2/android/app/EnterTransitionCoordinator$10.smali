.class Landroid/app/EnterTransitionCoordinator$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EnterTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->startRejectedAnimations(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;

.field final synthetic val$decorView:Landroid/view/ViewGroup;

.field final synthetic val$rejectedSnapshots:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .registers 4

    .prologue
    .line 602
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$10;->this$0:Landroid/app/EnterTransitionCoordinator;

    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$10;->val$decorView:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/app/EnterTransitionCoordinator$10;->val$rejectedSnapshots:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 605
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator$10;->val$decorView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    .line 606
    .local v2, "overlay":Landroid/view/ViewGroupOverlay;
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator$10;->val$rejectedSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 607
    .local v1, "numRejected":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_1d

    .line 608
    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator$10;->val$rejectedSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 610
    :cond_1d
    return-void
.end method
