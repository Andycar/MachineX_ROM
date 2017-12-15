.class Landroid/widget/AbsHorizontalListView$CheckForLongPress;
.super Landroid/widget/AbsHorizontalListView$WindowRunnnable;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .registers 3

    .prologue
    .line 3424
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsHorizontalListView$WindowRunnnable;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p2, "x1"    # Landroid/widget/AbsHorizontalListView$1;

    .prologue
    .line 3424
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView$CheckForLongPress;-><init>(Landroid/widget/AbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 3427
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v5, v6, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 3428
    .local v5, "motionPosition":I
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v7, v7, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3429
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_45

    .line 3430
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v4, v6, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    .line 3431
    .local v4, "longPressPosition":I
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v6, v6, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v7, v7, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3433
    .local v2, "longPressId":J
    const/4 v1, 0x0

    .line 3434
    .local v1, "handled":Z
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_36

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v6, v6, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-nez v6, :cond_36

    .line 3435
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6, v0, v4, v2, v3}, Landroid/widget/AbsHorizontalListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 3437
    :cond_36
    if-eqz v1, :cond_46

    .line 3438
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v7, -0x1

    iput v7, v6, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    .line 3439
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6, v8}, Landroid/widget/AbsHorizontalListView;->setPressed(Z)V

    .line 3440
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3445
    .end local v1    # "handled":Z
    .end local v2    # "longPressId":J
    .end local v4    # "longPressPosition":I
    :cond_45
    :goto_45
    return-void

    .line 3442
    .restart local v1    # "handled":Z
    .restart local v2    # "longPressId":J
    .restart local v4    # "longPressPosition":I
    :cond_46
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$CheckForLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v7, 0x2

    iput v7, v6, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    goto :goto_45
.end method
