.class public Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackViewFilterAlgorithm.java"


# instance fields
.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mViewPool:Lcom/android/systemui/recents/views/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/views/ViewPool",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/ViewPool;)V
    .locals 0
    .param p1, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/RecentsConfiguration;",
            "Lcom/android/systemui/recents/views/TaskStackView;",
            "Lcom/android/systemui/recents/views/ViewPool",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, "viewPool":Lcom/android/systemui/recents/views/ViewPool;, "Lcom/android/systemui/recents/views/ViewPool<Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 36
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 37
    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    .line 38
    return-void
.end method


# virtual methods
.method getEnterTransformsForFilterAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .local p2, "taskTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    .local p3, "childViewTransformsOut":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    const/4 v3, 0x0

    .line 102
    .local v3, "offset":I
    const/4 v2, 0x0

    .line 103
    .local v2, "movement":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 104
    .local v5, "taskCount":I
    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 105
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    .line 106
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 107
    .local v6, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-boolean v8, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v8, :cond_0

    .line 108
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v7

    .line 109
    .local v7, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-nez v7, :cond_0

    .line 111
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v8, v4, v4}, Lcom/android/systemui/recents/views/ViewPool;->pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "tv":Lcom/android/systemui/recents/views/TaskView;
    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    .line 114
    .restart local v7    # "tv":Lcom/android/systemui/recents/views/TaskView;
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0, v6}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    .line 115
    .local v0, "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/views/TaskView;->prepareTaskTransformForFilterTaskHidden(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    .line 116
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;I)V

    .line 118
    mul-int/lit8 v8, v3, 0x19

    iput v8, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    .line 119
    invoke-virtual {p3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget v8, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 124
    add-int/lit8 v3, v3, 0x1

    .line 104
    .end local v0    # "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v7    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 128
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v6    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->filteringNewViewsAnimDuration:I

    return v8
.end method

.method getExitTransformsForFilterAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "curTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .local p2, "curTaskTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    .local p3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .local p4, "taskTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    .local p5, "childViewTransformsOut":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    .local p6, "childrenToRemoveOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskView;>;"
    const/4 v4, 0x0

    .line 144
    .local v4, "offset":I
    const/4 v3, 0x0

    .line 145
    .local v3, "movement":I
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v1

    .line 146
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 147
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v10, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskView;

    .line 148
    .local v8, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    .line 149
    .local v5, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 153
    .local v6, "taskIndex":I
    if-ltz v6, :cond_0

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-boolean v10, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-nez v10, :cond_1

    :cond_0
    const/4 v9, 0x1

    .line 154
    .local v9, "willBeInvisible":Z
    :goto_1
    if-eqz v9, :cond_3

    .line 155
    if-gez v6, :cond_2

    .line 156
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 160
    .local v7, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :goto_2
    invoke-virtual {v8, v7}, Lcom/android/systemui/recents/views/TaskView;->prepareTaskTransformForFilterTaskVisible(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    .line 161
    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :goto_3
    mul-int/lit8 v10, v4, 0x19

    iput v10, v7, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    .line 170
    move-object/from16 v0, p5

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    add-int/lit8 v4, v4, 0x1

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v7    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v9    # "willBeInvisible":Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 158
    .restart local v9    # "willBeInvisible":Z
    :cond_2
    new-instance v7, Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v7, v10}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    .restart local v7    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    goto :goto_2

    .line 163
    .end local v7    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_3
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 165
    .restart local v7    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget v10, v7, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getTranslationY()F

    move-result v11

    float-to-int v11, v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_3

    .line 173
    .end local v5    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v6    # "taskIndex":I
    .end local v7    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v8    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v9    # "willBeInvisible":Z
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->filteringCurrentViewsAnimDuration:I

    return v10
.end method

.method startFilteringAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "curTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .local p2, "curTaskTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    .local p3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .local p4, "taskTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v9, "childrenToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskView;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .local v8, "childViewTransforms":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 50
    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->getExitTransformsForFilterAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)I

    move-result v18

    .line 55
    .local v18, "duration":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    .line 56
    .local v15, "unifyNewViewAnimation":Z
    if-eqz v15, :cond_0

    .line 57
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->getEnterTransformsForFilterAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)I

    move-result v20

    .line 59
    .local v20, "inDuration":I
    move/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 63
    .end local v20    # "inDuration":I
    :cond_0
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/views/TaskView;

    .line 64
    .local v13, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 65
    .local v21, "t":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 66
    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v10, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;

    move-object/from16 v11, p0

    move-object v12, v8

    move-object v14, v9

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;-><init>(Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;Ljava/util/HashMap;Lcom/android/systemui/recents/views/TaskView;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 90
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;I)V

    goto :goto_0

    .line 92
    .end local v13    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v21    # "t":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_1
    return-void
.end method
