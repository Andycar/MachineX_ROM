.class Landroid/widget/Editor$NewActionPopupWindow;
.super Landroid/widget/Editor$NewPinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewActionPopupWindow"
.end annotation


# static fields
.field private static final TW_POPUP_DIVIDER_LAYOUT:I = 0x109013f

.field private static final TW_POPUP_HORIZONTAL_SCROLL_LAYOUT:I = 0x1090140

.field private static final TW_POPUP_TEXT_LAYOUT:I = 0x1090141


# instance fields
.field private mActionBarHeight:I

.field private mClipboardDivider:Landroid/widget/ImageView;

.field private mClipboardTextView:Landroid/widget/TextView;

.field private mContentViewHeight:I

.field private mContentViewWidth:I

.field private mCopyDivider:Landroid/widget/ImageView;

.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutDivider:Landroid/widget/ImageView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mDictionaryDivider:Landroid/widget/ImageView;

.field private mDictionaryTextView:Landroid/widget/TextView;

.field private mHandlerHeight:I

.field private mPasteDivider:Landroid/widget/ImageView;

.field private mPasteTextView:Landroid/widget/TextView;

.field private mSelectAllDivider:Landroid/widget/ImageView;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mShareDivider:Landroid/widget/ImageView;

.field private mShareTextView:Landroid/widget/TextView;

.field private mStatusbarHeight:I

.field private mTranslateTextView:Landroid/widget/TextView;

.field private mWebSearchDivider:Landroid/widget/ImageView;

.field private mWebSearchTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .registers 2

    .prologue
    .line 3634
    iput-object p1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$NewPinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 3634
    invoke-direct {p0, p1}, Landroid/widget/Editor$NewActionPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method protected createPopupWindow()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 3671
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105010a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mItemWidth:I

    .line 3672
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080b01

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3674
    .local v0, "bgRes":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3675
    .local v1, "bgResPadding":Landroid/graphics/Rect;
    if-eqz v1, :cond_9b

    .line 3676
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3677
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupBgPaddingWidth:I

    .line 3678
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupBgPaddingHeight:I

    .line 3679
    const/4 v1, 0x0

    .line 3684
    :goto_47
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080aff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerWidth:I

    .line 3685
    iget v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mItemWidth:I

    mul-int/lit8 v2, v2, 0x4

    iget v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerWidth:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidthPortrait:I

    .line 3686
    iget v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mItemWidth:I

    mul-int/lit8 v2, v2, 0x6

    iget v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerWidth:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidthLandscape:I

    .line 3688
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3689
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3690
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3692
    return-void

    .line 3681
    :cond_9b
    iput v5, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupBgPaddingWidth:I

    goto :goto_47
.end method

