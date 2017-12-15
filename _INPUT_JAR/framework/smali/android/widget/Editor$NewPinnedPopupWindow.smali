.class abstract Landroid/widget/Editor$NewPinnedPopupWindow;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "NewPinnedPopupWindow"
.end annotation


# instance fields
.field protected final ITEM_WIDTH:I

.field protected mContentView:Landroid/view/ViewGroup;

.field protected mDividerWidth:I

.field protected mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field protected mItemWidth:I

.field protected mMenuItemCount:I

.field protected mPopupBgPaddingHeight:I

.field protected mPopupBgPaddingWidth:I

.field protected mPopupWidthLandscape:I

.field protected mPopupWidthPortrait:I

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3480
    iput-object p1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3465
    const/16 v0, 0x47

    iput v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->ITEM_WIDTH:I

    .line 3466
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mItemWidth:I

    .line 3467
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthPortrait:I

    .line 3468
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthLandscape:I

    .line 3469
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingWidth:I

    .line 3470
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingHeight:I

    .line 3471
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mDividerWidth:I

    .line 3472
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mMenuItemCount:I

    .line 3481
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->createPopupWindow()V

    .line 3483
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 3484
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthPortrait:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3485
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3487
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->initContentView()V

    .line 3488
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->setHeight()V

    .line 3489
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3490
    return-void
.end method

