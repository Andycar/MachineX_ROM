.class Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;
.super Ljava/lang/Object;
.source "TaskStackViewFilterAlgorithm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->startFilteringAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;

.field final synthetic val$childViewTransforms:Ljava/util/HashMap;

.field final synthetic val$childrenToRemove:Ljava/util/ArrayList;

.field final synthetic val$taskTransforms:Ljava/util/ArrayList;

.field final synthetic val$tasks:Ljava/util/ArrayList;

.field final synthetic val$tv:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$unifyNewViewAnimation:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;Ljava/util/HashMap;Lcom/android/systemui/recents/views/TaskView;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->this$0:Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->val$childViewTransforms:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iput-object p4, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->val$childrenToRemove:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->val$unifyNewViewAnimation:Z

    iput-object p6, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->val$tasks:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->val$taskTransforms:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 70
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->val$childViewTransforms:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->val$childViewTransforms:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->val$childrenToRemove:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 74
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->this$0:Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->val$unifyNewViewAnimation:Z

    if-nez v4, :cond_1

    .line 79
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->val$childViewTransforms:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 80
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->this$0:Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->val$tasks:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->val$taskTransforms:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->val$childViewTransforms:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->getEnterTransformsForFilterAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)I

    move-result v0

    .line 82
    .local v0, "duration":I
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->val$childViewTransforms:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 83
    .restart local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;->val$childViewTransforms:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 84
    .local v2, "t":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;I)V

    goto :goto_1

    .line 88
    .end local v0    # "duration":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "t":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    return-void
.end method
