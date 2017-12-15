.class Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;
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
    name = "TwSmoothScrollByMove"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .registers 2

    .prologue
    .line 6195
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p2, "x1"    # Landroid/widget/AbsHorizontalListView$1;

    .prologue
    .line 6195
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;-><init>(Landroid/widget/AbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 6197
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mFlingRunnable:Landroid/widget/AbsHorizontalListView$FlingRunnable;
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$3800(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$FlingRunnable;

    move-result-object v1

    # getter for: Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->access$1800(Landroid/widget/AbsHorizontalListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 6198
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$3900(Landroid/widget/AbsHorizontalListView;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 6199
    :try_start_17
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$3900(Landroid/widget/AbsHorizontalListView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 6200
    monitor-exit v2

    .line 6208
    :goto_24
    return-void

    .line 6202
    :cond_25
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mTwTwScrollRemains:Ljava/util/LinkedList;
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$3900(Landroid/widget/AbsHorizontalListView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6203
    .local v0, "remain":I
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    .line 6205
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_17 .. :try_end_3d} :catchall_43

    .line 6207
    .end local v0    # "remain":I
    :cond_3d
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v1, p0}, Landroid/widget/AbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    .line 6205
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method
