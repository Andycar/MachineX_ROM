.class Landroid/widget/Editor$SelectionStartHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionStartHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4995
    iput-object p1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    .line 4996
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4997
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mHandleType:I

    .line 4998
    return-void
.end method

.method private isHandleViewScreenOut()Z
    .registers 5

    .prologue
    .line 5119
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v2}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    .line 5120
    .local v1, "positionListener":Landroid/widget/Editor$PositionListener;
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 5122
    .local v0, "iconSize":I
    iget v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionX:I

    invoke-virtual {v1}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mHotspotX:I

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

    .line 5075
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    .line 5077
    .local v0, "bSwitchCursor":Z
    iput-boolean v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    .line 5079
    invoke-direct {p0}, Landroid/widget/Editor$SelectionStartHandleView;->isHandleViewScreenOut()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 5080
    iput-boolean v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    .line 5083
    :cond_e
    iget-boolean v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    if-eq v0, v4, :cond_41

    .line 5084
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->updateDrawable()V

    .line 5085
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 5086
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->getCurrentCursorOffset()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    iget v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mHotspotX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionX:I

    .line 5087
    iget v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionX:I

    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionX:I

    .line 5091
    .end local v1    # "layout":Landroid/text/Layout;
    :goto_40
    return v2

    :cond_41
    move v2, v3

    goto :goto_40
.end method

.method public getActionPopupWindow()Landroid/widget/Editor$ActionPopupWindow;
    .registers 2

    .prologue
    .line 5044
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    return-object v0
.end method

.method public getCurrentCursorOffset()I
    .registers 2

    .prologue
    .line 5016
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .registers 3
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 5011
    if-eqz p1, :cond_4

    const/4 v0, 0x5

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x3

    goto :goto_3
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 5002
    if-eqz p2, :cond_9

    .line 5003
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 5005
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_8
.end method

.method public getNewActionPopupWindow()Landroid/widget/Editor$NewActionPopupWindow;
    .registers 4

    .prologue
    .line 5048
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-nez v0, :cond_e

    .line 5049
    new-instance v0, Landroid/widget/Editor$NewActionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$NewActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    .line 5051
    :cond_e
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    return-object v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .registers 4
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    .line 5057
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 5058
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5060
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->calculateForSwitchingCursor()Z

    .line 5061
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionHasChanged:Z

    .line 5062
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->invalidate()V

    .line 5064
    :cond_14
    return-void
.end method

.method public refreshForSwitchingCursor()Z
    .registers 2

    .prologue
    .line 5067
    invoke-direct {p0}, Landroid/widget/Editor$SelectionStartHandleView;->isHandleViewScreenOut()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    if-nez v0, :cond_15

    .line 5068
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 5069
    const/4 v0, 0x1

    .line 5071
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected updateDrawable()V
    .registers 5

    .prologue
    .line 5095
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v3}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 5096
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 5116
    :cond_b
    :goto_b
    return-void

    .line 5100
    :cond_c
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 5101
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5102
    .local v2, "oldDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 5104
    .local v0, "isRtlCharAtOffset":Z
    iget-boolean v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    if-eqz v3, :cond_27

    .line 5105
    if-nez v0, :cond_40

    const/4 v0, 0x1

    .line 5108
    :cond_27
    :goto_27
    if-eqz v0, :cond_42

    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_2b
    iput-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5110
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v0}, Landroid/widget/Editor$SelectionStartHandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mHotspotX:I

    .line 5112
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_b

    .line 5113
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->recalHandleView()V

    .line 5114
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->invalidate()V

    goto :goto_b

    .line 5105
    :cond_40
    const/4 v0, 0x0

    goto :goto_27

    .line 5108
    :cond_42
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_2b
.end method

.method public updatePosition(FF)V
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 5028
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 5031
    .local v0, "offset":I
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 5033
    .local v1, "selectionEnd":I
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 5034
    if-lt v0, v1, :cond_25

    add-int/lit8 v2, v1, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5040
    :cond_25
    invoke-virtual {p0, v0, v3}, Landroid/widget/Editor$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    .line 5041
    :goto_28
    return-void

    .line 5036
    :cond_29
    if-ne v0, v1, :cond_25

    goto :goto_28
.end method

.method public updateSelection(I)V
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 5021
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5023
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->updateDrawable()V

    .line 5024
    return-void
.end method
