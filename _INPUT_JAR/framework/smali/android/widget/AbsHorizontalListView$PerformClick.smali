.class Landroid/widget/AbsHorizontalListView$PerformClick;
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
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .registers 3

    .prologue
    .line 3374
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsHorizontalListView$WindowRunnnable;-><init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p2, "x1"    # Landroid/widget/AbsHorizontalListView$1;

    .prologue
    .line 3374
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView$PerformClick;-><init>(Landroid/widget/AbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 3381
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mForcedClick:Z
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView;->access$700(Landroid/widget/AbsHorizontalListView;)Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v5, v5, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-eqz v5, :cond_11

    .line 3421
    :cond_10
    :goto_10
    return-void

    .line 3383
    :cond_11
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v0, v5, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3384
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v3, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->mClickMotionPosition:I

    .line 3385
    .local v3, "motionPosition":I
    const/4 v2, 0x0

    .line 3386
    .local v2, "handledNotifykeyPress":Z
    if-eqz v0, :cond_10

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v5, v5, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-lez v5, :cond_10

    if-eq v3, v8, :cond_10

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_10

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView$PerformClick;->sameWindow()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 3389
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v6, v6, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {v5, v6}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3392
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_10

    .line 3394
    :try_start_3c
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v5, v4, v3, v6, v7}, Landroid/widget/AbsHorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3396
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView;->access$800(Landroid/widget/AbsHorizontalListView;)Z

    move-result v5

    if-nez v5, :cond_55

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView;->access$900(Landroid/widget/AbsHorizontalListView;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 3397
    :cond_55
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v5, v4, v3, v6, v7}, Landroid/widget/AbsHorizontalListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    move-result v2

    .line 3400
    :cond_5f
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView;->access$800(Landroid/widget/AbsHorizontalListView;)Z

    move-result v5

    if-eq v5, v9, :cond_6f

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView;->access$900(Landroid/widget/AbsHorizontalListView;)Z

    move-result v5

    if-ne v5, v9, :cond_10

    :cond_6f
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v5, v5, Landroid/widget/AbsHorizontalListView;->mTwPressItemListIndex:I

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v6, v6, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_10

    .line 3402
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mIsCtrlkeyPressed:Z
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView;->access$900(Landroid/widget/AbsHorizontalListView;)Z

    move-result v5

    if-ne v5, v9, :cond_91

    .line 3403
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v6, -0x1

    invoke-virtual {v5, v3, v6}, Landroid/widget/AbsHorizontalListView;->addToPressItemListArray(II)V
    :try_end_8b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3c .. :try_end_8b} :catch_8c

    goto :goto_10

    .line 3416
    :catch_8c
    move-exception v1

    .line 3417
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_10

    .line 3404
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_91
    :try_start_91
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mIsShiftkeyPressed:Z
    invoke-static {v5}, Landroid/widget/AbsHorizontalListView;->access$800(Landroid/widget/AbsHorizontalListView;)Z

    move-result v5

    if-ne v5, v9, :cond_10

    .line 3405
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v5}, Landroid/widget/AbsHorizontalListView;->resetPressItemListArray()V

    .line 3406
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v5, v5, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    if-ne v5, v8, :cond_b0

    .line 3407
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v6, -0x1

    invoke-virtual {v5, v3, v6}, Landroid/widget/AbsHorizontalListView;->addToPressItemListArray(II)V

    .line 3408
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iput v3, v5, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    goto/16 :goto_10

    .line 3410
    :cond_b0
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$PerformClick;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v6, v6, Landroid/widget/AbsHorizontalListView;->mFirstPressedPoint:I

    invoke-virtual {v5, v6, v3}, Landroid/widget/AbsHorizontalListView;->addToPressItemListArray(II)V
    :try_end_b9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_91 .. :try_end_b9} :catch_8c

    goto/16 :goto_10
.end method
