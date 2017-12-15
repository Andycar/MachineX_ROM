.class Landroid/widget/AbsHorizontalListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingX:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .registers 4

    .prologue
    .line 5424
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5397
    new-instance v0, Landroid/widget/AbsHorizontalListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable$1;-><init>(Landroid/widget/AbsHorizontalListView$FlingRunnable;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 5425
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/AbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 5435
    return-void
.end method

.method static synthetic access$1800(Landroid/widget/AbsHorizontalListView$FlingRunnable;)Landroid/widget/OverScroller;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView$FlingRunnable;

    .prologue
    .line 5386
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method


# virtual methods
.method edgeReached(I)V
    .registers 8
    .param p1, "delta"    # I

    .prologue
    .line 5479
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mScrollX:I
    invoke-static {v3}, Landroid/widget/AbsHorizontalListView;->access$2400(Landroid/widget/AbsHorizontalListView;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v5, v5, Landroid/widget/AbsHorizontalListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    .line 5480
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->getOverScrollMode()I

    move-result v0

    .line 5481
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_23

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4f

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # invokes: Landroid/widget/AbsHorizontalListView;->contentFits()Z
    invoke-static {v2}, Landroid/widget/AbsHorizontalListView;->access$2500(Landroid/widget/AbsHorizontalListView;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 5483
    :cond_23
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v3, 0x6

    iput v3, v2, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5484
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 5485
    .local v1, "vel":I
    if-lez p1, :cond_45

    .line 5486
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsHorizontalListView;->access$2600(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 5496
    .end local v1    # "vel":I
    :cond_3a
    :goto_3a
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 5497
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2, p0}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5498
    return-void

    .line 5488
    .restart local v1    # "vel":I
    :cond_45
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsHorizontalListView;->access$2700(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_3a

    .line 5491
    .end local v1    # "vel":I
    :cond_4f
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5492
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v2, v2, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v2, :cond_3a

    .line 5493
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v2, v2, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    goto :goto_3a
.end method

.method endFling()V
    .registers 3

    .prologue
    .line 5510
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5512
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5513
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5515
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    .line 5516
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # invokes: Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$2800(Landroid/widget/AbsHorizontalListView;)V

    .line 5517
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5519
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$2100(Landroid/widget/AbsHorizontalListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 5520
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$2100(Landroid/widget/AbsHorizontalListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 5521
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, 0x0

    # setter for: Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsHorizontalListView;->access$2102(Landroid/widget/AbsHorizontalListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 5523
    :cond_38
    return-void
.end method

.method flywheelTouch()V
    .registers 5

    .prologue
    .line 5526
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5527
    return-void
.end method

.method public run()V
    .registers 30

    .prologue
    .line 5531
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v2, v2, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_1e8

    .line 5533
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    .line 5655
    :cond_c
    :goto_c
    return-void

    .line 5537
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_c

    .line 5542
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v2, v2, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-eqz v2, :cond_26

    .line 5543
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    .line 5546
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v2, v2, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3c

    .line 5547
    :cond_38
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    goto :goto_c

    .line 5551
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v26, v0

    .line 5552
    .local v26, "scroller":Landroid/widget/OverScroller;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v22

    .line 5553
    .local v22, "more":Z
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v28

    .line 5557
    .local v28, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mLastFlingX:I

    sub-int v19, v2, v28

    .line 5560
    .local v19, "delta":I
    if-lez v19, :cond_f4

    .line 5562
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v4, v4, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    iput v4, v2, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 5563
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 5564
    .local v20, "firstView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 5567
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mPaddingRight:I
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView;->access$2900(Landroid/widget/AbsHorizontalListView;)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView;->access$3000(Landroid/widget/AbsHorizontalListView;)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 5581
    .end local v20    # "firstView":Landroid/view/View;
    :goto_93
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v4, v4, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v6, v6, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v4, v6

    invoke-virtual {v2, v4}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 5582
    .local v23, "motionView":Landroid/view/View;
    const/16 v25, 0x0

    .line 5583
    .local v25, "oldLeft":I
    if-eqz v23, :cond_b0

    .line 5584
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v25

    .line 5588
    :cond_b0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/widget/AbsHorizontalListView;->trackMotionScroll(II)Z

    move-result v14

    .line 5589
    .local v14, "atEdge":Z
    if-eqz v14, :cond_145

    if-eqz v19, :cond_145

    const/4 v15, 0x1

    .line 5590
    .local v15, "atEnd":Z
    :goto_c1
    if-eqz v15, :cond_148

    .line 5591
    if-eqz v23, :cond_e9

    .line 5593
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v2, v25

    sub-int v2, v19, v2

    neg-int v3, v2

    .line 5594
    .local v3, "overshoot":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mScrollX:I
    invoke-static {v6}, Landroid/widget/AbsHorizontalListView;->access$3300(Landroid/widget/AbsHorizontalListView;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v9, v9, Landroid/widget/AbsHorizontalListView;->mOverflingDistance:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    # invokes: Landroid/widget/AbsHorizontalListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v2 .. v11}, Landroid/widget/AbsHorizontalListView;->access$3400(Landroid/widget/AbsHorizontalListView;IIIIIIIIZ)Z

    .line 5597
    .end local v3    # "overshoot":I
    :cond_e9
    if-eqz v22, :cond_c

    .line 5598
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_c

    .line 5570
    .end local v14    # "atEdge":Z
    .end local v15    # "atEnd":Z
    .end local v23    # "motionView":Landroid/view/View;
    .end local v25    # "oldLeft":I
    :cond_f4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    .line 5571
    .local v24, "offsetToLast":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v4, v4, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    add-int v4, v4, v24

    iput v4, v2, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 5573
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 5574
    .local v21, "lastView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 5577
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mPaddingRight:I
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView;->access$3100(Landroid/widget/AbsHorizontalListView;)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mPaddingLeft:I
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView;->access$3200(Landroid/widget/AbsHorizontalListView;)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_93

    .line 5589
    .end local v21    # "lastView":Landroid/view/View;
    .end local v24    # "offsetToLast":I
    .restart local v14    # "atEdge":Z
    .restart local v23    # "motionView":Landroid/view/View;
    .restart local v25    # "oldLeft":I
    :cond_145
    const/4 v15, 0x0

    goto/16 :goto_c1

    .line 5603
    .restart local v15    # "atEnd":Z
    :cond_148
    if-eqz v22, :cond_166

    if-nez v15, :cond_166

    .line 5604
    if-eqz v14, :cond_155

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 5605
    :cond_155
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mLastFlingX:I

    .line 5606
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 5608
    :cond_166
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    goto/16 :goto_c

    .line 5626
    .end local v14    # "atEdge":Z
    .end local v15    # "atEnd":Z
    .end local v19    # "delta":I
    .end local v22    # "more":Z
    .end local v23    # "motionView":Landroid/view/View;
    .end local v25    # "oldLeft":I
    .end local v26    # "scroller":Landroid/widget/OverScroller;
    .end local v28    # "x":I
    :pswitch_16b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v26, v0

    .line 5627
    .restart local v26    # "scroller":Landroid/widget/OverScroller;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_1e2

    .line 5628
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mScrollX:I
    invoke-static {v2}, Landroid/widget/AbsHorizontalListView;->access$3500(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    .line 5629
    .local v7, "scrollX":I
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v18

    .line 5630
    .local v18, "currX":I
    sub-int v5, v18, v7

    .line 5631
    .local v5, "deltaX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v11, v2, Landroid/widget/AbsHorizontalListView;->mOverflingDistance:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    # invokes: Landroid/widget/AbsHorizontalListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v4 .. v13}, Landroid/widget/AbsHorizontalListView;->access$3600(Landroid/widget/AbsHorizontalListView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_1d0

    .line 5633
    if-gtz v7, :cond_1c5

    if-lez v18, :cond_1c5

    const/16 v17, 0x1

    .line 5634
    .local v17, "crossRight":Z
    :goto_1a1
    if-ltz v7, :cond_1c8

    if-gez v18, :cond_1c8

    const/16 v16, 0x1

    .line 5635
    .local v16, "crossLeft":Z
    :goto_1a7
    if-nez v17, :cond_1ab

    if-eqz v16, :cond_1cb

    .line 5636
    :cond_1ab
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v27, v0

    .line 5637
    .local v27, "velocity":I
    if-eqz v16, :cond_1b9

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    .line 5640
    :cond_1b9
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5641
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->start(I)V

    goto/16 :goto_c

    .line 5633
    .end local v16    # "crossLeft":Z
    .end local v17    # "crossRight":Z
    .end local v27    # "velocity":I
    :cond_1c5
    const/16 v17, 0x0

    goto :goto_1a1

    .line 5634
    .restart local v17    # "crossRight":Z
    :cond_1c8
    const/16 v16, 0x0

    goto :goto_1a7

    .line 5643
    .restart local v16    # "crossLeft":Z
    :cond_1cb
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_c

    .line 5646
    .end local v16    # "crossLeft":Z
    .end local v17    # "crossRight":Z
    :cond_1d0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 5647
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_c

    .line 5650
    .end local v5    # "deltaX":I
    .end local v7    # "scrollX":I
    .end local v18    # "currX":I
    :cond_1e2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    goto/16 :goto_c

    .line 5531
    nop

    :pswitch_data_1e8
    .packed-switch 0x3
        :pswitch_d
        :pswitch_17
        :pswitch_9
        :pswitch_16b
    .end packed-switch
.end method

.method start(I)V
    .registers 11
    .param p1, "initialVelocity"    # I

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 5438
    if-gez p1, :cond_37

    move v1, v6

    .line 5439
    .local v1, "initialX":I
    :goto_7
    iput v1, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mLastFlingX:I

    .line 5440
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5441
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 5443
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v2, 0x4

    iput v2, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5444
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5453
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$2100(Landroid/widget/AbsHorizontalListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_36

    .line 5454
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const-string v2, "AbsHorizontalListView-fling"

    invoke-static {v2}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v2

    # setter for: Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v2}, Landroid/widget/AbsHorizontalListView;->access$2102(Landroid/widget/AbsHorizontalListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 5456
    :cond_36
    return-void

    .end local v1    # "initialX":I
    :cond_37
    move v1, v2

    .line 5438
    goto :goto_7
.end method

.method startOverfling(I)V
    .registers 13
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v2, 0x0

    .line 5470
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5471
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mScrollX:I
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$2300(Landroid/widget/AbsHorizontalListView;)I

    move-result v1

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v9

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 5473
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5474
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 5475
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5476
    return-void
.end method

.method startScroll(IIZ)V
    .registers 10
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v2, 0x0

    .line 5501
    if-gez p1, :cond_24

    const v1, 0x7fffffff

    .line 5502
    .local v1, "initialX":I
    :goto_6
    iput v1, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mLastFlingX:I

    .line 5503
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    if-eqz p3, :cond_26

    sget-object v0, Landroid/widget/AbsHorizontalListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_e
    invoke-virtual {v3, v0}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5504
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, p1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 5505
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v2, 0x4

    iput v2, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5506
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5507
    return-void

    .end local v1    # "initialX":I
    :cond_24
    move v1, v2

    .line 5501
    goto :goto_6

    .line 5503
    .restart local v1    # "initialX":I
    :cond_26
    const/4 v0, 0x0

    goto :goto_e
.end method

.method startSpringback()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 5459
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mScrollX:I
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$2200(Landroid/widget/AbsHorizontalListView;)I

    move-result v1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5460
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5461
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 5462
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5467
    :goto_22
    return-void

    .line 5464
    :cond_23
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 5465
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    goto :goto_22
.end method
