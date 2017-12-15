.class Landroid/widget/AbsListView$5;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 2

    .prologue
    .line 9596
    iput-object p1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 9599
    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollTo:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$5600(Landroid/widget/AbsListView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollNext:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$5700(Landroid/widget/AbsListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_21

    .line 9600
    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollTo:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$5600(Landroid/widget/AbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 9614
    :goto_20
    return-void

    .line 9602
    :cond_21
    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollTo:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$5600(Landroid/widget/AbsListView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollFrom:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$5800(Landroid/widget/AbsListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$6000(Landroid/widget/AbsListView;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollingCount:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$5900(Landroid/widget/AbsListView;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 9604
    .local v0, "movingDistance":I
    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # operator++ for: Landroid/widget/AbsListView;->mQCScrollingCount:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$5908(Landroid/widget/AbsListView;)I

    .line 9605
    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollDirection:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$6100(Landroid/widget/AbsListView;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_75

    .line 9606
    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # setter for: Landroid/widget/AbsListView;->mQCScrollNext:I
    invoke-static {v1, v0}, Landroid/widget/AbsListView;->access$5702(Landroid/widget/AbsListView;I)I

    .line 9607
    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollNext:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$5700(Landroid/widget/AbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 9612
    :goto_67
    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$6200(Landroid/widget/AbsListView;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x28

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_20

    .line 9609
    :cond_75
    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollFrom:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$5800(Landroid/widget/AbsListView;)I

    move-result v2

    add-int/2addr v2, v0

    # setter for: Landroid/widget/AbsListView;->mQCScrollNext:I
    invoke-static {v1, v2}, Landroid/widget/AbsListView;->access$5702(Landroid/widget/AbsListView;I)I

    .line 9610
    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mQCScrollNext:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$5700(Landroid/widget/AbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_67
.end method
