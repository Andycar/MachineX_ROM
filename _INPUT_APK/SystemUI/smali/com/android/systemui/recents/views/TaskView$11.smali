.class Lcom/android/systemui/recents/views/TaskView$11;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$tv:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;Landroid/view/View;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    .prologue
    .line 986
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskView$11;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskView$11;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 991
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->val$v:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    if-ne v3, v4, :cond_1

    .line 992
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 993
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->val$v:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    if-ne v3, v4, :cond_0

    .line 994
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationZ(F)V

    .line 995
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$11;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView$11;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    invoke-interface {v3, v4, v5, v6}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V

    .line 996
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$11;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView$11;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    invoke-interface {v3, v4, v5, v6}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onAltTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V

    .line 1008
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    .line 1009
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    .line 1010
    .local v2, "taskId":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 1011
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1013
    .local v1, "packageName":Ljava/lang/String;
    if-ltz v2, :cond_2

    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 1014
    :cond_2
    const-string v3, "Recents_TaskView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task has unvalid elements taskId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1017
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/systemui/recents/views/TaskView;->handleOnClickMultiWindowBtn(ILandroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method
