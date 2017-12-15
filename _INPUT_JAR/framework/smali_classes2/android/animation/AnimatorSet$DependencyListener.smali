.class Landroid/animation/AnimatorSet$DependencyListener;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyListener"
.end annotation


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mNode:Landroid/animation/AnimatorSet$Node;

.field private mRule:I


# direct methods
.method public constructor <init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$Node;I)V
    .registers 4
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "node"    # Landroid/animation/AnimatorSet$Node;
    .param p3, "rule"    # I

    .prologue
    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    iput-object p1, p0, Landroid/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 710
    iput-object p2, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 711
    iput p3, p0, Landroid/animation/AnimatorSet$DependencyListener;->mRule:I

    .line 712
    return-void
.end method

.method private startIfReady(Landroid/animation/Animator;)V
    .registers 8
    .param p1, "dependencyAnimation"    # Landroid/animation/Animator;

    .prologue
    .line 753
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-boolean v4, v4, Landroid/animation/AnimatorSet;->mTerminated:Z

    if-eqz v4, :cond_b

    .line 776
    :cond_a
    :goto_a
    return-void

    .line 757
    :cond_b
    const/4 v1, 0x0

    .line 758
    .local v1, "dependencyToRemove":Landroid/animation/AnimatorSet$Dependency;
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 759
    .local v3, "numDependencies":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v3, :cond_31

    .line 760
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Dependency;

    .line 761
    .local v0, "dependency":Landroid/animation/AnimatorSet$Dependency;
    iget v4, v0, Landroid/animation/AnimatorSet$Dependency;->rule:I

    iget v5, p0, Landroid/animation/AnimatorSet$DependencyListener;->mRule:I

    if-ne v4, v5, :cond_57

    iget-object v4, v0, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    if-ne v4, p1, :cond_57

    .line 765
    move-object v1, v0

    .line 766
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 770
    .end local v0    # "dependency":Landroid/animation/AnimatorSet$Dependency;
    :cond_31
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 771
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_a

    .line 773
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 774
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    # getter for: Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/animation/AnimatorSet;->access$000(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v5, v5, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 759
    .restart local v0    # "dependency":Landroid/animation/AnimatorSet$Dependency;
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_15
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 720
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 726
    iget v0, p0, Landroid/animation/AnimatorSet$DependencyListener;->mRule:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 727
    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet$DependencyListener;->startIfReady(Landroid/animation/Animator;)V

    .line 729
    :cond_8
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 735
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 741
    iget v0, p0, Landroid/animation/AnimatorSet$DependencyListener;->mRule:I

    if-nez v0, :cond_7

    .line 742
    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet$DependencyListener;->startIfReady(Landroid/animation/Animator;)V

    .line 744
    :cond_7
    return-void
.end method
