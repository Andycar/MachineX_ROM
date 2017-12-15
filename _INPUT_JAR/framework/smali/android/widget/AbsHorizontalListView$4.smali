.class Landroid/widget/AbsHorizontalListView$4;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .registers 2

    .prologue
    .line 6339
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$4;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 6342
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$4;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v0, v0, Landroid/widget/AbsHorizontalListView;->mCachingStarted:Z

    if-eqz v0, :cond_30

    .line 6343
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$4;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$4;->this$0:Landroid/widget/AbsHorizontalListView;

    iput-boolean v2, v1, Landroid/widget/AbsHorizontalListView;->mCachingActive:Z

    iput-boolean v2, v0, Landroid/widget/AbsHorizontalListView;->mCachingStarted:Z

    .line 6344
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$4;->this$0:Landroid/widget/AbsHorizontalListView;

    # invokes: Landroid/widget/AbsHorizontalListView;->setChildrenDrawnWithCacheEnabled(Z)V
    invoke-static {v0, v2}, Landroid/widget/AbsHorizontalListView;->access$4100(Landroid/widget/AbsHorizontalListView;Z)V

    .line 6345
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$4;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mPersistentDrawingCache:I
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$4200(Landroid/widget/AbsHorizontalListView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_23

    .line 6346
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$4;->this$0:Landroid/widget/AbsHorizontalListView;

    # invokes: Landroid/widget/AbsHorizontalListView;->setChildrenDrawingCacheEnabled(Z)V
    invoke-static {v0, v2}, Landroid/widget/AbsHorizontalListView;->access$4300(Landroid/widget/AbsHorizontalListView;Z)V

    .line 6348
    :cond_23
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$4;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_30

    .line 6349
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$4;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 6352
    :cond_30
    return-void
.end method