.method protected getNewActionPopupPosition([I)V
    .registers 43
    .param p1, "position"    # [I

    .prologue
    .line 3987
    if-nez p1, :cond_a

    .line 3988
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 p1, v0

    .line 3991
    :cond_a
    const/16 v18, 0x1

    .line 3992
    .local v18, "menuItemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    .line 3993
    .local v5, "canCut":Z
    if-eqz v5, :cond_1e

    add-int/lit8 v18, v18, 0x1

    .line 3994
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->canCopy()Z

    move-result v4

    .line 3995
    .local v4, "canCopy":Z
    if-eqz v4, :cond_30

    add-int/lit8 v18, v18, 0x1

    .line 3996
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->canPaste()Z

    move-result v7

    .line 3997
    .local v7, "canPaste":Z
    if-eqz v7, :cond_42

    add-int/lit8 v18, v18, 0x1

    .line 3998
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v37

    if-eqz v37, :cond_47b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, v37

    instance-of v0, v0, Landroid/text/Editable;

    move/from16 v37, v0

    if-eqz v37, :cond_47b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v37

    if-eqz v37, :cond_47b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v37

    if-lez v37, :cond_47b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Landroid/widget/Editor;->mClipboardEnable:Z

    move/from16 v37, v0

    if-eqz v37, :cond_47b

    const/4 v3, 0x1

    .line 4001
    .local v3, "canClipboard":Z
    :goto_97
    if-eqz v3, :cond_9b

    add-int/lit8 v18, v18, 0x1

    .line 4002
    :cond_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->canTranslate()Z

    move-result v37

    if-eqz v37, :cond_47e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    move/from16 v37, v0

    if-eqz v37, :cond_47e

    const/4 v8, 0x1

    .line 4003
    .local v8, "canTranslate":Z
    :goto_ba
    if-eqz v8, :cond_be

    add-int/lit8 v18, v18, 0x1

    .line 4004
    :cond_be
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Landroid/widget/Editor;->mShareEnable:Z

    move/from16 v37, v0

    if-eqz v37, :cond_ce

    add-int/lit8 v18, v18, 0x1

    .line 4005
    :cond_ce
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-boolean v0, v0, Landroid/widget/Editor;->mWebSearchEnable:Z

    move/from16 v37, v0

    if-eqz v37, :cond_de

    add-int/lit8 v18, v18, 0x1

    .line 4006
    :cond_de
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # invokes: Landroid/widget/Editor;->isDictionaryEnabled()Z
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v6

    .line 4007
    .local v6, "canDictionary":Z
    if-eqz v6, :cond_ec

    add-int/lit8 v18, v18, 0x1

    .line 4009
    :cond_ec
    const/16 v19, 0x0

    .line 4010
    .local v19, "menuLimit":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v37

    move-object/from16 v0, v37

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_481

    .line 4011
    const/16 v19, 0x4

    .line 4016
    :goto_114
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .line 4017
    .local v23, "screen":[I
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v36, v0

    .line 4018
    .local v36, "window":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 4019
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 4020
    const/16 v37, 0x0

    aget v37, v23, v37

    const/16 v38, 0x0

    aget v38, v36, v38

    sub-int v21, v37, v38

    .line 4021
    .local v21, "parentViewPositionX":I
    const/16 v37, 0x1

    aget v37, v23, v37

    const/16 v38, 0x1

    aget v38, v36, v38

    sub-int v22, v37, v38

    .line 4022
    .local v22, "parentViewPositionY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v35

    .line 4023
    .local v35, "viewportToContentVerticalOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v34

    .line 4024
    .local v34, "viewportToContentHorizontalOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v37

    move-object/from16 v0, v37

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    .line 4025
    .local v27, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v37

    move-object/from16 v0, v37

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    .line 4026
    .local v25, "screenHeight":I
    move/from16 v14, v25

    .line 4027
    .local v14, "fullScreenHeight":I
    const/16 v26, 0x0

    .line 4028
    .local v26, "screenTop":I
    move/from16 v24, v25

    .line 4029
    .local v24, "screenBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v29

    .line 4030
    .local v29, "selStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v28

    .line 4031
    .local v28, "selEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v30

    .line 4032
    .local v30, "startLine":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 4033
    .local v10, "endLine":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v37

    const/16 v38, 0x1

    aget v38, v36, v38

    add-int v37, v37, v38

    add-int v32, v37, v35

    .line 4034
    .local v32, "startLineTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v37

    const/16 v38, 0x1

    aget v38, v36, v38

    add-int v37, v37, v38

    add-int v31, v37, v35

    .line 4035
    .local v31, "startLineBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v37

    const/16 v38, 0x1

    aget v38, v36, v38

    add-int v37, v37, v38

    add-int v12, v37, v35

    .line 4036
    .local v12, "endLineTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v37

    const/16 v38, 0x1

    aget v38, v36, v38

    add-int v37, v37, v38

    add-int v11, v37, v35

    .line 4037
    .local v11, "endLineBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v37

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    const/16 v38, 0x0

    aget v38, v36, v38

    add-int v37, v37, v38

    add-int v33, v37, v34

    .line 4038
    .local v33, "startX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v37

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    const/16 v38, 0x0

    aget v38, v36, v38

    add-int v37, v37, v38

    add-int v13, v37, v34

    .line 4039
    .local v13, "endX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/text/Layout;->getWidth()I

    move-result v17

    .line 4040
    .local v17, "maxWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$NewActionPopupWindow;->mActionBarHeight:I

    .line 4041
    .local v2, "actionBarHeight":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    .line 4042
    .local v15, "handlerHeight":I
    const/16 v16, 0x1

    .line 4043
    .local v16, "isStatusBarVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupBgPaddingHeight:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    .line 4046
    :try_start_2ea
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Landroid/view/IWindowManager;->isStatusBarVisible()Z
    :try_end_2f1
    .catch Landroid/os/RemoteException; {:try_start_2ea .. :try_end_2f1} :catch_485

    move-result v16

    .line 4050
    :goto_2f2
    if-nez v16, :cond_2fc

    .line 4051
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    .line 4054
    :cond_2fc
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_48f

    .line 4055
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerWidth:I

    move/from16 v37, v0

    add-int/lit8 v38, v18, -0x1

    mul-int v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mItemWidth:I

    move/from16 v38, v0

    mul-int v38, v38, v18

    add-int v37, v37, v38

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupBgPaddingWidth:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    .line 4064
    :goto_324
    move/from16 v0, v30

    if-ne v0, v10, :cond_4cf

    .line 4065
    const/16 v37, 0x0

    sub-int v38, v13, v33

    div-int/lit8 v38, v38, 0x2

    add-int v38, v38, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v39, v0

    div-int/lit8 v39, v39, 0x2

    sub-int v38, v38, v39

    aput v38, p1, v37

    .line 4070
    :goto_33c
    const/16 v37, 0x0

    aget v37, p1, v37

    if-gez v37, :cond_515

    .line 4071
    const/16 v37, 0x0

    aget v37, p1, v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->abs(I)I

    move-result v37

    move/from16 v0, v21

    move/from16 v1, v37

    if-ge v0, v1, :cond_4e7

    .line 4072
    const/16 v37, 0x0

    aget v38, p1, v37

    const/16 v39, 0x0

    aget v39, p1, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Math;->abs(I)I

    move-result v39

    sub-int v39, v39, v21

    add-int v38, v38, v39

    aput v38, p1, v37

    .line 4077
    :cond_362
    :goto_362
    const/16 v37, 0x0

    aget v37, p1, v37

    if-gez v37, :cond_39a

    .line 4078
    const/16 v37, 0x0

    const/16 v38, 0x0

    aput v38, p1, v37

    .line 4079
    const/16 v37, 0x0

    aget v37, p1, v37

    add-int v37, v37, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    move/from16 v1, v27

    if-le v0, v1, :cond_39a

    .line 4080
    const/16 v37, 0x0

    aget v38, p1, v37

    const/16 v39, 0x0

    aget v39, p1, v39

    add-int v39, v39, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v40, v0

    add-int v39, v39, v40

    sub-int v39, v39, v27

    sub-int v38, v38, v39

    aput v38, p1, v37

    .line 4087
    :cond_39a
    :goto_39a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v37

    if-eqz v37, :cond_47a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v37

    if-eqz v37, :cond_47a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v37

    if-eqz v37, :cond_47a

    .line 4088
    const/16 v37, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v38, v0

    sub-int v38, v32, v38

    aput v38, p1, v37

    .line 4090
    const/16 v37, 0x1

    aget v37, p1, v37

    add-int v37, v37, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    move/from16 v38, v0

    add-int v38, v38, v2

    add-int v38, v38, v26

    move/from16 v0, v37

    move/from16 v1, v38

    if-gt v0, v1, :cond_3e6

    .line 4091
    const/16 v37, 0x1

    add-int v38, v11, v15

    aput v38, p1, v37

    .line 4094
    :cond_3e6
    const/16 v37, 0x1

    aget v37, p1, v37

    add-int v37, v37, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    move/from16 v1, v24

    if-le v0, v1, :cond_42c

    .line 4095
    move/from16 v0, v24

    if-le v11, v0, :cond_543

    move/from16 v20, v24

    .line 4096
    .local v20, "middlePosition":I
    :goto_400
    if-gez v31, :cond_404

    .line 4097
    const/16 v31, 0x0

    .line 4099
    :cond_404
    add-int v37, v31, v15

    sub-int v37, v20, v37

    div-int/lit8 v20, v37, 0x2

    .line 4100
    add-int v37, v31, v15

    sub-int v37, v11, v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_547

    .line 4101
    const/16 v37, 0x1

    add-int v38, v31, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v39, v0

    div-int/lit8 v39, v39, 0x2

    sub-int v39, v20, v39

    add-int v38, v38, v39

    aput v38, p1, v37

    .line 4107
    .end local v20    # "middlePosition":I
    :cond_42c
    :goto_42c
    const/16 v37, 0x1

    aget v37, p1, v37

    add-int v37, v37, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    move/from16 v1, v24

    if-gt v0, v1, :cond_44c

    const/16 v37, 0x1

    aget v37, p1, v37

    add-int v37, v37, v22

    move/from16 v0, v37

    move/from16 v1, v26

    if-ge v0, v1, :cond_460

    .line 4108
    :cond_44c
    const/16 v37, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v38, v0

    sub-int v38, v24, v38

    aput v38, p1, v37

    .line 4109
    const/16 v37, 0x1

    aget v38, p1, v37

    sub-int v38, v38, v26

    aput v38, p1, v37

    .line 4113
    :cond_460
    const/16 v37, 0x1

    aget v37, p1, v37

    add-int v37, v37, v22

    move/from16 v0, v25

    move/from16 v1, v37

    if-gt v0, v1, :cond_47a

    .line 4114
    const/16 v37, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v38, v0

    sub-int v38, v25, v38

    sub-int v38, v38, v22

    aput v38, p1, v37

    .line 4117
    :cond_47a
    return-void

    .line 3998
    .end local v2    # "actionBarHeight":I
    .end local v3    # "canClipboard":Z
    .end local v6    # "canDictionary":Z
    .end local v8    # "canTranslate":Z
    .end local v10    # "endLine":I
    .end local v11    # "endLineBottom":I
    .end local v12    # "endLineTop":I
    .end local v13    # "endX":I
    .end local v14    # "fullScreenHeight":I
    .end local v15    # "handlerHeight":I
    .end local v16    # "isStatusBarVisible":Z
    .end local v17    # "maxWidth":I
    .end local v19    # "menuLimit":I
    .end local v21    # "parentViewPositionX":I
    .end local v22    # "parentViewPositionY":I
    .end local v23    # "screen":[I
    .end local v24    # "screenBottom":I
    .end local v25    # "screenHeight":I
    .end local v26    # "screenTop":I
    .end local v27    # "screenWidth":I
    .end local v28    # "selEnd":I
    .end local v29    # "selStart":I
    .end local v30    # "startLine":I
    .end local v31    # "startLineBottom":I
    .end local v32    # "startLineTop":I
    .end local v33    # "startX":I
    .end local v34    # "viewportToContentHorizontalOffset":I
    .end local v35    # "viewportToContentVerticalOffset":I
    .end local v36    # "window":[I
    :cond_47b
    const/4 v3, 0x0

    goto/16 :goto_97

    .line 4002
    .restart local v3    # "canClipboard":Z
    :cond_47e
    const/4 v8, 0x0

    goto/16 :goto_ba

    .line 4013
    .restart local v6    # "canDictionary":Z
    .restart local v8    # "canTranslate":Z
    .restart local v19    # "menuLimit":I
    :cond_481
    const/16 v19, 0x6

    goto/16 :goto_114

    .line 4047
    .restart local v2    # "actionBarHeight":I
    .restart local v10    # "endLine":I
    .restart local v11    # "endLineBottom":I
    .restart local v12    # "endLineTop":I
    .restart local v13    # "endX":I
    .restart local v14    # "fullScreenHeight":I
    .restart local v15    # "handlerHeight":I
    .restart local v16    # "isStatusBarVisible":Z
    .restart local v17    # "maxWidth":I
    .restart local v21    # "parentViewPositionX":I
    .restart local v22    # "parentViewPositionY":I
    .restart local v23    # "screen":[I
    .restart local v24    # "screenBottom":I
    .restart local v25    # "screenHeight":I
    .restart local v26    # "screenTop":I
    .restart local v27    # "screenWidth":I
    .restart local v28    # "selEnd":I
    .restart local v29    # "selStart":I
    .restart local v30    # "startLine":I
    .restart local v31    # "startLineBottom":I
    .restart local v32    # "startLineTop":I
    .restart local v33    # "startX":I
    .restart local v34    # "viewportToContentHorizontalOffset":I
    .restart local v35    # "viewportToContentVerticalOffset":I
    .restart local v36    # "window":[I
    :catch_485
    move-exception v9

    .line 4048
    .local v9, "e":Landroid/os/RemoteException;
    const-string v37, "Editor"

    const-string v38, "Remote exception while to check isStatusBarVisible"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f2

    .line 4057
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_48f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v37, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v37 .. v37}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v37

    move-object/from16 v0, v37

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_4c1

    .line 4058
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidthPortrait:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    goto/16 :goto_324

    .line 4060
    :cond_4c1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidthLandscape:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    goto/16 :goto_324

    .line 4067
    :cond_4cf
    const/16 v37, 0x0

    const/16 v38, 0x0

    aget v38, v36, v38

    div-int/lit8 v39, v17, 0x2

    add-int v38, v38, v39

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v39, v0

    div-int/lit8 v39, v39, 0x2

    sub-int v38, v38, v39

    aput v38, p1, v37

    goto/16 :goto_33c

    .line 4073
    :cond_4e7
    const/16 v37, 0x0

    aget v37, p1, v37

    add-int v37, v37, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v0, v37

    move/from16 v1, v27

    if-le v0, v1, :cond_362

    .line 4074
    const/16 v37, 0x0

    aget v38, p1, v37

    const/16 v39, 0x0

    aget v39, p1, v39

    add-int v39, v39, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v40, v0

    add-int v39, v39, v40

    sub-int v39, v39, v27

    sub-int v38, v38, v39

    aput v38, p1, v37

    goto/16 :goto_362

    .line 4083
    :cond_515
    const/16 v37, 0x0

    aget v37, p1, v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v38, v0

    add-int v37, v37, v38

    add-int v37, v37, v21

    move/from16 v0, v37

    move/from16 v1, v27

    if-le v0, v1, :cond_39a

    .line 4084
    const/16 v37, 0x0

    aget v38, p1, v37

    const/16 v39, 0x0

    aget v39, p1, v39

    add-int v39, v39, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewWidth:I

    move/from16 v40, v0

    add-int v39, v39, v40

    sub-int v39, v39, v27

    sub-int v38, v38, v39

    aput v38, p1, v37

    goto/16 :goto_39a

    :cond_543
    move/from16 v20, v11

    .line 4095
    goto/16 :goto_400

    .line 4103
    .restart local v20    # "middlePosition":I
    :cond_547
    const/16 v37, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentViewHeight:I

    move/from16 v38, v0

    sub-int v38, v24, v38

    aput v38, p1, v37

    goto/16 :goto_42c
.end method

.method protected getTextOffset()I
    .registers 3

    .prologue
    .line 3964
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected initContentView()V
    .registers 24

    .prologue
    .line 3696
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v9, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3699
    .local v9, "dividerImageViewLayout":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "layout_inflater"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 3702
    .local v10, "inflater":Landroid/view/LayoutInflater;
    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mItemWidth:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v15, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3704
    .local v15, "textLayout":Landroid/view/ViewGroup$LayoutParams;
    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3707
    .local v18, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3708
    .local v11, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3709
    const/16 v19, 0x11

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 3710
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 3711
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3713
    const v19, 0x1090140

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 3714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3717
    const v19, 0x1090141

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    .line 3718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x104000d

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 3719
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080b04

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 3721
    .local v13, "selectAllDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3722
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3726
    const v19, 0x109013f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllDivider:Landroid/widget/ImageView;

    .line 3727
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllDivider:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3728
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllDivider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3732
    const v19, 0x1090141

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    .line 3733
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x1040003

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 3734
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3735
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080afd

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 3736
    .local v7, "cutDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3737
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3740
    const v19, 0x109013f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mCutDivider:Landroid/widget/ImageView;

    .line 3741
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutDivider:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3742
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCutDivider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3745
    const v19, 0x1090141

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    .line 3746
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x1040001

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 3747
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3748
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080afc

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 3749
    .local v6, "copyDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3750
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3753
    const v19, 0x109013f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mCopyDivider:Landroid/widget/ImageView;

    .line 3754
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyDivider:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3755
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyDivider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3758
    const v19, 0x1090141

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 3759
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x104000b

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 3760
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080b03

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 3762
    .local v12, "pasteDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3763
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3766
    const v19, 0x109013f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mPasteDivider:Landroid/widget/ImageView;

    .line 3767
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteDivider:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteDivider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3770
    const v19, 0x1090141

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    .line 3771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x104072e

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 3772
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3773
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080afb

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 3774
    .local v5, "clipboardDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3775
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3777
    const v19, 0x109013f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardDivider:Landroid/widget/ImageView;

    .line 3778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardDivider:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardDivider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3781
    const v19, 0x1090141

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    .line 3782
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x10408b6

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 3783
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3784
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080b05

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 3785
    .local v14, "shareDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3786
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3788
    const v19, 0x109013f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mShareDivider:Landroid/widget/ImageView;

    .line 3789
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareDivider:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3790
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mShareDivider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3792
    const v19, 0x1090141

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    .line 3793
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x10408b5

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 3794
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3795
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080afe

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3796
    .local v8, "dictionaryDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3797
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3799
    const v19, 0x109013f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryDivider:Landroid/widget/ImageView;

    .line 3800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryDivider:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3801
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryDivider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3803
    const v19, 0x1090141

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    .line 3804
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x104056f

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 3805
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3806
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080b07

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 3807
    .local v17, "webSearchDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3808
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3810
    const v19, 0x109013f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchDivider:Landroid/widget/ImageView;

    .line 3811
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchDivider:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3812
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchDivider:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3814
    const v19, 0x1090141

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    .line 3815
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3816
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x10408b7

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 3817
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3818
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080b06

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 3819
    .local v16, "translateDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3820
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3822
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 3823
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setLayoutDirection(I)V

    .line 3824
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3906
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_11

    .line 3907
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x102001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3932
    :cond_10
    :goto_10
    return-void

    .line 3908
    :cond_11
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_31

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3909
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3910
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto :goto_10

    .line 3911
    :cond_31
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_51

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 3912
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020021

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3913
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto :goto_10

    .line 3914
    :cond_51
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_71

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 3915
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3916
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto :goto_10

    .line 3917
    :cond_71
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_82

    .line 3918
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x102004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    goto :goto_10

    .line 3919
    :cond_82
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_a9

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canTranslate()Z

    move-result v0

    if-eqz v0, :cond_a9

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    if-eqz v0, :cond_a9

    .line 3920
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3921
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto/16 :goto_10

    .line 3922
    :cond_a9
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_c4

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mShareEnable:Z

    if-eqz v0, :cond_c4

    .line 3923
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x10204c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3924
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto/16 :goto_10

    .line 3925
    :cond_c4
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_df

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mWebSearchEnable:Z

    if-eqz v0, :cond_df

    .line 3926
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x10204c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3927
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto/16 :goto_10

    .line 3928
    :cond_df
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isDictionaryEnabled()Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3929
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020048

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 3930
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto/16 :goto_10
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3936
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_80

    .line 3959
    :cond_7
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 3938
    :pswitch_9
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3939
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3940
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->removeAllNewActionPopupHider()V

    goto :goto_7

    .line 3946
    :pswitch_2b
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3947
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3948
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3949
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    # getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$200(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    # getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$200(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v0, :cond_7

    .line 3950
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    # getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->access$200(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$NewActionPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_7

    .line 3936
    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_9
    .end packed-switch
.end method

.method protected setHeight()V
    .registers 8

    .prologue
    .line 3969
    const/4 v0, 0x0

    .line 3972
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_1
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Landroid/R$styleable;->ActionBar:[I

    const v5, 0x10102ce

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3975
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mActionBarHeight:I

    .line 3977
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    .line 3978
    const/high16 v2, 0x41c80000    # 25.0f

    iget-object v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    .line 3979
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_53
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_53} :catch_54

    .line 3983
    :goto_53
    return-void

    .line 3980
    :catch_54
    move-exception v1

    .line 3981
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_53
.end method

.method public show()V
    .registers 13

    .prologue
    const/4 v7, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 3828
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    instance-of v10, v10, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v10, :cond_f

    .line 3902
    :goto_e
    return-void

    .line 3832
    :cond_f
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v11, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v11}, Landroid/widget/Editor;->isTranslatorEnabled()Z

    move-result v11

    iput-boolean v11, v10, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    .line 3834
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->canCut()Z

    move-result v2

    .line 3835
    .local v2, "canCut":Z
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    .line 3836
    .local v1, "canCopy":Z
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    .line 3837
    .local v4, "canPaste":Z
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->canTranslate()Z

    move-result v10

    if-eqz v10, :cond_1f7

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v10, v10, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    if-eqz v10, :cond_1f7

    move v6, v7

    .line 3838
    .local v6, "canTranslate":Z
    :goto_4a
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v10

    if-eqz v10, :cond_1fa

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z
    invoke-static {v10}, Landroid/widget/Editor;->access$3200(Landroid/widget/Editor;)Z

    move-result v10

    if-eqz v10, :cond_1fa

    move v5, v7

    .line 3839
    .local v5, "canSuggest":Z
    :goto_5f
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v10}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v10

    if-eqz v10, :cond_1fd

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    instance-of v10, v10, Landroid/text/Editable;

    if-eqz v10, :cond_1fd

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v10

    if-eqz v10, :cond_1fd

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v10

    if-lez v10, :cond_1fd

    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v10, v10, Landroid/widget/Editor;->mClipboardEnable:Z

    if-eqz v10, :cond_1fd

    move v0, v7

    .line 3842
    .local v0, "canClipboard":Z
    :goto_98
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isDictionaryEnabled()Z
    invoke-static {v7}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v3

    .line 3845
    .local v3, "canDictionary":Z
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3846
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    .line 3847
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_b9

    .line 3848
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 3851
    :cond_b9
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mSelectAllDivider:Landroid/widget/ImageView;

    if-eqz v2, :cond_200

    move v7, v8

    :goto_be
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3852
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_203

    move v7, v8

    :goto_c6
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3853
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_da

    .line 3854
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 3857
    :cond_da
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCutDivider:Landroid/widget/ImageView;

    if-eqz v1, :cond_206

    move v7, v8

    :goto_df
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3858
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_209

    move v7, v8

    :goto_e7
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3859
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_fb

    .line 3860
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 3863
    :cond_fb
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mCopyDivider:Landroid/widget/ImageView;

    if-eqz v4, :cond_20c

    move v7, v8

    :goto_100
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3864
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_20f

    move v7, v8

    :goto_108
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3865
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_11c

    .line 3866
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 3869
    :cond_11c
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPasteDivider:Landroid/widget/ImageView;

    if-eqz v0, :cond_212

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v7

    if-eqz v7, :cond_212

    move v7, v8

    :goto_12f
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3870
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_215

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v7

    if-eqz v7, :cond_215

    move v7, v8

    :goto_145
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3871
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_159

    .line 3872
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 3875
    :cond_159
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mClipboardDivider:Landroid/widget/ImageView;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mShareEnable:Z

    if-eqz v7, :cond_218

    move v7, v8

    :goto_162
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3876
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mShareEnable:Z

    if-eqz v7, :cond_21b

    move v7, v8

    :goto_16e
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3877
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_182

    .line 3878
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mShareTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 3881
    :cond_182
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mShareDivider:Landroid/widget/ImageView;

    if-eqz v3, :cond_21e

    move v7, v8

    :goto_187
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3882
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_221

    move v7, v8

    :goto_18f
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3883
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_1a3

    .line 3884
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 3887
    :cond_1a3
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDictionaryDivider:Landroid/widget/ImageView;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mWebSearchEnable:Z

    if-eqz v7, :cond_224

    move v7, v8

    :goto_1ac
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3888
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mWebSearchEnable:Z

    if-eqz v7, :cond_226

    move v7, v8

    :goto_1b8
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3889
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_1cc

    .line 3890
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 3893
    :cond_1cc
    iget-object v10, p0, Landroid/widget/Editor$NewActionPopupWindow;->mWebSearchDivider:Landroid/widget/ImageView;

    if-eqz v6, :cond_228

    move v7, v8

    :goto_1d1
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3894
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_1d9

    move v9, v8

    :cond_1d9
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3895
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    if-eqz v7, :cond_1ed

    .line 3896
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mTranslateTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 3899
    :cond_1ed
    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7, v8, v8}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 3901
    invoke-super {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->show()V

    goto/16 :goto_e

    .end local v0    # "canClipboard":Z
    .end local v3    # "canDictionary":Z
    .end local v5    # "canSuggest":Z
    .end local v6    # "canTranslate":Z
    :cond_1f7
    move v6, v8

    .line 3837
    goto/16 :goto_4a

    .restart local v6    # "canTranslate":Z
    :cond_1fa
    move v5, v8

    .line 3838
    goto/16 :goto_5f

    .restart local v5    # "canSuggest":Z
    :cond_1fd
    move v0, v8

    .line 3839
    goto/16 :goto_98

    .restart local v0    # "canClipboard":Z
    .restart local v3    # "canDictionary":Z
    :cond_200
    move v7, v9

    .line 3851
    goto/16 :goto_be

    :cond_203
    move v7, v9

    .line 3852
    goto/16 :goto_c6

    :cond_206
    move v7, v9

    .line 3857
    goto/16 :goto_df

    :cond_209
    move v7, v9

    .line 3858
    goto/16 :goto_e7

    :cond_20c
    move v7, v9

    .line 3863
    goto/16 :goto_100

    :cond_20f
    move v7, v9

    .line 3864
    goto/16 :goto_108

    :cond_212
    move v7, v9

    .line 3869
    goto/16 :goto_12f

    :cond_215
    move v7, v9

    .line 3870
    goto/16 :goto_145

    :cond_218
    move v7, v9

    .line 3875
    goto/16 :goto_162

    :cond_21b
    move v7, v9

    .line 3876
    goto/16 :goto_16e

    :cond_21e
    move v7, v9

    .line 3881
    goto/16 :goto_187

    :cond_221
    move v7, v9

    .line 3882
    goto/16 :goto_18f

    :cond_224
    move v7, v9

    .line 3887
    goto :goto_1ac

    :cond_226
    move v7, v9

    .line 3888
    goto :goto_1b8

    :cond_228
    move v7, v9

    .line 3893
    goto :goto_1d1
.end method
