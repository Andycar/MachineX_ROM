.class Lcom/android/systemui/recents/views/TaskView$4;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$ctx:Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$4;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskView$4;->val$ctx:Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 371
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$4;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setIsFullScreen(Z)V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$4;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->requestLayout()V

    .line 375
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$4;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClipTop(I)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$4;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClipBottom(I)V

    .line 377
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$4;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/recents/views/AnimateableViewBounds;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClipRight(I)V

    .line 379
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$4;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setTranslationY(F)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$4;->this$0:Lcom/android/systemui/recents/views/TaskView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView$4;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDuration:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->animateFooterVisibility(ZI)V

    .line 384
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$4;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/recents/model/Task;)V

    .line 386
    invoke-static {}, Lcom/android/systemui/recents/AlternateRecentsComponent;->consumeLastScreenshot()V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$4;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewFullScreenTransitionCompleted()V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$4;->val$ctx:Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 392
    return-void
.end method
