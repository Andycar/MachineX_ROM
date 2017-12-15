.class Landroid/widget/Editor$SelectionEndHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 5128
    iput-object p1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    .line 5129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5130
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mHandleType:I

    .line 5131
    return-void
.end method

.method private isHandleViewScreenOut()Z
    .registers 6

    .prologue
    .line 5251
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5252
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v3}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v2

    .line 5253
    .local v2, "positionListener":Landroid/widget/Editor$PositionListener;
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 5255
    .local v1, "iconSize":I
    iget v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPositionX:I

    invoke-virtual {v2}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mHotspotX:I

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v3, v4, :cond_29

    const/4 v3, 0x1

    :goto_28
    return v3

    :cond_29
    const/4 v3, 0x0

    goto :goto_28
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5207
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mbSwitchCursor:Z

    .line 5208
    .local v0, "bSwitchCursor":Z
    iget-object v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 5210
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iput-boolean v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mbSwitchCursor:Z

    .line 5212
    invoke-direct {p0}, Landroid/widget/Editor$SelectionEndHandleView;->isHandleViewScreenOut()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 5213
    iput-boolean v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mbSwitchCursor:Z

    .line 5216
    :cond_18
    iget-boolean v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->mbSwitchCursor:Z

    if-eq v0, v5, :cond_4b

    .line 5217
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->updateDrawable()V

    .line 5218
    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 5219
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->getCurrentCursorOffset()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->mHotspotX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPositionX:I

    .line 5220
    iget v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPositionX:I

    .line 5223
    .end local v2    # "layout":Landroid/text/Layout;
    :goto_4a
    return v3

    :cond_4b
    move v3, v4

    goto :goto_4a
.end method

.method public getCurrentCursorOffset()I
    .registers 2

    .prologue
    .line 5149
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .registers 3
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 5144
    if-eqz p1, :cond_4

    const/4 v0, 0x3

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x5

    goto :goto_3
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 5135
    if-eqz p2, :cond_b

    .line 5136
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 5138
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_a
.end method

.method protected positionAtCursorOffset(IZ)V
    .registers 4
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    .line 5189
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 5190
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mIsDragging:Z

    if-nez v0, :cond_18

    .line 5192
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->calculateForSwitchingCursor()Z

    .line 5193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPositionHasChanged:Z

    .line 5194
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->invalidate()V

    .line 5196
    :cond_18
    return-void
.end method

.method public refreshForSwitchingCursor()Z
    .registers 2

    .prologue
    .line 5199
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mbSwitchCursor:Z

    if-nez v0, :cond_e

    invoke-direct {p0}, Landroid/widget/Editor$SelectionEndHandleView;->isHandleViewScreenOut()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mbSwitchCursor:Z

    if-nez v0, :cond_19

    .line 5200
    :cond_e
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 5201
    const/4 v0, 0x1

    .line 5203
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public setActionPopupWindow(Landroid/widget/Editor$ActionPopupWindow;)V
    .registers 2
    .param p1, "actionPopupWindow"    # Landroid/widget/Editor$ActionPopupWindow;

    .prologue
    .line 5179
    iput-object p1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    .line 5180
    return-void
.end method

.method public setNewActionPopupWindow(Landroid/widget/Editor$NewActionPopupWindow;)V
    .registers 2
    .param p1, "newActionPopupWindow"    # Landroid/widget/Editor$NewActionPopupWindow;

    .prologue
    .line 5183
    iput-object p1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    .line 5184
    return-void
.end method

.method protected updateDrawable()V
    .registers 5

    .prologue
    .line 5227
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v3}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 5228
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 5248
    :cond_b
    :goto_b
    return-void

    .line 5232
    :cond_c
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 5233
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5234
    .local v2, "oldDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 5236
    .local v0, "isRtlCharAtOffset":Z
    iget-boolean v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mbSwitchCursor:Z

    if-eqz v3, :cond_27

    .line 5237
    if-nez v0, :cond_40

    const/4 v0, 0x1

    .line 5240
    :cond_27
    :goto_27
    if-eqz v0, :cond_42

    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_2b
    iput-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5242
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v0}, Landroid/widget/Editor$SelectionEndHandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mHotspotX:I

    .line 5244
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_b

    .line 5245
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->recalHandleView()V

    .line 5246
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->invalidate()V

    goto :goto_b

    .line 5237
    :cond_40
    const/4 v0, 0x0

    goto :goto_27

    .line 5240
    :cond_42
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_2b
.end method

.method public updatePosition(FF)V
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 5161
    iget-object v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 5164
    .local v0, "offset":I
    iget-object v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 5166
    .local v1, "selectionStart":I
    iget-object v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 5167
    if-gt v0, v1, :cond_32

    .line 5168
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5175
    :cond_32
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/widget/Editor$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    .line 5176
    :goto_36
    return-void

    .line 5171
    :cond_37
    if-ne v0, v1, :cond_32

    goto :goto_36
.end method

.method public updateSelection(I)V
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 5154
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5156
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->updateDrawable()V

    .line 5157
    return-void
.end method
