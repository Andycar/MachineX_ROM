.class Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;
.super Landroid/widget/MultiSelectPopupWindow$HandleView;
.source "MultiSelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionStartHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1472
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    .line 1473
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MultiSelectPopupWindow$HandleView;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1474
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mHandleType:I

    .line 1475
    return-void
.end method

.method private isHandleViewScreenOut()Z
    .registers 5

    .prologue
    .line 1591
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v2}, Landroid/widget/MultiSelectPopupWindow;->access$400(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v1

    .line 1592
    .local v1, "positionListener":Landroid/widget/MultiSelectPopupWindow$PositionListener;
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 1594
    .local v0, "iconSize":I
    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mPositionX:I

    invoke-virtual {v1}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->getPositionX()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mHotspotX:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    if-gez v2, :cond_1d

    const/4 v2, 0x1

    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1538
    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mbSwitchCursor:Z

    .line 1540
    .local v0, "bSwitchCursor":Z
    iput-boolean v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mbSwitchCursor:Z

    .line 1541
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->isHandleViewScreenOut()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1542
    iput-boolean v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mbSwitchCursor:Z

    .line 1545
    :cond_e
    iget-boolean v4, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mbSwitchCursor:Z

    if-eq v0, v4, :cond_3d

    .line 1546
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->updateDrawable()V

    .line 1547
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 1548
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->getCurrentCursorOffset()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mHotspotX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mPositionX:I

    .line 1549
    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mPositionX:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mPositionX:I

    .line 1552
    .end local v1    # "layout":Landroid/text/Layout;
    :goto_3c
    return v2

    :cond_3d
    move v2, v3

    goto :goto_3c
.end method

.method public getCurrentCursorOffset()I
    .registers 4

    .prologue
    .line 1489
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1490
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_11

    .line 1491
    const-string v1, "MultiSelectPopupWindow"

    const-string v2, "getTextFormultiSelection() text is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_11
    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    return v1
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 1479
    if-eqz p2, :cond_9

    .line 1480
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 1482
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_8
.end method

.method protected positionAtCursorOffset(IZZ)V
    .registers 5
    .param p1, "offset"    # I
    .param p2, "parentPositionChanged"    # Z
    .param p3, "parentScrolled"    # Z

    .prologue
    .line 1523
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->positionAtCursorOffset(IZZ)V

    .line 1524
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->calculateForSwitchingCursor()Z

    .line 1525
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mPositionHasChanged:Z

    .line 1526
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->invalidate()V

    .line 1527
    return-void
.end method

.method public refreshForSwitchingCursor()Z
    .registers 2

    .prologue
    .line 1530
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->isHandleViewScreenOut()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mbSwitchCursor:Z

    if-nez v0, :cond_13

    .line 1531
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1532
    const/4 v0, 0x1

    .line 1534
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected updateDrawable()V
    .registers 5

    .prologue
    .line 1556
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 1557
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1558
    .local v2, "oldDrawable":Landroid/graphics/drawable/Drawable;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 1560
    .local v0, "isRtlCharAtOffset":Z
    iget-boolean v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mbSwitchCursor:Z

    if-eqz v3, :cond_19

    .line 1561
    if-nez v0, :cond_46

    const/4 v0, 0x1

    .line 1564
    :cond_19
    :goto_19
    if-eqz v0, :cond_48

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_1d
    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1565
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v3

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mHotspotX:I

    .line 1567
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->isThemeDeviceDefault()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1568
    new-instance v3, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView$1;

    invoke-direct {v3, p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView$1;-><init>(Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;)V

    invoke-virtual {p0, v3}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1584
    :cond_3b
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_45

    .line 1585
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->recalHandleView()V

    .line 1586
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->invalidate()V

    .line 1588
    :cond_45
    return-void

    .line 1561
    :cond_46
    const/4 v0, 0x0

    goto :goto_19

    .line 1564
    :cond_48
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_1d
.end method

.method public updatePosition(FF)V
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 1510
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1511
    .local v0, "offset":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1512
    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v2, :cond_14

    .line 1520
    :cond_13
    :goto_13
    return-void

    .line 1515
    :cond_14
    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1516
    .local v1, "selectionEnd":I
    if-eq v0, v1, :cond_13

    .line 1519
    invoke-virtual {p0, v0, v4, v4}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->positionAtCursorOffset(IZZ)V

    goto :goto_13
.end method

.method public updateSelection(I)V
    .registers 5
    .param p1, "offset"    # I

    .prologue
    .line 1499
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1500
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_b

    .line 1506
    :goto_a
    return-void

    .line 1503
    :cond_b
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->playPenSelectionVibrator()Z

    move-object v1, v0

    .line 1504
    check-cast v1, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 1505
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->updateDrawable()V

    goto :goto_a
.end method
