.class Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSelectQuickPopupWindow"
.end annotation


# static fields
.field private static final TW_QUICK_POPUP_DIVIDER_LAYOUT:I = 0x109012a

.field private static final TW_QUICK_POPUP_HORIZONTAL_SCROLL_LAYOUT:I = 0x109012c

.field private static final TW_QUICK_POPUP_ITEM_LAYOUT:I = 0x109012b


# instance fields
.field private COPY_DESCRIPTION:Ljava/lang/CharSequence;

.field private DICTIONARY_DESCRIPTION:Ljava/lang/CharSequence;

.field private final ITEM_WIDTH:I

.field private SELECTALL_DESCRIPTION:Ljava/lang/CharSequence;

.field private SHARE_VIA_DESCRIPTION:Ljava/lang/CharSequence;

.field private TRANSLATE_DESCRIPTION:Ljava/lang/CharSequence;

.field private mActionBarHeight:I

.field private mContentView:Landroid/view/ViewGroup;

.field private mContentViewHeight:I

.field private mContentViewWidth:I

.field private mCopyImageView:Landroid/widget/ImageView;

.field private mCopyLayout:Landroid/widget/FrameLayout;

.field private mCopyTextView:Landroid/widget/TextView;

.field private mDictionaryImageView:Landroid/widget/ImageView;

.field private mDictionaryLayout:Landroid/widget/FrameLayout;

.field private mDictionaryTextView:Landroid/widget/TextView;

.field private mDividerImageView1:Landroid/widget/ImageView;

.field private mDividerImageView2:Landroid/widget/ImageView;

.field private mDividerImageView3:Landroid/widget/ImageView;

.field private mDividerImageView4:Landroid/widget/ImageView;

.field private mDividerWidth:I

.field private mHandlerHeight:I

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mItemWidth:I

.field private mMenuItemCount:I

.field private mPopupBgPaddingHeight:I

.field private mPopupBgPaddingWidth:I

.field private mPopupWidthLandscape:I

.field private mPopupWidthPortrait:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field private mSelectAllImageView:Landroid/widget/ImageView;

.field private mSelectAllLayout:Landroid/widget/FrameLayout;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mSelectionEndPointOffset:I

.field private mSelectionStartPointOffset:I

.field private mShareImageView:Landroid/widget/ImageView;

.field private mShareLayout:Landroid/widget/FrameLayout;

.field private mShareTextView:Landroid/widget/TextView;

.field private mStatusbarHeight:I

.field private mTranslateImageView:Landroid/widget/ImageView;

.field private mTranslateLayout:Landroid/widget/FrameLayout;

.field private mTranslateTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/MultiSelectPopupWindow;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 170
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/16 v0, 0x47

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->ITEM_WIDTH:I

    .line 111
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    .line 113
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthPortrait:I

    .line 114
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthLandscape:I

    .line 115
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    .line 116
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingHeight:I

    .line 117
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerWidth:I

    .line 118
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    .line 125
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionStartPointOffset:I

    .line 126
    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionEndPointOffset:I

    .line 161
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SELECTALL_DESCRIPTION:Ljava/lang/CharSequence;

    .line 162
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->COPY_DESCRIPTION:Ljava/lang/CharSequence;

    .line 163
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->DICTIONARY_DESCRIPTION:Ljava/lang/CharSequence;

    .line 164
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->TRANSLATE_DESCRIPTION:Ljava/lang/CharSequence;

    .line 165
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SHARE_VIA_DESCRIPTION:Ljava/lang/CharSequence;

    .line 171
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->createPopupWindow()V

    .line 172
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 173
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthPortrait:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 174
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 176
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->initContentView()V

    .line 177
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->setHeight()V

    .line 178
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 179
    return-void
.end method

