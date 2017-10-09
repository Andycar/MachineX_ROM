.class Lcom/android/systemui/recents/views/RecentsView$1;
.super Landroid/database/ContentObserver;
.source "RecentsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$1;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 14
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 119
    iget-object v12, p0, Lcom/android/systemui/recents/views/RecentsView$1;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v12}, Lcom/android/systemui/recents/views/RecentsView;->access$000(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "multi_window_enabled"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v10, :cond_0

    move v3, v10

    .line 121
    .local v3, "isMultiWindowEnabled":Z
    :goto_0
    iget-object v12, p0, Lcom/android/systemui/recents/views/RecentsView$1;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v12}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 122
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 123
    iget-object v12, p0, Lcom/android/systemui/recents/views/RecentsView$1;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v12, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "child":Landroid/view/View;
    iget-object v12, p0, Lcom/android/systemui/recents/views/RecentsView$1;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v12, v12, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v12, :cond_3

    move-object v6, v0

    .line 125
    check-cast v6, Lcom/android/systemui/recents/views/TaskStackView;

    .line 126
    .local v6, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    iget-object v5, v6, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 127
    .local v5, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v8

    .line 128
    .local v8, "taskCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v8, :cond_3

    .line 130
    invoke-virtual {v6, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/TaskView;

    .line 131
    .local v9, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v7

    .line 132
    .local v7, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v3, :cond_2

    .line 133
    iget-object v12, v7, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    const/16 v13, 0x64

    if-lt v12, v13, :cond_1

    .line 134
    invoke-virtual {v9, v11}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState(Z)V

    .line 128
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "isMultiWindowEnabled":Z
    .end local v4    # "j":I
    .end local v5    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v6    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v7    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "taskCount":I
    .end local v9    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    move v3, v11

    .line 119
    goto :goto_0

    .line 136
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    .restart local v3    # "isMultiWindowEnabled":Z
    .restart local v4    # "j":I
    .restart local v5    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v6    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .restart local v7    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v8    # "taskCount":I
    .restart local v9    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState(Z)V

    goto :goto_3

    .line 139
    :cond_2
    invoke-virtual {v9, v11}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState(Z)V

    goto :goto_3

    .line 122
    .end local v4    # "j":I
    .end local v5    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v6    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v7    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "taskCount":I
    .end local v9    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 144
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    return-void
.end method
