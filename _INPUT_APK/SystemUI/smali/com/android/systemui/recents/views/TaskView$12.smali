.class Lcom/android/systemui/recents/views/TaskView$12;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1041
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1042
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$v:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$v:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne v0, v6, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {v3, v4, v5, v0}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V

    .line 1044
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$v:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskView;->mFooterView:Lcom/android/systemui/recents/views/TaskViewFooter;

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView$12;->val$v:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne v5, v6, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-interface {v0, v3, v4, v1}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onAltTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V

    .line 1046
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$12;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->dismiss()V

    .line 1047
    return-void

    :cond_3
    move v0, v1

    .line 1042
    goto :goto_0
.end method