.method private computeLocalPosition()V
    .registers 3

    .prologue
    .line 3587
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->measureContent()V

    .line 3588
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 3589
    .local v0, "position":[I
    invoke-virtual {p0, v0}, Landroid/widget/Editor$NewPinnedPopupWindow;->getNewActionPopupPosition([I)V

    .line 3590
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionX:I

    .line 3591
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionY:I

    .line 3592
    return-void
.end method

.method private getMenuLimit()I
    .registers 3

    .prologue
    .line 3552
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 3553
    const/4 v0, 0x4

    .line 3555
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x6

    goto :goto_18
.end method

.method private setPopupWindowWidth(I)V
    .registers 6
    .param p1, "menuLimit"    # I

    .prologue
    .line 3560
    iget v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mMenuItemCount:I

    if-ge v0, p1, :cond_1a

    .line 3561
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mDividerWidth:I

    iget v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mMenuItemCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mItemWidth:I

    iget v3, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mMenuItemCount:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3569
    :goto_19
    return-void

    .line 3563
    :cond_1a
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    .line 3564
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthPortrait:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_19

    .line 3566
    :cond_39
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthLandscape:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_19
.end method

.method private updateNewActionPopupPosition()V
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 3596
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3597
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 3602
    :goto_10
    return-void

    .line 3599
    :cond_11
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionX:I

    iget v4, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_10
.end method


# virtual methods
.method protected abstract createPopupWindow()V
.end method

.method protected abstract getNewActionPopupPosition([I)V
.end method

.method protected abstract getTextOffset()I
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 3605
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3606
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 3607
    return-void
.end method

.method protected abstract initContentView()V
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 3621
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected measureContent()V
    .registers 6

    .prologue
    const/high16 v4, -0x80000000

    .line 3572
    iget-object v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3574
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->measure(II)V

    .line 3580
    return-void
.end method

.method public relocateNewActionPopupWindow(I)V
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 3625
    if-ltz p1, :cond_f

    .line 3626
    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->computeLocalPosition()V

    .line 3627
    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->getMenuLimit()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$NewPinnedPopupWindow;->setPopupWindowWidth(I)V

    .line 3628
    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->updateNewActionPopupPosition()V

    .line 3630
    :cond_f
    return-void
.end method

.method protected abstract setHeight()V
.end method

.method public show()V
    .registers 16

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 3494
    const/4 v6, 0x1

    .line 3495
    .local v6, "menuItemCount":I
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->canCut()Z

    move-result v2

    .line 3496
    .local v2, "canCut":Z
    if-eqz v2, :cond_11

    add-int/lit8 v6, v6, 0x1

    .line 3497
    :cond_11
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    .line 3498
    .local v1, "canCopy":Z
    if-eqz v1, :cond_1f

    add-int/lit8 v6, v6, 0x1

    .line 3499
    :cond_1f
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    .line 3500
    .local v4, "canPaste":Z
    if-eqz v4, :cond_2d

    add-int/lit8 v6, v6, 0x1

    .line 3501
    :cond_2d
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v11}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v11

    if-eqz v11, :cond_f2

    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    instance-of v11, v11, Landroid/text/Editable;

    if-eqz v11, :cond_f2

    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v11

    if-eqz v11, :cond_f2

    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v11

    if-lez v11, :cond_f2

    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v11, v11, Landroid/widget/Editor;->mClipboardEnable:Z

    if-eqz v11, :cond_f2

    move v0, v5

    .line 3504
    .local v0, "canClipboard":Z
    :goto_66
    if-eqz v0, :cond_6a

    add-int/lit8 v6, v6, 0x1

    .line 3505
    :cond_6a
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->canTranslate()Z

    move-result v11

    if-eqz v11, :cond_f5

    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v11, v11, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    if-eqz v11, :cond_f5

    .line 3506
    .local v5, "canTranslate":Z
    :goto_7c
    if-eqz v5, :cond_80

    add-int/lit8 v6, v6, 0x1

    .line 3507
    :cond_80
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v11, v11, Landroid/widget/Editor;->mShareEnable:Z

    if-eqz v11, :cond_88

    add-int/lit8 v6, v6, 0x1

    .line 3508
    :cond_88
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v11, v11, Landroid/widget/Editor;->mWebSearchEnable:Z

    if-eqz v11, :cond_90

    add-int/lit8 v6, v6, 0x1

    .line 3509
    :cond_90
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isDictionaryEnabled()Z
    invoke-static {v11}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v3

    .line 3510
    .local v3, "canDictionary":Z
    if-eqz v3, :cond_9a

    add-int/lit8 v6, v6, 0x1

    .line 3511
    :cond_9a
    iput v6, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mMenuItemCount:I

    .line 3513
    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->computeLocalPosition()V

    .line 3515
    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->getMenuLimit()I

    move-result v8

    .line 3516
    .local v8, "menuLimit":I
    invoke-direct {p0, v8}, Landroid/widget/Editor$NewPinnedPopupWindow;->setPopupWindowWidth(I)V

    .line 3518
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->update()V

    .line 3519
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v12, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    iget v13, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionX:I

    iget v14, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionY:I

    invoke-virtual {v11, v12, v10, v13, v14}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3521
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v11}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v11

    invoke-virtual {v11, p0, v10}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 3523
    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->updateNewActionPopupPosition()V

    .line 3525
    if-le v6, v8, :cond_f1

    .line 3526
    sub-int v7, v6, v8

    .line 3528
    .local v7, "menuItemDiff":I
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v12, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    mul-int/lit8 v13, v7, 0x64

    int-to-float v13, v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v11, v12, v10}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 3529
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Landroid/widget/Editor$NewPinnedPopupWindow$1;

    invoke-direct {v10, p0, v7}, Landroid/widget/Editor$NewPinnedPopupWindow$1;-><init>(Landroid/widget/Editor$NewPinnedPopupWindow;I)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3547
    .local v9, "thread":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 3549
    .end local v7    # "menuItemDiff":I
    .end local v9    # "thread":Ljava/lang/Thread;
    :cond_f1
    return-void

    .end local v0    # "canClipboard":Z
    .end local v3    # "canDictionary":Z
    .end local v5    # "canTranslate":Z
    .end local v8    # "menuLimit":I
    :cond_f2
    move v0, v10

    .line 3501
    goto/16 :goto_66

    .restart local v0    # "canClipboard":Z
    :cond_f5
    move v5, v10

    .line 3505
    goto :goto_7c
.end method

.method public updatePosition(IIZZ)V
    .registers 7
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 3612
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->getTextOffset()I

    move-result v1

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3613
    if-eqz p4, :cond_17

    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->computeLocalPosition()V

    .line 3614
    :cond_17
    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->updateNewActionPopupPosition()V

    .line 3618
    :goto_1a
    return-void

    .line 3616
    :cond_1b
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->hide()V

    goto :goto_1a
.end method