.method static synthetic access$500(Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;)Landroid/widget/HorizontalScrollView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    .prologue
    .line 109
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private computeLocalPosition()V
    .registers 3

    .prologue
    .line 405
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->measureContent()V

    .line 406
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 407
    .local v0, "position":[I
    invoke-direct {p0, v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getMultiSelectQuickPopupPosition([I)V

    .line 408
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    .line 409
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    .line 410
    return-void
.end method

.method private createPopupWindow()V
    .registers 8

    .prologue
    const v6, 0x1080acb

    const/4 v5, 0x0

    .line 206
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050158

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    .line 209
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 210
    .local v0, "bgRes":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 211
    .local v1, "bgResPadding":Landroid/graphics/Rect;
    if-eqz v1, :cond_9a

    .line 212
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 213
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    .line 214
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingHeight:I

    .line 215
    const/4 v1, 0x0

    .line 220
    :goto_43
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10806fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerWidth:I

    .line 221
    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    mul-int/lit8 v3, v3, 0x4

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerWidth:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthPortrait:I

    .line 222
    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    mul-int/lit8 v3, v3, 0x4

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerWidth:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthLandscape:I

    .line 223
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3}, Landroid/widget/PopupWindow;-><init>()V

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 224
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 225
    .local v2, "nullBackgrond":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 227
    return-void

    .line 217
    .end local v2    # "nullBackgrond":Landroid/graphics/drawable/Drawable;
    :cond_9a
    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    goto :goto_43
.end method

.method private getMenuLimit()I
    .registers 3

    .prologue
    .line 675
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 676
    const/4 v0, 0x4

    .line 678
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x6

    goto :goto_16
.end method

.method private getMultiSelectQuickPopupPosition([I)V
    .registers 38
    .param p1, "position"    # [I

    .prologue
    .line 537
    if-nez p1, :cond_a

    .line 538
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 p1, v0

    .line 541
    :cond_a
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    .line 542
    .local v12, "menuItemCount":I
    const/4 v13, 0x0

    .line 544
    .local v13, "menuLimit":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_37a

    .line 545
    const/4 v13, 0x4

    .line 550
    :goto_2e
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v28

    .line 551
    .local v28, "text":Ljava/lang/CharSequence;
    if-nez v28, :cond_3f

    .line 552
    const-string v32, "MultiSelectPopupWindow"

    const-string v33, "getTextFormultiSelection() text is null"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_3f
    invoke-static/range {v28 .. v28}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionStartPointOffset:I

    .line 556
    invoke-static/range {v28 .. v28}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionEndPointOffset:I

    .line 558
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 559
    .local v18, "screen":[I
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v31, v0

    .line 560
    .local v31, "window":[I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 561
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 562
    const/16 v32, 0x0

    aget v32, v18, v32

    const/16 v33, 0x0

    aget v33, v31, v33

    sub-int v16, v32, v33

    .line 563
    .local v16, "parentViewPositionX":I
    const/16 v32, 0x1

    aget v32, v18, v32

    const/16 v33, 0x1

    aget v33, v31, v33

    sub-int v17, v32, v33

    .line 564
    .local v17, "parentViewPositionY":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v30

    .line 565
    .local v30, "viewportToContentVerticalOffset":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v29

    .line 566
    .local v29, "viewportToContentHorizontalOffset":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    .line 567
    .local v22, "screenWidth":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    .line 568
    .local v20, "screenHeight":I
    move/from16 v8, v20

    .line 569
    .local v8, "fullScreenHeight":I
    const/16 v21, 0x0

    .line 570
    .local v21, "screenTop":I
    move/from16 v19, v20

    .line 571
    .local v19, "screenBottom":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionStartPointOffset:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v24

    .line 572
    .local v24, "startLine":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionEndPointOffset:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 573
    .local v4, "endLine":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v32

    const/16 v33, 0x1

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v26, v32, v30

    .line 574
    .local v26, "startLineTop":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v32

    const/16 v33, 0x1

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v25, v32, v30

    .line 575
    .local v25, "startLineBottom":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v32

    const/16 v33, 0x1

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v6, v32, v30

    .line 576
    .local v6, "endLineTop":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v32

    const/16 v33, 0x1

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v5, v32, v30

    .line 577
    .local v5, "endLineBottom":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionStartPointOffset:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v27, v32, v29

    .line 578
    .local v27, "startX":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectionEndPointOffset:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    aget v33, v31, v33

    add-int v32, v32, v33

    add-int v7, v32, v29

    .line 579
    .local v7, "endX":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/text/Layout;->getWidth()I

    move-result v11

    .line 580
    .local v11, "maxWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mActionBarHeight:I

    .line 581
    .local v2, "actionBarHeight":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHandlerHeight:I

    .line 582
    .local v9, "handlerHeight":I
    const/4 v10, 0x1

    .line 583
    .local v10, "isStatusBarVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingHeight:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    .line 586
    :try_start_1ba
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/view/IWindowManager;->isStatusBarVisible()Z
    :try_end_1c1
    .catch Landroid/os/RemoteException; {:try_start_1ba .. :try_end_1c1} :catch_37d

    move-result v10

    .line 590
    :goto_1c2
    if-nez v10, :cond_1cc

    .line 591
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mStatusbarHeight:I

    .line 594
    :cond_1cc
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->isMultiWindow()Z

    move-result v32

    if-eqz v32, :cond_23d

    .line 595
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v32

    const-string/jumbo v33, "multiwindow_facade"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 596
    .local v15, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v23

    .line 597
    .local v23, "stackBoxBound":Landroid/graphics/Rect;
    if-eqz v23, :cond_20b

    .line 598
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .line 599
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    .line 600
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v20

    .line 603
    :cond_20b
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v32

    if-eqz v32, :cond_217

    .line 604
    const/16 v21, 0x0

    .line 607
    :cond_217
    const/16 v32, 0x1

    aget v32, v18, v32

    move/from16 v0, v32

    move/from16 v1, v21

    if-lt v0, v1, :cond_22b

    const/16 v32, 0x1

    aget v32, v18, v32

    move/from16 v0, v32

    move/from16 v1, v19

    if-le v0, v1, :cond_23d

    :cond_22b
    const/16 v32, 0x1

    aget v32, v18, v32

    if-lez v32, :cond_23d

    const/16 v32, 0x1

    aget v32, v18, v32

    move/from16 v0, v32

    if-ge v0, v8, :cond_23d

    .line 608
    const/16 v21, 0x0

    .line 609
    move/from16 v19, v8

    .line 613
    .end local v15    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v23    # "stackBoxBound":Landroid/graphics/Rect;
    :cond_23d
    if-ge v12, v13, :cond_387

    .line 614
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerWidth:I

    move/from16 v32, v0

    add-int/lit8 v33, v12, -0x1

    mul-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    move/from16 v33, v0

    mul-int v33, v33, v12

    add-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    .line 623
    :goto_261
    move/from16 v0, v24

    if-ne v0, v4, :cond_3c1

    .line 624
    const/16 v32, 0x0

    sub-int v33, v7, v27

    div-int/lit8 v33, v33, 0x2

    add-int v33, v33, v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0x2

    sub-int v33, v33, v34

    aput v33, p1, v32

    .line 629
    :goto_279
    const/16 v32, 0x0

    aget v32, p1, v32

    if-gez v32, :cond_407

    .line 630
    const/16 v32, 0x0

    aget v32, p1, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(I)I

    move-result v32

    move/from16 v0, v16

    move/from16 v1, v32

    if-ge v0, v1, :cond_3d9

    .line 631
    const/16 v32, 0x0

    aget v33, p1, v32

    const/16 v34, 0x0

    aget v34, p1, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(I)I

    move-result v34

    sub-int v34, v34, v16

    add-int v33, v33, v34

    aput v33, p1, v32

    .line 636
    :cond_29f
    :goto_29f
    const/16 v32, 0x0

    aget v32, p1, v32

    if-gez v32, :cond_2d7

    .line 637
    const/16 v32, 0x0

    const/16 v33, 0x0

    aput v33, p1, v32

    .line 638
    const/16 v32, 0x0

    aget v32, p1, v32

    add-int v32, v32, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move/from16 v1, v22

    if-le v0, v1, :cond_2d7

    .line 639
    const/16 v32, 0x0

    aget v33, p1, v32

    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    sub-int v34, v34, v22

    sub-int v33, v33, v34

    aput v33, p1, v32

    .line 646
    :cond_2d7
    :goto_2d7
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    sub-int v33, v26, v33

    aput v33, p1, v32

    .line 648
    const/16 v32, 0x1

    aget v32, p1, v32

    add-int v32, v32, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mStatusbarHeight:I

    move/from16 v33, v0

    add-int v33, v33, v2

    add-int v33, v33, v21

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_2ff

    .line 649
    const/16 v32, 0x1

    add-int v33, v5, v9

    aput v33, p1, v32

    .line 652
    :cond_2ff
    const/16 v32, 0x1

    aget v32, p1, v32

    add-int v32, v32, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move/from16 v1, v19

    if-le v0, v1, :cond_345

    .line 653
    move/from16 v0, v19

    if-le v5, v0, :cond_435

    move/from16 v14, v19

    .line 654
    .local v14, "middlePosition":I
    :goto_319
    if-gez v25, :cond_31d

    .line 655
    const/16 v25, 0x0

    .line 657
    :cond_31d
    add-int v32, v25, v9

    sub-int v32, v14, v32

    div-int/lit8 v14, v32, 0x2

    .line 658
    add-int v32, v25, v9

    sub-int v32, v5, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_438

    .line 659
    const/16 v32, 0x1

    add-int v33, v25, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0x2

    sub-int v34, v14, v34

    add-int v33, v33, v34

    aput v33, p1, v32

    .line 665
    .end local v14    # "middlePosition":I
    :cond_345
    :goto_345
    const/16 v32, 0x1

    aget v32, p1, v32

    add-int v32, v32, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move/from16 v1, v19

    if-gt v0, v1, :cond_365

    const/16 v32, 0x1

    aget v32, p1, v32

    add-int v32, v32, v17

    move/from16 v0, v32

    move/from16 v1, v21

    if-ge v0, v1, :cond_379

    .line 666
    :cond_365
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    sub-int v33, v19, v33

    aput v33, p1, v32

    .line 667
    const/16 v32, 0x1

    aget v33, p1, v32

    sub-int v33, v33, v21

    aput v33, p1, v32

    .line 669
    :cond_379
    return-void

    .line 547
    .end local v2    # "actionBarHeight":I
    .end local v4    # "endLine":I
    .end local v5    # "endLineBottom":I
    .end local v6    # "endLineTop":I
    .end local v7    # "endX":I
    .end local v8    # "fullScreenHeight":I
    .end local v9    # "handlerHeight":I
    .end local v10    # "isStatusBarVisible":Z
    .end local v11    # "maxWidth":I
    .end local v16    # "parentViewPositionX":I
    .end local v17    # "parentViewPositionY":I
    .end local v18    # "screen":[I
    .end local v19    # "screenBottom":I
    .end local v20    # "screenHeight":I
    .end local v21    # "screenTop":I
    .end local v22    # "screenWidth":I
    .end local v24    # "startLine":I
    .end local v25    # "startLineBottom":I
    .end local v26    # "startLineTop":I
    .end local v27    # "startX":I
    .end local v28    # "text":Ljava/lang/CharSequence;
    .end local v29    # "viewportToContentHorizontalOffset":I
    .end local v30    # "viewportToContentVerticalOffset":I
    .end local v31    # "window":[I
    :cond_37a
    const/4 v13, 0x6

    goto/16 :goto_2e

    .line 587
    .restart local v2    # "actionBarHeight":I
    .restart local v4    # "endLine":I
    .restart local v5    # "endLineBottom":I
    .restart local v6    # "endLineTop":I
    .restart local v7    # "endX":I
    .restart local v8    # "fullScreenHeight":I
    .restart local v9    # "handlerHeight":I
    .restart local v10    # "isStatusBarVisible":Z
    .restart local v11    # "maxWidth":I
    .restart local v16    # "parentViewPositionX":I
    .restart local v17    # "parentViewPositionY":I
    .restart local v18    # "screen":[I
    .restart local v19    # "screenBottom":I
    .restart local v20    # "screenHeight":I
    .restart local v21    # "screenTop":I
    .restart local v22    # "screenWidth":I
    .restart local v24    # "startLine":I
    .restart local v25    # "startLineBottom":I
    .restart local v26    # "startLineTop":I
    .restart local v27    # "startX":I
    .restart local v28    # "text":Ljava/lang/CharSequence;
    .restart local v29    # "viewportToContentHorizontalOffset":I
    .restart local v30    # "viewportToContentVerticalOffset":I
    .restart local v31    # "window":[I
    :catch_37d
    move-exception v3

    .line 588
    .local v3, "e":Landroid/os/RemoteException;
    const-string v32, "MultiSelectPopupWindow"

    const-string v33, "Remote exception while to check isStatusBarVisible"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c2

    .line 616
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_387
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3b3

    .line 617
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthPortrait:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    goto/16 :goto_261

    .line 619
    :cond_3b3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthLandscape:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    goto/16 :goto_261

    .line 626
    :cond_3c1
    const/16 v32, 0x0

    const/16 v33, 0x0

    aget v33, v31, v33

    div-int/lit8 v34, v11, 0x2

    add-int v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0x2

    sub-int v33, v33, v34

    aput v33, p1, v32

    goto/16 :goto_279

    .line 632
    :cond_3d9
    const/16 v32, 0x0

    aget v32, p1, v32

    add-int v32, v32, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    move/from16 v1, v22

    if-le v0, v1, :cond_29f

    .line 633
    const/16 v32, 0x0

    aget v33, p1, v32

    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    sub-int v34, v34, v22

    sub-int v33, v33, v34

    aput v33, p1, v32

    goto/16 :goto_29f

    .line 642
    :cond_407
    const/16 v32, 0x0

    aget v32, p1, v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v33, v0

    add-int v32, v32, v33

    add-int v32, v32, v16

    move/from16 v0, v32

    move/from16 v1, v22

    if-le v0, v1, :cond_2d7

    .line 643
    const/16 v32, 0x0

    aget v33, p1, v32

    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    sub-int v34, v34, v22

    sub-int v33, v33, v34

    aput v33, p1, v32

    goto/16 :goto_2d7

    :cond_435
    move v14, v5

    .line 653
    goto/16 :goto_319

    .line 661
    .restart local v14    # "middlePosition":I
    :cond_438
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentViewHeight:I

    move/from16 v33, v0

    sub-int v33, v19, v33

    aput v33, p1, v32

    goto/16 :goto_345
.end method

.method private getTextOffset()I
    .registers 4

    .prologue
    .line 525
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .line 526
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_11

    .line 527
    const-string v1, "MultiSelectPopupWindow"

    const-string v2, "getTextFormultiSelection() text is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_11
    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private initContentView()V
    .registers 12

    .prologue
    const v10, 0x109012b

    const v9, 0x1080ac5

    const v8, 0x1020050

    const v7, 0x102004f

    const/4 v6, 0x0

    .line 233
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 234
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 236
    .local v2, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 237
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 238
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 241
    iput-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 242
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    const v3, 0x109012c

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 244
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    .line 249
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    const v4, 0x1020051

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 251
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllImageView:Landroid/widget/ImageView;

    .line 253
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllImageView:Landroid/widget/ImageView;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080ac8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    .line 255
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SELECTALL_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 258
    const v3, 0x109012a

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    .line 259
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView1:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 262
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    .line 263
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    const v4, 0x1020052

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 265
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyImageView:Landroid/widget/ImageView;

    .line 267
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyImageView:Landroid/widget/ImageView;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080ac6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    .line 269
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->COPY_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 272
    const v3, 0x109012a

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    .line 273
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 274
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    .line 278
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    const v4, 0x1020055

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 280
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    .line 282
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080ac9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareTextView:Landroid/widget/TextView;

    .line 284
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SHARE_VIA_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 286
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 288
    const v3, 0x109012a

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    .line 289
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 292
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    .line 293
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    const v4, 0x1020053

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 295
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryImageView:Landroid/widget/ImageView;

    .line 297
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryImageView:Landroid/widget/ImageView;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080ac7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    .line 299
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->DICTIONARY_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 302
    const v3, 0x109012a

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    .line 303
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 304
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    .line 308
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    const v4, 0x1020054

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 310
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateImageView:Landroid/widget/ImageView;

    .line 312
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateImageView:Landroid/widget/ImageView;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080aca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    .line 314
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->TRANSLATE_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 316
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 318
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 319
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 320
    return-void
.end method

.method private setHeight()V
    .registers 8

    .prologue
    .line 508
    const/4 v0, 0x0

    .line 510
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_1
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Landroid/R$styleable;->ActionBar:[I

    const v5, 0x10102ce

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 512
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mActionBarHeight:I

    .line 513
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHandlerHeight:I

    .line 514
    const/high16 v2, 0x41c80000    # 25.0f

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mStatusbarHeight:I

    .line 515
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_4b} :catch_4c

    .line 519
    :goto_4b
    return-void

    .line 516
    :catch_4c
    move-exception v1

    .line 517
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4b
.end method

.method private setPopupWindowWidth(I)V
    .registers 6
    .param p1, "menuLimit"    # I

    .prologue
    .line 493
    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    if-ge v0, p1, :cond_1a

    .line 494
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerWidth:I

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mItemWidth:I

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 502
    :goto_19
    return-void

    .line 496
    :cond_1a
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    .line 497
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthPortrait:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_19

    .line 499
    :cond_37
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWidthLandscape:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_19
.end method

.method private updateMultiSelectQuickPopupPosition()V
    .registers 11

    .prologue
    const/4 v5, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 416
    new-array v4, v5, [I

    .line 417
    .local v4, "window":[I
    new-array v3, v5, [I

    .line 418
    .local v3, "screen":[I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 419
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 420
    aget v5, v3, v9

    aget v6, v4, v9

    sub-int v1, v5, v6

    .line 421
    .local v1, "gapX":I
    aget v5, v3, v7

    aget v6, v4, v7

    sub-int v2, v5, v6

    .line 423
    .local v2, "gapY":I
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_67

    .line 424
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_5d

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eq v5, v6, :cond_5d

    .line 425
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 426
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 428
    :cond_53
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    add-int/2addr v5, v1

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    .line 429
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    .line 431
    :cond_5d
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v6, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 453
    :goto_66
    return-void

    .line 433
    :cond_67
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_b3

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eq v5, v6, :cond_b3

    .line 434
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 435
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v5

    if-eqz v5, :cond_97

    .line 436
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 439
    :cond_97
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    add-int/2addr v5, v1

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    .line 440
    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    .line 441
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_66

    .line 444
    :cond_b3
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 446
    :try_start_b8
    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionX:I

    iget v9, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPositionY:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_c6
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_b8 .. :try_end_c6} :catch_c7

    goto :goto_66

    .line 447
    :catch_c7
    move-exception v0

    .line 448
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    .line 449
    const-string v5, "MultiSelectPopupWindow"

    const-string/jumbo v6, "showAtLocation occur BadTokenException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66
.end method


# virtual methods
.method public hide()V
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 479
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->access$400(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->removeSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;)V

    .line 480
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected measureContent()V
    .registers 6

    .prologue
    const/high16 v4, -0x80000000

    .line 397
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 398
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->measure(II)V

    .line 399
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 471
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onMultiSelectMenuItem(I)Z

    .line 472
    return-void
.end method

.method public refreshResource()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 182
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SELECTALL_DESCRIPTION:Ljava/lang/CharSequence;

    .line 183
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->COPY_DESCRIPTION:Ljava/lang/CharSequence;

    .line 184
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->DICTIONARY_DESCRIPTION:Ljava/lang/CharSequence;

    .line 185
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->TRANSLATE_DESCRIPTION:Ljava/lang/CharSequence;

    .line 186
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SHARE_VIA_DESCRIPTION:Ljava/lang/CharSequence;

    .line 188
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SELECTALL_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->COPY_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->DICTIONARY_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->TRANSLATE_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->SHARE_VIA_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    .line 195
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    .line 196
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    .line 197
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    .line 198
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    .line 199
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->setHeight()V

    .line 200
    return-void
.end method

.method public relocateMultiSelectQuickPopupWindow(I)V
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 459
    if-ltz p1, :cond_f

    .line 460
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->computeLocalPosition()V

    .line 461
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getMenuLimit()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->setPopupWindowWidth(I)V

    .line 462
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->updateMultiSelectQuickPopupPosition()V

    .line 464
    :cond_f
    return-void
.end method

.method public show()V
    .registers 9

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 326
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->refreshResource()V

    .line 328
    const/4 v0, 0x2

    .line 330
    .local v0, "menuItemCount":I
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 331
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 332
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 333
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView4:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isShareViaEnable()Z
    invoke-static {v4}, Landroid/widget/MultiSelectPopupWindow;->access$100(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 338
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mShareLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 339
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView2:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    add-int/lit8 v0, v0, 0x1

    .line 343
    :cond_39
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isDictionaryEnable()Z
    invoke-static {v4}, Landroid/widget/MultiSelectPopupWindow;->access$200(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 344
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDictionaryLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 345
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    add-int/lit8 v0, v0, 0x1

    .line 349
    :cond_4d
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isTranslatorEnabled()Z
    invoke-static {v4}, Landroid/widget/MultiSelectPopupWindow;->access$300(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 350
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mTranslateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 351
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mDividerImageView3:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    add-int/lit8 v0, v0, 0x1

    .line 355
    :cond_61
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v7, v7}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 357
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getMenuLimit()I

    move-result v2

    .line 358
    .local v2, "menuLimit":I
    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mMenuItemCount:I

    .line 359
    invoke-direct {p0, v2}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->setPopupWindowWidth(I)V

    .line 361
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->computeLocalPosition()V

    .line 362
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    .line 363
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->updateMultiSelectQuickPopupPosition()V

    .line 364
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v4}, Landroid/widget/MultiSelectPopupWindow;->access$400(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p0, v5}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->addSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;Z)V

    .line 366
    if-le v0, v2, :cond_ad

    .line 367
    sub-int v1, v0, v2

    .line 368
    .local v1, "menuItemDiff":I
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-int/lit8 v6, v1, 0x64

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5, v7}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 369
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow$1;

    invoke-direct {v4, p0, v1}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow$1;-><init>(Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 389
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 391
    .end local v1    # "menuItemDiff":I
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_ad
    return-void
.end method

.method public updatePosition(IIZZ)V
    .registers 7
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 685
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->getTextOffset()I

    move-result v1

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/MultiSelectPopupWindow;->access$600(Landroid/widget/MultiSelectPopupWindow;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 686
    if-eqz p4, :cond_17

    .line 687
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->computeLocalPosition()V

    .line 688
    :cond_17
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->updateMultiSelectQuickPopupPosition()V

    .line 690
    :cond_1a
    return-void
.end method
