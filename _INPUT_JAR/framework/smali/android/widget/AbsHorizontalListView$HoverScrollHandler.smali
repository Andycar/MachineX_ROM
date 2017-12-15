.class Landroid/widget/AbsHorizontalListView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "AbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .registers 2

    .prologue
    .line 8361
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsHorizontalListView;Landroid/widget/AbsHorizontalListView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/AbsHorizontalListView;
    .param p2, "x1"    # Landroid/widget/AbsHorizontalListView$1;

    .prologue
    .line 8361
    invoke-direct {p0, p1}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;-><init>(Landroid/widget/AbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 8363
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_224

    .line 8459
    :cond_5
    :goto_5
    return-void

    .line 8365
    :pswitch_6
    const/4 v5, 0x0

    .line 8367
    .local v5, "offset":I
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v8, v8

    # setter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v7, v8}, Landroid/widget/AbsHorizontalListView;->access$5602(Landroid/widget/AbsHorizontalListView;I)I

    .line 8368
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v8}, Landroid/widget/AbsHorizontalListView;->access$5600(Landroid/widget/AbsHorizontalListView;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionStartTime:I
    invoke-static {v9}, Landroid/widget/AbsHorizontalListView;->access$5800(Landroid/widget/AbsHorizontalListView;)I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit16 v8, v8, 0x3e8

    # setter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7, v8}, Landroid/widget/AbsHorizontalListView;->access$5702(Landroid/widget/AbsHorizontalListView;I)I

    .line 8370
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$5600(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollStartTime:I
    invoke-static {v8}, Landroid/widget/AbsHorizontalListView;->access$5900(Landroid/widget/AbsHorizontalListView;)I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollTimeInterval:I
    invoke-static {v8}, Landroid/widget/AbsHorizontalListView;->access$6000(Landroid/widget/AbsHorizontalListView;)I

    move-result v8

    if-lt v7, v8, :cond_5

    .line 8373
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v7}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v4

    .line 8378
    .local v4, "count":I
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v7, v7, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, v4

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v8, v8, Landroid/widget/AbsHorizontalListView;->mItemCount:I

    if-ge v7, v8, :cond_117

    const/4 v2, 0x1

    .line 8380
    .local v2, "canScrollRight":Z
    :goto_4c
    if-nez v2, :cond_7f

    if-lez v4, :cond_7f

    .line 8381
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8382
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mRight:I
    invoke-static {v8}, Landroid/widget/AbsHorizontalListView;->access$6100(Landroid/widget/AbsHorizontalListView;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v9, v9, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_7e

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v8}, Landroid/widget/AbsHorizontalListView;->getWidth()I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v9, v9, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_11a

    :cond_7e
    const/4 v2, 0x1

    .line 8387
    .end local v3    # "child":Landroid/view/View;
    :cond_7f
    :goto_7f
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v7, v7, Landroid/widget/AbsHorizontalListView;->mFirstPosition:I

    if-lez v7, :cond_11d

    const/4 v1, 0x1

    .line 8389
    .local v1, "canScrollLeft":Z
    :goto_86
    if-nez v1, :cond_a4

    .line 8390
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v7}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_a4

    .line 8391
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8392
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v8, v8, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v7, v8, :cond_120

    const/4 v1, 0x1

    .line 8396
    .end local v3    # "child":Landroid/view/View;
    :cond_a4
    :goto_a4
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$5700(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_122

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$5700(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_122

    .line 8397
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsHorizontalListView;->access$6300(Landroid/widget/AbsHorizontalListView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    # setter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsHorizontalListView;->access$6202(Landroid/widget/AbsHorizontalListView;I)I

    .line 8405
    :goto_c3
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6400(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_167

    .line 8406
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6200(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    mul-int/lit8 v5, v7, -0x1

    .line 8411
    :goto_d4
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v7}, Landroid/widget/AbsHorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x438

    if-lt v7, v8, :cond_e6

    .line 8412
    mul-int/lit8 v5, v5, 0x2

    .line 8415
    :cond_e6
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v8}, Landroid/widget/AbsHorizontalListView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 8419
    if-gez v5, :cond_fa

    if-nez v1, :cond_fe

    :cond_fa
    if-lez v5, :cond_171

    if-eqz v2, :cond_171

    .line 8420
    :cond_fe
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(II)V

    .line 8421
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverHandler:Landroid/widget/AbsHorizontalListView$HoverScrollHandler;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6600(Landroid/widget/AbsHorizontalListView;)Landroid/widget/AbsHorizontalListView$HoverScrollHandler;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_DELAY:I
    invoke-static {v9}, Landroid/widget/AbsHorizontalListView;->access$6500(Landroid/widget/AbsHorizontalListView;)I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 8378
    .end local v1    # "canScrollLeft":Z
    .end local v2    # "canScrollRight":Z
    :cond_117
    const/4 v2, 0x0

    goto/16 :goto_4c

    .line 8382
    .restart local v2    # "canScrollRight":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_11a
    const/4 v2, 0x0

    goto/16 :goto_7f

    .line 8387
    .end local v3    # "child":Landroid/view/View;
    :cond_11d
    const/4 v1, 0x0

    goto/16 :goto_86

    .line 8392
    .restart local v1    # "canScrollLeft":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_120
    const/4 v1, 0x0

    goto :goto_a4

    .line 8398
    .end local v3    # "child":Landroid/view/View;
    :cond_122
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$5700(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_142

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$5700(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    const/4 v8, 0x5

    if-ge v7, v8, :cond_142

    .line 8399
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsHorizontalListView;->access$6300(Landroid/widget/AbsHorizontalListView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    # setter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsHorizontalListView;->access$6202(Landroid/widget/AbsHorizontalListView;I)I

    goto :goto_c3

    .line 8400
    :cond_142
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$5700(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    const/4 v8, 0x5

    if-lt v7, v8, :cond_15a

    .line 8401
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsHorizontalListView;->access$6300(Landroid/widget/AbsHorizontalListView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x6

    # setter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsHorizontalListView;->access$6202(Landroid/widget/AbsHorizontalListView;I)I

    goto/16 :goto_c3

    .line 8403
    :cond_15a
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsHorizontalListView;->access$6300(Landroid/widget/AbsHorizontalListView;)I

    move-result v8

    # setter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsHorizontalListView;->access$6202(Landroid/widget/AbsHorizontalListView;I)I

    goto/16 :goto_c3

    .line 8408
    :cond_167
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollSpeed:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6200(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    mul-int/lit8 v5, v7, 0x1

    goto/16 :goto_d4

    .line 8424
    :cond_171
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v7}, Landroid/widget/AbsHorizontalListView;->getOverScrollMode()I

    move-result v6

    .line 8425
    .local v6, "overscrollMode":I
    if-eqz v6, :cond_184

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1f6

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # invokes: Landroid/widget/AbsHorizontalListView;->contentFits()Z
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2500(Landroid/widget/AbsHorizontalListView;)Z

    move-result v7

    if-nez v7, :cond_1f6

    :cond_184
    const/4 v0, 0x1

    .line 8428
    .local v0, "canOverscroll":Z
    :goto_185
    if-eqz v0, :cond_1e4

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6700(Landroid/widget/AbsHorizontalListView;)Z

    move-result v7

    if-nez v7, :cond_1e4

    .line 8429
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6400(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1f8

    .line 8430
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2600(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 8431
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2700(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1b9

    .line 8432
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2700(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 8441
    :cond_1b9
    :goto_1b9
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2600(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    if-eqz v7, :cond_1de

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2600(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_1d9

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2700(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1de

    .line 8443
    :cond_1d9
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v7}, Landroid/widget/AbsHorizontalListView;->invalidate()V

    .line 8446
    :cond_1de
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v8, 0x1

    # setter for: Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z
    invoke-static {v7, v8}, Landroid/widget/AbsHorizontalListView;->access$6702(Landroid/widget/AbsHorizontalListView;Z)Z

    .line 8449
    :cond_1e4
    if-nez v0, :cond_5

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6700(Landroid/widget/AbsHorizontalListView;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 8450
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v8, 0x1

    # setter for: Landroid/widget/AbsHorizontalListView;->mIsHoverOverscrolled:Z
    invoke-static {v7, v8}, Landroid/widget/AbsHorizontalListView;->access$6702(Landroid/widget/AbsHorizontalListView;Z)Z

    goto/16 :goto_5

    .line 8425
    .end local v0    # "canOverscroll":Z
    :cond_1f6
    const/4 v0, 0x0

    goto :goto_185

    .line 8434
    .restart local v0    # "canOverscroll":Z
    :cond_1f8
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$6400(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1b9

    .line 8435
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2700(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 8436
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2600(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1b9

    .line 8437
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$HoverScrollHandler;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsHorizontalListView;->access$2600(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1b9

    .line 8363
    nop

    :pswitch_data_224
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
