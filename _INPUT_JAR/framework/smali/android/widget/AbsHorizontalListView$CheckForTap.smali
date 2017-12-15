.class final Landroid/widget/AbsHorizontalListView$CheckForTap;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .registers 2

    .prologue
    .line 3699
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 3702
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v4, v4, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    if-nez v4, :cond_a5

    .line 3703
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iput v7, v4, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 3704
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v5, v5, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v6, v6, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3706
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_26

    .line 3707
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    # setter for: Landroid/widget/AbsHorizontalListView;->mIsChildViewEnabled:Z
    invoke-static {v4, v5}, Landroid/widget/AbsHorizontalListView;->access$1002(Landroid/widget/AbsHorizontalListView;Z)Z

    .line 3710
    :cond_26
    if-eqz v0, :cond_a5

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_a5

    .line 3711
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/AbsHorizontalListView;->mLayoutMode:I

    .line 3713
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v4, v4, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-nez v4, :cond_b1

    .line 3714
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3715
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4, v7}, Landroid/widget/AbsHorizontalListView;->setPressed(Z)V

    .line 3716
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    .line 3717
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v5, v5, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    invoke-virtual {v4, v5, v0}, Landroid/widget/AbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 3718
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView;->refreshDrawableState()V

    .line 3720
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 3721
    .local v3, "longPressTimeout":I
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView;->isLongClickable()Z

    move-result v2

    .line 3723
    .local v2, "longClickable":Z
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v4, v4, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_79

    .line 3724
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v4, v4, Landroid/widget/AbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3725
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_79

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_79

    .line 3726
    if-eqz v2, :cond_a6

    .line 3727
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3734
    :cond_79
    :goto_79
    if-eqz v2, :cond_ac

    .line 3735
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView;->access$1100(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_90

    .line 3736
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    new-instance v5, Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsHorizontalListView$CheckForLongPress;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    # setter for: Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;
    invoke-static {v4, v5}, Landroid/widget/AbsHorizontalListView;->access$1102(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$CheckForLongPress;)Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    .line 3738
    :cond_90
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView;->access$1100(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 3739
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mPendingCheckForLongPress:Landroid/widget/AbsHorizontalListView$CheckForLongPress;
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView;->access$1100(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/AbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3748
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_a5
    :goto_a5
    return-void

    .line 3729
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "longClickable":Z
    .restart local v3    # "longPressTimeout":I
    :cond_a6
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_79

    .line 3741
    :cond_ac
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iput v8, v4, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    goto :goto_a5

    .line 3744
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_b1
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForTap;->this$0:Landroid/widget/AbsHorizontalListView;

    iput v8, v4, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    goto :goto_a5
.end method
