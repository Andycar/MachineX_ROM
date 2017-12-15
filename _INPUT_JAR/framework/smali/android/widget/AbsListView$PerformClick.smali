.class Landroid/widget/AbsListView$PerformClick;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .registers 3

    .prologue
    .line 3646
    iput-object p1, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/AbsListView;
    .param p2, "x1"    # Landroid/widget/AbsListView$1;

    .prologue
    .line 3646
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 3653
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mForcedClick:Z
    invoke-static {v6}, Landroid/widget/AbsListView;->access$700(Landroid/widget/AbsListView;)Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-boolean v6, v6, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v6, :cond_11

    .line 3696
    :cond_10
    :goto_10
    return-void

    .line 3655
    :cond_11
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v6, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3656
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v4, p0, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 3657
    .local v4, "motionPosition":I
    const/4 v3, 0x0

    .line 3658
    .local v3, "handledNotifykeyPress":Z
    const/4 v2, 0x0

    .line 3659
    .local v2, "handledNotifyMultiSelect":Z
    if-eqz v0, :cond_10

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v6, :cond_10

    if-eq v4, v10, :cond_10

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_10

    invoke-virtual {p0}, Landroid/widget/AbsListView$PerformClick;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 3662
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v7, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v7, v4, v7

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3665
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_10

    .line 3667
    :try_start_3d
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-virtual {v6, v5, v4, v8, v9}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3669
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z
    invoke-static {v6}, Landroid/widget/AbsListView;->access$800(Landroid/widget/AbsListView;)Z

    move-result v6

    if-nez v6, :cond_56

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z
    invoke-static {v6}, Landroid/widget/AbsListView;->access$900(Landroid/widget/AbsListView;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 3670
    :cond_56
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-virtual {v6, v5, v4, v8, v9}, Landroid/widget/AbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    move-result v3

    .line 3675
    :cond_60
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z
    invoke-static {v6}, Landroid/widget/AbsListView;->access$800(Landroid/widget/AbsListView;)Z

    move-result v6

    if-eq v6, v11, :cond_70

    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z
    invoke-static {v6}, Landroid/widget/AbsListView;->access$900(Landroid/widget/AbsListView;)Z

    move-result v6

    if-ne v6, v11, :cond_10

    :cond_70
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v6, v6, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_10

    .line 3677
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z
    invoke-static {v6}, Landroid/widget/AbsListView;->access$900(Landroid/widget/AbsListView;)Z

    move-result v6

    if-ne v6, v11, :cond_8a

    .line 3678
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    const/4 v7, -0x1

    # invokes: Landroid/widget/AbsListView;->addToPressItemListArray(II)V
    invoke-static {v6, v4, v7}, Landroid/widget/AbsListView;->access$1000(Landroid/widget/AbsListView;II)V
    :try_end_84
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3d .. :try_end_84} :catch_85

    goto :goto_10

    .line 3691
    :catch_85
    move-exception v1

    .line 3692
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_10

    .line 3679
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_8a
    :try_start_8a
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z
    invoke-static {v6}, Landroid/widget/AbsListView;->access$800(Landroid/widget/AbsListView;)Z

    move-result v6

    if-ne v6, v11, :cond_10

    .line 3680
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 3681
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFirstPressedPoint:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)I

    move-result v6

    if-ne v6, v10, :cond_ac

    .line 3682
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    const/4 v7, -0x1

    # invokes: Landroid/widget/AbsListView;->addToPressItemListArray(II)V
    invoke-static {v6, v4, v7}, Landroid/widget/AbsListView;->access$1000(Landroid/widget/AbsListView;II)V

    .line 3683
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # setter for: Landroid/widget/AbsListView;->mFirstPressedPoint:I
    invoke-static {v6, v4}, Landroid/widget/AbsListView;->access$1102(Landroid/widget/AbsListView;I)I

    goto/16 :goto_10

    .line 3685
    :cond_ac
    iget-object v6, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    iget-object v7, p0, Landroid/widget/AbsListView$PerformClick;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFirstPressedPoint:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)I

    move-result v7

    # invokes: Landroid/widget/AbsListView;->addToPressItemListArray(II)V
    invoke-static {v6, v7, v4}, Landroid/widget/AbsListView;->access$1000(Landroid/widget/AbsListView;II)V
    :try_end_b7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8a .. :try_end_b7} :catch_85

    goto/16 :goto_10
.end method
