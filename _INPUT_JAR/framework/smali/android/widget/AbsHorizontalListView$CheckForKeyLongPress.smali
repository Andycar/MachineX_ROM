.class Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;
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
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .registers 3

    .prologue
    .line 3448
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsHorizontalListView$WindowRunnnable;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p2, "x1"    # Landroid/widget/AbsHorizontalListView$1;

    .prologue
    .line 3448
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 3451
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3}, Landroid/widget/AbsHorizontalListView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v3, v3, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    if-ltz v3, :cond_21

    .line 3452
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v3, v3, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v4, v4, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v1, v3, v4

    .line 3453
    .local v1, "index":I
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3455
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_22

    .line 3472
    .end local v1    # "index":I
    .end local v2    # "v":Landroid/view/View;
    :cond_21
    :goto_21
    return-void

    .line 3458
    .restart local v1    # "index":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_22
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v3, v3, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-nez v3, :cond_48

    .line 3459
    const/4 v0, 0x0

    .line 3460
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 3461
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v4, v4, Landroid/widget/AbsHorizontalListView;->mSelectedPosition:I

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-wide v6, v5, Landroid/widget/AbsHorizontalListView;->mSelectedRowId:J

    invoke-virtual {v3, v2, v4, v6, v7}, Landroid/widget/AbsHorizontalListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .line 3463
    :cond_3d
    if-eqz v0, :cond_21

    .line 3464
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3, v8}, Landroid/widget/AbsHorizontalListView;->setPressed(Z)V

    .line 3465
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    goto :goto_21

    .line 3468
    .end local v0    # "handled":Z
    :cond_48
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3, v8}, Landroid/widget/AbsHorizontalListView;->setPressed(Z)V

    .line 3469
    if-eqz v2, :cond_21

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    goto :goto_21
.end method
