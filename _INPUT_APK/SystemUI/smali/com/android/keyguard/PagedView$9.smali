.class Lcom/android/keyguard/PagedView$9;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PagedView;

.field final synthetic val$dragView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PagedView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2447
    iput-object p1, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    iput-object p2, p0, Lcom/android/keyguard/PagedView$9;->val$dragView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 2450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->val$dragView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 2457
    .local v4, "dragViewIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/keyguard/PagedView;->getVisiblePages([I)V

    .line 2458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    const/4 v7, 0x1

    .line 2460
    .local v7, "isLastWidgetPage":Z
    :goto_0
    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    if-le v4, v0, :cond_4

    :cond_0
    const/4 v13, 0x1

    .line 2464
    .local v13, "slideFromLeft":Z
    :goto_1
    if-eqz v13, :cond_1

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v16, v0

    add-int/lit8 v17, v4, -0x1

    invoke-virtual/range {v16 .. v17}, Lcom/android/keyguard/PagedView;->snapToPageImmediately(I)V

    .line 2468
    :cond_1
    if-eqz v7, :cond_5

    const/4 v5, 0x0

    .line 2469
    .local v5, "firstIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2470
    .local v8, "lastIndex":I
    if-eqz v13, :cond_6

    move v9, v5

    .line 2471
    .local v9, "lowerIndex":I
    :goto_3
    if-eqz v13, :cond_7

    add-int/lit8 v14, v4, -0x1

    .line 2472
    .local v14, "upperIndex":I
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2473
    .local v3, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move v6, v9

    .local v6, "i":I
    :goto_5
    if-gt v6, v14, :cond_a

    .line 2474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 2478
    .local v15, "v":Landroid/view/View;
    const/4 v11, 0x0

    .line 2479
    .local v11, "oldX":I
    const/4 v10, 0x0

    .line 2480
    .local v10, "newX":I
    if-eqz v13, :cond_9

    .line 2481
    if-nez v6, :cond_8

    .line 2483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v17

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/keyguard/PagedView;->getChildWidth(I)I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    move/from16 v17, v0

    sub-int v11, v16, v17

    .line 2488
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v17

    add-int v10, v16, v17

    .line 2496
    :goto_7
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    .line 2497
    .local v2, "anim":Landroid/animation/AnimatorSet;
    if-eqz v2, :cond_2

    .line 2498
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2503
    :cond_2
    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    move-result v16

    const v17, 0x3c23d70a    # 0.01f

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setAlpha(F)V

    .line 2504
    sub-int v16, v11, v10

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setTranslationX(F)V

    .line 2505
    new-instance v2, Landroid/animation/AnimatorSet;

    .end local v2    # "anim":Landroid/animation/AnimatorSet;
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2506
    .restart local v2    # "anim":Landroid/animation/AnimatorSet;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "translationX"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "alpha"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2509
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2510
    invoke-virtual {v15, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2473
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 2459
    .end local v2    # "anim":Landroid/animation/AnimatorSet;
    .end local v3    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v5    # "firstIndex":I
    .end local v6    # "i":I
    .end local v7    # "isLastWidgetPage":Z
    .end local v8    # "lastIndex":I
    .end local v9    # "lowerIndex":I
    .end local v10    # "newX":I
    .end local v11    # "oldX":I
    .end local v13    # "slideFromLeft":Z
    .end local v14    # "upperIndex":I
    .end local v15    # "v":Landroid/view/View;
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2460
    .restart local v7    # "isLastWidgetPage":Z
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 2468
    .restart local v13    # "slideFromLeft":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v5, v16, v17

    goto/16 :goto_2

    .line 2470
    .restart local v5    # "firstIndex":I
    .restart local v8    # "lastIndex":I
    :cond_6
    add-int/lit8 v9, v4, 0x1

    goto/16 :goto_3

    .restart local v9    # "lowerIndex":I
    :cond_7
    move v14, v8

    .line 2471
    goto/16 :goto_4

    .line 2486
    .restart local v3    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v6    # "i":I
    .restart local v10    # "newX":I
    .restart local v11    # "oldX":I
    .restart local v14    # "upperIndex":I
    .restart local v15    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v17, v0

    add-int/lit8 v18, v6, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v17

    add-int v11, v16, v17

    goto/16 :goto_6

    .line 2490
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v17, v0

    add-int/lit8 v18, v6, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v17

    sub-int v11, v16, v17

    .line 2491
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 2513
    .end local v10    # "newX":I
    .end local v11    # "oldX":I
    .end local v15    # "v":Landroid/view/View;
    :cond_a
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2514
    .local v12, "slideAnimations":Landroid/animation/AnimatorSet;
    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/PagedView;->access$700(Lcom/android/keyguard/PagedView;)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2516
    new-instance v16, Lcom/android/keyguard/PagedView$9$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keyguard/PagedView$9$1;-><init>(Lcom/android/keyguard/PagedView$9;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2530
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 2532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->val$dragView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/keyguard/PagedView;->removeView(Landroid/view/View;)V

    .line 2533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView$9;->val$dragView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Lcom/android/keyguard/PagedView;->onRemoveView(Landroid/view/View;Z)V

    .line 2534
    return-void
.end method
