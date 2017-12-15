.class public Landroid/animation/ValueAnimator$AnimationHandler;
.super Ljava/lang/Object;
.source "ValueAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AnimationHandler"
.end annotation


# instance fields
.field private mAnimationScheduled:Z

.field protected final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mChoreographer:Landroid/view/Choreographer;

.field protected final mDelayedAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndingAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadyAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mTmpAnimations:Ljava/util/ArrayList;

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    .line 593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    .line 600
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mChoreographer:Landroid/view/Choreographer;

    .line 601
    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/ValueAnimator$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/animation/ValueAnimator$1;

    .prologue
    .line 575
    invoke-direct {p0}, Landroid/animation/ValueAnimator$AnimationHandler;-><init>()V

    return-void
.end method

.method private doAnimationFrame(J)V
    .registers 16
    .param p1, "frameTime"    # J

    .prologue
    .line 616
    :cond_0
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_38

    .line 617
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 619
    .local v6, "pendingCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 620
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 621
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v1, :cond_0

    .line 622
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 624
    .local v0, "anim":Landroid/animation/ValueAnimator;
    # getter for: Landroid/animation/ValueAnimator;->mStartDelay:J
    invoke-static {v0}, Landroid/animation/ValueAnimator;->access$000(Landroid/animation/ValueAnimator;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_32

    .line 625
    # invokes: Landroid/animation/ValueAnimator;->startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V
    invoke-static {v0, p0}, Landroid/animation/ValueAnimator;->access$100(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimationHandler;)V

    .line 621
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 627
    :cond_32
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 633
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v6    # "pendingCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    :cond_38
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 634
    .local v4, "numDelayedAnims":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3f
    if-ge v2, v4, :cond_57

    .line 635
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 636
    .restart local v0    # "anim":Landroid/animation/ValueAnimator;
    # invokes: Landroid/animation/ValueAnimator;->delayedAnimationFrame(J)Z
    invoke-static {v0, p1, p2}, Landroid/animation/ValueAnimator;->access$200(Landroid/animation/ValueAnimator;J)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 637
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 640
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    :cond_57
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 641
    .local v5, "numReadyAnims":I
    if-lez v5, :cond_7e

    .line 642
    const/4 v2, 0x0

    :goto_60
    if-ge v2, v5, :cond_79

    .line 643
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 644
    .restart local v0    # "anim":Landroid/animation/ValueAnimator;
    # invokes: Landroid/animation/ValueAnimator;->startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V
    invoke-static {v0, p0}, Landroid/animation/ValueAnimator;->access$100(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimationHandler;)V

    .line 645
    const/4 v7, 0x1

    # setter for: Landroid/animation/ValueAnimator;->mRunning:Z
    invoke-static {v0, v7}, Landroid/animation/ValueAnimator;->access$302(Landroid/animation/ValueAnimator;Z)Z

    .line 646
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 642
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 648
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    :cond_79
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mReadyAnims:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 653
    :cond_7e
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 654
    .local v3, "numAnims":I
    const/4 v2, 0x0

    :goto_85
    if-ge v2, v3, :cond_95

    .line 655
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mTmpAnimations:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 657
    :cond_95
    const/4 v2, 0x0

    :goto_96
    if-ge v2, v3, :cond_b6

    .line 658
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mTmpAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 659
    .restart local v0    # "anim":Landroid/animation/ValueAnimator;
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b3

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 660
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_b3
    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    .line 663
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    :cond_b6
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mTmpAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 664
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_df

    .line 665
    const/4 v2, 0x0

    :goto_c4
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_da

    .line 666
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    invoke-virtual {v7, p0}, Landroid/animation/ValueAnimator;->endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    .line 665
    add-int/lit8 v2, v2, 0x1

    goto :goto_c4

    .line 668
    :cond_da
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mEndingAnims:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 673
    :cond_df
    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_ef

    iget-object v7, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f2

    .line 674
    :cond_ef
    invoke-direct {p0}, Landroid/animation/ValueAnimator$AnimationHandler;->scheduleAnimation()V

    .line 676
    :cond_f2
    return-void
.end method

.method private scheduleAnimation()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 686
    iget-boolean v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimationScheduled:Z

    if-nez v0, :cond_d

    .line 687
    iget-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 688
    iput-boolean v2, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimationScheduled:Z

    .line 690
    :cond_d
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 681
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimationScheduled:Z

    .line 682
    iget-object v0, p0, Landroid/animation/ValueAnimator$AnimationHandler;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/animation/ValueAnimator$AnimationHandler;->doAnimationFrame(J)V

    .line 683
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 607
    invoke-direct {p0}, Landroid/animation/ValueAnimator$AnimationHandler;->scheduleAnimation()V

    .line 608
    return-void
.end method
