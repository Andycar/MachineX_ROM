.class public Landroid/widget/HorizontalListView;
.super Landroid/widget/AbsHorizontalListView;
.source "HorizontalListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HorizontalListView$ArrowScrollFocusResult;,
        Landroid/widget/HorizontalListView$FocusSelector;,
        Landroid/widget/HorizontalListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Landroid/widget/HorizontalListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 148
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 114
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 128
    iput-boolean v9, p0, Landroid/widget/HorizontalListView;->mAreAllItemsSelectable:Z

    .line 130
    iput-boolean v8, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    .line 133
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 138
    new-instance v6, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;-><init>(Landroid/widget/HorizontalListView$1;)V

    iput-object v6, p0, Landroid/widget/HorizontalListView;->mArrowScrollFocusResult:Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    .line 154
    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 157
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 159
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_3b

    .line 160
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    :cond_3b
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 165
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_44

    .line 167
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :cond_44
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 172
    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_4e

    .line 173
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 176
    :cond_4e
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 178
    .local v4, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_58

    .line 179
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 183
    :cond_58
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 185
    .local v2, "dividerHeight":I
    if-eqz v2, :cond_62

    .line 186
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->setDividerHeight(I)V

    .line 189
    :cond_62
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/HorizontalListView;->mHeaderDividersEnabled:Z

    .line 190
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/HorizontalListView;->mFooterDividersEnabled:Z

    .line 192
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    return-void
.end method

.method static synthetic access$200(Landroid/widget/HorizontalListView;Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/HorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private addViewLeftSide(Landroid/view/View;I)Landroid/view/View;
    .registers 11
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 3117
    add-int/lit8 v2, p2, -0x1

    .line 3118
    .local v2, "abovePosition":I
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/HorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3119
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v5, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3120
    .local v3, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/widget/HorizontalListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Landroid/widget/HorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3122
    return-object v1
.end method

.method private addViewRightSide(Landroid/view/View;I)Landroid/view/View;
    .registers 11
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 3126
    add-int/lit8 v2, p2, 0x1

    .line 3127
    .local v2, "belowPosition":I
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/HorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3128
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3129
    .local v3, "edgeOfNewChild":I
    const/4 v4, 0x1

    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/widget/HorizontalListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/HorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3131
    return-object v1
.end method

.method private adjustViewsLeftOrRight()V
    .registers 7

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v1

    .line 211
    .local v1, "childCount":I
    if-lez v1, :cond_29

    .line 214
    iget-boolean v3, p0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_2a

    .line 217
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 218
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v4

    .line 219
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-eqz v3, :cond_20

    .line 222
    iget v3, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 224
    :cond_20
    if-gez v2, :cond_23

    .line 226
    const/4 v2, 0x0

    .line 244
    :cond_23
    :goto_23
    if-eqz v2, :cond_29

    .line 245
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    .line 248
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_29
    return-void

    .line 230
    :cond_2a
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 231
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 233
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    if-ge v3, v4, :cond_49

    .line 236
    iget v3, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 239
    :cond_49
    if-lez v2, :cond_23

    .line 240
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private amountToScroll(II)I
    .registers 15
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .prologue
    .line 2726
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v10

    iget-object v11, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int v5, v10, v11

    .line 2727
    .local v5, "listRight":I
    iget-object v10, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    .line 2729
    .local v4, "listLeft":I
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v7

    .line 2731
    .local v7, "numChildren":I
    const/16 v10, 0x42

    if-ne p1, v10, :cond_85

    .line 2732
    add-int/lit8 v3, v7, -0x1

    .line 2733
    .local v3, "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_1f

    .line 2734
    iget v10, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2736
    :cond_1f
    :goto_1f
    if-gt v7, v3, :cond_32

    .line 2738
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v10, v11}, Landroid/widget/HorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    .line 2739
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 2741
    :cond_32
    iget v10, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2742
    .local v8, "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2744
    .local v9, "viewToMakeVisible":Landroid/view/View;
    move v2, v5

    .line 2745
    .local v2, "goalRight":I
    iget v10, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_46

    .line 2746
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v2, v10

    .line 2749
    :cond_46
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    if-gt v10, v2, :cond_4e

    .line 2751
    const/4 v10, 0x0

    .line 2803
    .end local v2    # "goalRight":I
    :goto_4d
    return v10

    .line 2754
    .restart local v2    # "goalRight":I
    :cond_4e
    const/4 v10, -0x1

    if-eq p2, v10, :cond_5f

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v2, v10

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_5f

    .line 2757
    const/4 v10, 0x0

    goto :goto_4d

    .line 2760
    :cond_5f
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v0, v10, v2

    .line 2762
    .local v0, "amountToScroll":I
    iget v10, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    if-ne v10, v11, :cond_7c

    .line 2764
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v6, v10, v5

    .line 2765
    .local v6, "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2768
    .end local v6    # "max":I
    :cond_7c
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_4d

    .line 2770
    .end local v0    # "amountToScroll":I
    .end local v2    # "goalRight":I
    .end local v3    # "indexToMakeVisible":I
    .end local v8    # "positionToMakeVisible":I
    .end local v9    # "viewToMakeVisible":Landroid/view/View;
    :cond_85
    const/4 v3, 0x0

    .line 2771
    .restart local v3    # "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_8d

    .line 2772
    iget v10, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2774
    :cond_8d
    :goto_8d
    if-gez v3, :cond_a4

    .line 2776
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v10, v11}, Landroid/widget/HorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    .line 2777
    iget v10, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    .line 2778
    iget v10, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v10

    goto :goto_8d

    .line 2780
    :cond_a4
    iget v10, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2781
    .restart local v8    # "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2782
    .restart local v9    # "viewToMakeVisible":Landroid/view/View;
    move v1, v4

    .line 2783
    .local v1, "goalLeft":I
    if-lez v8, :cond_b4

    .line 2784
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v1, v10

    .line 2786
    :cond_b4
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v10, v1, :cond_bc

    .line 2788
    const/4 v10, 0x0

    goto :goto_4d

    .line 2791
    :cond_bc
    const/4 v10, -0x1

    if-eq p2, v10, :cond_cc

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_cc

    .line 2794
    const/4 v10, 0x0

    goto :goto_4d

    .line 2797
    :cond_cc
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v0, v1, v10

    .line 2798
    .restart local v0    # "amountToScroll":I
    iget v10, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-nez v10, :cond_e5

    .line 2800
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v6, v4, v10

    .line 2801
    .restart local v6    # "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2803
    .end local v6    # "max":I
    :cond_e5
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_4d
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .registers 8
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .prologue
    .line 2995
    const/4 v0, 0x0

    .line 2996
    .local v0, "amountToScroll":I
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2997
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/widget/HorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2998
    const/16 v2, 0x11

    if-ne p1, v2, :cond_2b

    .line 2999
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_2a

    .line 3000
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 3001
    if-lez p3, :cond_2a

    .line 3002
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3014
    :cond_2a
    :goto_2a
    return v0

    .line 3006
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    .line 3007
    .local v1, "listRight":I
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-le v2, v1, :cond_2a

    .line 3008
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v1

    .line 3009
    iget v2, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_2a

    .line 3010
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2a
.end method

.method private arrowScrollFocused(I)Landroid/widget/HorizontalListView$ArrowScrollFocusResult;
    .registers 19
    .param p1, "direction"    # I

    .prologue
    .line 2893
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v12

    .line 2895
    .local v12, "selectedView":Landroid/view/View;
    if-eqz v12, :cond_4a

    invoke-virtual {v12}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_4a

    .line 2896
    invoke-virtual {v12}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 2897
    .local v8, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2922
    .end local v8    # "oldFocus":Landroid/view/View;
    .local v7, "newFocus":Landroid/view/View;
    :goto_1c
    if-eqz v7, :cond_113

    .line 2923
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/HorizontalListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 2927
    .local v9, "positionOfNewFocus":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_d9

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-eq v9, v14, :cond_d9

    .line 2928
    invoke-direct/range {p0 .. p1}, Landroid/widget/HorizontalListView;->lookForSelectablePositionOnScreen(I)I

    move-result v11

    .line 2929
    .local v11, "selectablePosition":I
    const/4 v14, -0x1

    if-eq v11, v14, :cond_d9

    const/16 v14, 0x42

    move/from16 v0, p1

    if-ne v0, v14, :cond_40

    if-lt v11, v9, :cond_48

    :cond_40
    const/16 v14, 0x11

    move/from16 v0, p1

    if-ne v0, v14, :cond_d9

    if-le v11, v9, :cond_d9

    .line 2932
    :cond_48
    const/4 v14, 0x0

    .line 2954
    .end local v9    # "positionOfNewFocus":I
    .end local v11    # "selectablePosition":I
    :goto_49
    return-object v14

    .line 2899
    .end local v7    # "newFocus":Landroid/view/View;
    :cond_4a
    const/16 v14, 0x42

    move/from16 v0, p1

    if-ne v0, v14, :cond_94

    .line 2900
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-lez v14, :cond_8e

    const/4 v3, 0x1

    .line 2901
    .local v3, "leftFadingEdgeShowing":Z
    :goto_57
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_90

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_63
    add-int v4, v15, v14

    .line 2903
    .local v4, "listLeft":I
    if-eqz v12, :cond_92

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    if-le v14, v4, :cond_92

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 2907
    .local v13, "xSearchPoint":I
    :goto_71
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v13, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2919
    .end local v3    # "leftFadingEdgeShowing":Z
    .end local v4    # "listLeft":I
    :goto_7d
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7    # "newFocus":Landroid/view/View;
    goto :goto_1c

    .line 2900
    .end local v7    # "newFocus":Landroid/view/View;
    .end local v13    # "xSearchPoint":I
    :cond_8e
    const/4 v3, 0x0

    goto :goto_57

    .line 2901
    .restart local v3    # "leftFadingEdgeShowing":Z
    :cond_90
    const/4 v14, 0x0

    goto :goto_63

    .restart local v4    # "listLeft":I
    :cond_92
    move v13, v4

    .line 2903
    goto :goto_71

    .line 2909
    .end local v3    # "leftFadingEdgeShowing":Z
    .end local v4    # "listLeft":I
    :cond_94
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    if-ge v14, v15, :cond_d3

    const/4 v10, 0x1

    .line 2911
    .local v10, "rightFadingEdgeShowing":Z
    :goto_a6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int v15, v14, v15

    if-eqz v10, :cond_d5

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_b8
    sub-int v5, v15, v14

    .line 2913
    .local v5, "listRight":I
    if-eqz v12, :cond_d7

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v14

    if-ge v14, v5, :cond_d7

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    .line 2917
    .restart local v13    # "xSearchPoint":I
    :goto_c6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v13, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7d

    .line 2909
    .end local v5    # "listRight":I
    .end local v10    # "rightFadingEdgeShowing":Z
    .end local v13    # "xSearchPoint":I
    :cond_d3
    const/4 v10, 0x0

    goto :goto_a6

    .line 2911
    .restart local v10    # "rightFadingEdgeShowing":Z
    :cond_d5
    const/4 v14, 0x0

    goto :goto_b8

    .restart local v5    # "listRight":I
    :cond_d7
    move v13, v5

    .line 2913
    goto :goto_c6

    .line 2936
    .end local v5    # "listRight":I
    .end local v10    # "rightFadingEdgeShowing":Z
    .restart local v7    # "newFocus":Landroid/view/View;
    .restart local v9    # "positionOfNewFocus":I
    :cond_d9
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Landroid/widget/HorizontalListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v2

    .line 2938
    .local v2, "focusScroll":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getMaxScrollAmount()I

    move-result v6

    .line 2939
    .local v6, "maxScrollAmount":I
    if-ge v2, v6, :cond_f9

    .line 2941
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 2942
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mArrowScrollFocusResult:Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v2}, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;->populate(II)V

    .line 2943
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mArrowScrollFocusResult:Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    goto/16 :goto_49

    .line 2944
    :cond_f9
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/HorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_113

    .line 2949
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 2950
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mArrowScrollFocusResult:Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;->populate(II)V

    .line 2951
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HorizontalListView;->mArrowScrollFocusResult:Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    goto/16 :goto_49

    .line 2954
    .end local v2    # "focusScroll":I
    .end local v6    # "maxScrollAmount":I
    .end local v9    # "positionOfNewFocus":I
    :cond_113
    const/4 v14, 0x0

    goto/16 :goto_49
.end method

.method private arrowScrollImpl(I)Z
    .registers 13
    .param p1, "direction"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2506
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_a

    .line 2584
    :cond_9
    :goto_9
    return v9

    .line 2510
    :cond_a
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2511
    .local v6, "selectedView":Landroid/view/View;
    iget v5, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    .line 2513
    .local v5, "selectedPos":I
    invoke-direct {p0, v6, v5, p1}, Landroid/widget/HorizontalListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v4

    .line 2514
    .local v4, "nextSelectedPosition":I
    invoke-direct {p0, p1, v4}, Landroid/widget/HorizontalListView;->amountToScroll(II)I

    move-result v0

    .line 2517
    .local v0, "amountToScroll":I
    iget-boolean v7, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_b3

    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->arrowScrollFocused(I)Landroid/widget/HorizontalListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 2518
    .local v1, "focusResult":Landroid/widget/HorizontalListView$ArrowScrollFocusResult;
    :goto_20
    if-eqz v1, :cond_2a

    .line 2519
    invoke-virtual {v1}, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2520
    invoke-virtual {v1}, Landroid/widget/HorizontalListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2523
    :cond_2a
    if-eqz v1, :cond_b6

    move v3, v8

    .line 2524
    .local v3, "needToRedraw":Z
    :goto_2d
    if-eq v4, v10, :cond_53

    .line 2525
    if-eqz v1, :cond_b9

    move v7, v8

    :goto_32
    invoke-direct {p0, v6, p1, v4, v7}, Landroid/widget/HorizontalListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2526
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalListView;->setSelectedPositionInt(I)V

    .line 2527
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2528
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2529
    move v5, v4

    .line 2530
    iget-boolean v7, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_4f

    if-nez v1, :cond_4f

    .line 2533
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2534
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_4f

    .line 2535
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2538
    .end local v2    # "focused":Landroid/view/View;
    :cond_4f
    const/4 v3, 0x1

    .line 2539
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->checkSelectionChanged()V

    .line 2542
    :cond_53
    if-lez v0, :cond_66

    .line 2544
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 2545
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->logActivity()V

    .line 2547
    :cond_5e
    const/16 v7, 0x11

    if-ne p1, v7, :cond_bc

    .end local v0    # "amountToScroll":I
    :goto_62
    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->scrollListItemsBy(I)V

    .line 2548
    const/4 v3, 0x1

    .line 2553
    :cond_66
    iget-boolean v7, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_87

    if-nez v1, :cond_87

    if-eqz v6, :cond_87

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_87

    .line 2555
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2556
    .restart local v2    # "focused":Landroid/view/View;
    invoke-direct {p0, v2, p0}, Landroid/widget/HorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_84

    invoke-direct {p0, v2}, Landroid/widget/HorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_87

    .line 2557
    :cond_84
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2562
    .end local v2    # "focused":Landroid/view/View;
    :cond_87
    if-ne v4, v10, :cond_97

    if-eqz v6, :cond_97

    invoke-direct {p0, v6, p0}, Landroid/widget/HorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_97

    .line 2564
    const/4 v6, 0x0

    .line 2565
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->hideSelector()V

    .line 2569
    iput v10, p0, Landroid/widget/HorizontalListView;->mResurrectToPosition:I

    .line 2572
    :cond_97
    if-eqz v3, :cond_9

    .line 2573
    if-eqz v6, :cond_a4

    .line 2574
    invoke-virtual {p0, v5, v6}, Landroid/widget/HorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 2575
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    iput v7, p0, Landroid/widget/HorizontalListView;->mSelectedLeft:I

    .line 2577
    :cond_a4
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_ad

    .line 2578
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    .line 2580
    :cond_ad
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invokeOnItemScrollListener()V

    move v9, v8

    .line 2581
    goto/16 :goto_9

    .line 2517
    .end local v1    # "focusResult":Landroid/widget/HorizontalListView$ArrowScrollFocusResult;
    .end local v3    # "needToRedraw":Z
    .restart local v0    # "amountToScroll":I
    :cond_b3
    const/4 v1, 0x0

    goto/16 :goto_20

    .restart local v1    # "focusResult":Landroid/widget/HorizontalListView$ArrowScrollFocusResult;
    :cond_b6
    move v3, v9

    .line 2523
    goto/16 :goto_2d

    .restart local v3    # "needToRedraw":Z
    :cond_b9
    move v7, v9

    .line 2525
    goto/16 :goto_32

    .line 2547
    :cond_bc
    neg-int v0, v0

    goto :goto_62
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 533
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/HorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1f

    .line 534
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 536
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1f

    .line 537
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/HorizontalListView$FixedViewInfo;

    iget-object v0, v4, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 538
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 539
    .local v3, "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-eqz v3, :cond_1c

    .line 540
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->recycledHeaderFooter:Z

    .line 536
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 544
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_1f
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .registers 13
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x42

    const/16 v6, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2139
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_11

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_13

    :cond_11
    move v4, v3

    .line 2290
    :cond_12
    :goto_12
    return v4

    .line 2143
    :cond_13
    iget-boolean v5, p0, Landroid/widget/HorizontalListView;->mDataChanged:Z

    if-eqz v5, :cond_1a

    .line 2144
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->layoutChildren()V

    .line 2147
    :cond_1a
    const/4 v2, 0x0

    .line 2148
    .local v2, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2150
    .local v0, "action":I
    if-eq v0, v4, :cond_24

    .line 2151
    sparse-switch p1, :sswitch_data_1ca

    .line 2271
    :cond_24
    :goto_24
    if-nez v2, :cond_12

    .line 2275
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/HorizontalListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 2279
    packed-switch v0, :pswitch_data_1f8

    move v4, v3

    .line 2290
    goto :goto_12

    .line 2153
    :sswitch_31
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_3d

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 2154
    :cond_3d
    iget v5, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/HorizontalListView;->mTwCurrentFocusPosition:I

    .line 2155
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2156
    if-nez v2, :cond_24

    move v1, p2

    .line 2157
    .end local p2    # "count":I
    .local v1, "count":I
    :goto_48
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_24

    .line 2158
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2159
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_48

    .line 2165
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_55
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2166
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_67

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_69

    :cond_67
    move v2, v4

    :goto_68
    goto :goto_24

    :cond_69
    move v2, v3

    goto :goto_68

    .line 2171
    :sswitch_6b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_77

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 2172
    :cond_77
    iget v5, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/HorizontalListView;->mTwCurrentFocusPosition:I

    .line 2173
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2174
    if-nez v2, :cond_24

    move v1, p2

    .line 2175
    .end local p2    # "count":I
    .restart local v1    # "count":I
    :goto_82
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_24

    .line 2176
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2177
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_82

    .line 2183
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_8f
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2184
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_a1

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_a3

    :cond_a1
    move v2, v4

    :goto_a2
    goto :goto_24

    :cond_a3
    move v2, v3

    goto :goto_a2

    .line 2189
    :sswitch_a5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_b1

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2190
    :cond_b1
    iget v5, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/HorizontalListView;->mTwCurrentFocusPosition:I

    .line 2191
    const/16 v5, 0x21

    invoke-direct {p0, v5}, Landroid/widget/HorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_24

    .line 2196
    :sswitch_bd
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_c9

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2197
    :cond_c9
    iget v5, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/HorizontalListView;->mTwCurrentFocusPosition:I

    .line 2198
    const/16 v5, 0x82

    invoke-direct {p0, v5}, Landroid/widget/HorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_24

    .line 2204
    :sswitch_d5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2205
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2206
    if-nez v2, :cond_24

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_24

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_24

    .line 2208
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->keyPressed()V

    .line 2209
    const/4 v2, 0x1

    goto/16 :goto_24

    .line 2215
    :sswitch_f3
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_ff

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_24

    .line 2216
    :cond_ff
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_117

    .line 2217
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_111

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_115

    :cond_111
    move v2, v4

    .line 2221
    :cond_112
    :goto_112
    const/4 v2, 0x1

    goto/16 :goto_24

    :cond_115
    move v2, v3

    .line 2217
    goto :goto_112

    .line 2218
    :cond_117
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_112

    .line 2219
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_129

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_12b

    :cond_129
    move v2, v4

    :goto_12a
    goto :goto_112

    :cond_12b
    move v2, v3

    goto :goto_12a

    .line 2226
    :sswitch_12d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_144

    .line 2227
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_13f

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_142

    :cond_13f
    move v2, v4

    :goto_140
    goto/16 :goto_24

    :cond_142
    move v2, v3

    goto :goto_140

    .line 2228
    :cond_144
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2229
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_156

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_159

    :cond_156
    move v2, v4

    :goto_157
    goto/16 :goto_24

    :cond_159
    move v2, v3

    goto :goto_157

    .line 2234
    :sswitch_15b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_172

    .line 2235
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_16d

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_170

    :cond_16d
    move v2, v4

    :goto_16e
    goto/16 :goto_24

    :cond_170
    move v2, v3

    goto :goto_16e

    .line 2236
    :cond_172
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2237
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_184

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_187

    :cond_184
    move v2, v4

    :goto_185
    goto/16 :goto_24

    :cond_187
    move v2, v3

    goto :goto_185

    .line 2242
    :sswitch_189
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2243
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_19b

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_19e

    :cond_19b
    move v2, v4

    :goto_19c
    goto/16 :goto_24

    :cond_19e
    move v2, v3

    goto :goto_19c

    .line 2248
    :sswitch_1a0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2249
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1b2

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1b5

    :cond_1b2
    move v2, v4

    :goto_1b3
    goto/16 :goto_24

    :cond_1b5
    move v2, v3

    goto :goto_1b3

    .line 2281
    :pswitch_1b7
    invoke-super {p0, p1, p3}, Landroid/widget/AbsHorizontalListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_12

    .line 2284
    :pswitch_1bd
    invoke-super {p0, p1, p3}, Landroid/widget/AbsHorizontalListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_12

    .line 2287
    :pswitch_1c3
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsHorizontalListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_12

    .line 2151
    nop

    :sswitch_data_1ca
    .sparse-switch
        0x13 -> :sswitch_a5
        0x14 -> :sswitch_bd
        0x15 -> :sswitch_31
        0x16 -> :sswitch_6b
        0x17 -> :sswitch_d5
        0x3e -> :sswitch_f3
        0x42 -> :sswitch_d5
        0x5c -> :sswitch_12d
        0x5d -> :sswitch_15b
        0x7a -> :sswitch_189
        0x7b -> :sswitch_1a0
    .end sparse-switch

    .line 2279
    :pswitch_data_1f8
    .packed-switch 0x0
        :pswitch_1b7
        :pswitch_1bd
        :pswitch_1c3
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .registers 12
    .param p1, "childCount"    # I

    .prologue
    .line 1397
    iget v7, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v4, v7, -0x1

    .line 1398
    .local v4, "lastPosition":I
    iget v7, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_5e

    if-lez p1, :cond_5e

    .line 1401
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1404
    .local v3, "lastChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1407
    .local v5, "lastRight":I
    iget v7, p0, Landroid/widget/HorizontalListView;->mRight:I

    iget v8, p0, Landroid/widget/HorizontalListView;->mLeft:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v0, v7, v8

    .line 1411
    .local v0, "end":I
    sub-int v6, v0, v5

    .line 1412
    .local v6, "rightOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1413
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1417
    .local v2, "firstLeft":I
    if-lez v6, :cond_5e

    iget v7, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-gtz v7, :cond_39

    iget-object v7, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v2, v7, :cond_5e

    .line 1418
    :cond_39
    iget v7, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-nez v7, :cond_46

    .line 1420
    iget-object v7, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1423
    :cond_46
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    .line 1424
    iget v7, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-lez v7, :cond_5e

    .line 1427
    iget v7, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1429
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    .line 1434
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstLeft":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "lastRight":I
    .end local v6    # "rightOffset":I
    :cond_5e
    return-void
.end method

.method private correctTooLow(I)V
    .registers 13
    .param p1, "childCount"    # I

    .prologue
    .line 1446
    iget v8, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-nez v8, :cond_5e

    if-lez p1, :cond_5e

    .line 1449
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1452
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1455
    .local v2, "firstLeft":I
    iget-object v8, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->left:I

    .line 1458
    .local v7, "start":I
    iget v8, p0, Landroid/widget/HorizontalListView;->mRight:I

    iget v9, p0, Landroid/widget/HorizontalListView;->mLeft:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v0, v8, v9

    .line 1462
    .local v0, "end":I
    sub-int v6, v2, v7

    .line 1463
    .local v6, "leftOffset":I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1464
    .local v3, "lastChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1465
    .local v5, "lastRight":I
    iget v8, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v4, v8, -0x1

    .line 1469
    .local v4, "lastPosition":I
    if-lez v6, :cond_5e

    .line 1470
    iget v8, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v4, v8, :cond_39

    if-le v5, v0, :cond_5f

    .line 1471
    :cond_39
    iget v8, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_45

    .line 1473
    sub-int v8, v5, v0

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1476
    :cond_45
    neg-int v8, v6

    invoke-virtual {p0, v8}, Landroid/widget/HorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    .line 1477
    iget v8, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_5e

    .line 1480
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1482
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    .line 1489
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstLeft":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v4    # "lastPosition":I
    .end local v5    # "lastRight":I
    .end local v6    # "leftOffset":I
    .end local v7    # "start":I
    :cond_5e
    :goto_5e
    return-void

    .line 1484
    .restart local v0    # "end":I
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v2    # "firstLeft":I
    .restart local v3    # "lastChild":Landroid/view/View;
    .restart local v4    # "lastPosition":I
    .restart local v5    # "lastRight":I
    .restart local v6    # "leftOffset":I
    .restart local v7    # "start":I
    :cond_5f
    iget v8, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_5e

    .line 1485
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    goto :goto_5e
.end method

.method private distanceToView(Landroid/view/View;)I
    .registers 6
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    .line 3025
    const/4 v0, 0x0

    .line 3026
    .local v0, "distance":I
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3027
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/widget/HorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3028
    iget v2, p0, Landroid/widget/HorizontalListView;->mRight:I

    iget v3, p0, Landroid/widget/HorizontalListView;->mLeft:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    .line 3029
    .local v1, "listRight":I
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_2b

    .line 3030
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 3034
    :cond_2a
    :goto_2a
    return v0

    .line 3031
    :cond_2b
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v2, v1, :cond_2a

    .line 3032
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v1

    goto :goto_2a
.end method

.method private fillFromLeft(I)Landroid/view/View;
    .registers 4
    .param p1, "nextLeft"    # I

    .prologue
    .line 758
    iget v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    .line 759
    iget v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    .line 760
    iget v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-gez v0, :cond_1d

    .line 761
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    .line 763
    :cond_1d
    iget v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .registers 12
    .param p1, "childrenLeft"    # I
    .param p2, "childrenRight"    # I

    .prologue
    const/4 v3, 0x1

    .line 778
    sub-int v8, p2, p1

    .line 780
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->reconcileSelectedPosition()I

    move-result v1

    .line 782
    .local v1, "position":I
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 784
    .local v6, "sel":Landroid/view/View;
    iput v1, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    .line 786
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 787
    .local v7, "selWidth":I
    if-gt v7, v8, :cond_21

    .line 788
    sub-int v0, v8, v7

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v6, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 791
    :cond_21
    invoke-direct {p0, v6, v1}, Landroid/widget/HorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    .line 793
    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    if-nez v0, :cond_30

    .line 794
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->correctTooHigh(I)V

    .line 799
    :goto_2f
    return-object v6

    .line 796
    :cond_30
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->correctTooLow(I)V

    goto :goto_2f
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .registers 18
    .param p1, "selectedLeft"    # I
    .param p2, "childrenLeft"    # I
    .param p3, "childrenRight"    # I

    .prologue
    .line 834
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v7

    .line 835
    .local v7, "fadingEdgeLength":I
    iget v2, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    .line 839
    .local v2, "selectedPosition":I
    move/from16 v0, p2

    invoke-direct {p0, v0, v7, v2}, Landroid/widget/HorizontalListView;->getLeftSelectionPixel(III)I

    move-result v8

    .line 841
    .local v8, "leftSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v7, v2}, Landroid/widget/HorizontalListView;->getRightSelectionPixel(III)I

    move-result v10

    .line 844
    .local v10, "rightSelectionPixel":I
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v11

    .line 848
    .local v11, "sel":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v10, :cond_47

    .line 851
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v12, v1, v8

    .line 855
    .local v12, "spaceLeft":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v13, v1, v10

    .line 856
    .local v13, "spaceRight":I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 859
    .local v9, "offset":I
    neg-int v1, v9

    invoke-virtual {v11, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 875
    .end local v9    # "offset":I
    .end local v12    # "spaceLeft":I
    .end local v13    # "spaceRight":I
    :cond_38
    :goto_38
    invoke-direct {p0, v11, v2}, Landroid/widget/HorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    .line 877
    iget-boolean v1, p0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_61

    .line 878
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/HorizontalListView;->correctTooHigh(I)V

    .line 883
    :goto_46
    return-object v11

    .line 860
    :cond_47
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v8, :cond_38

    .line 863
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v12, v8, v1

    .line 867
    .restart local v12    # "spaceLeft":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v13, v10, v1

    .line 868
    .restart local v13    # "spaceRight":I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 871
    .restart local v9    # "offset":I
    invoke-virtual {v11, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_38

    .line 880
    .end local v9    # "offset":I
    .end local v12    # "spaceLeft":I
    .end local v13    # "spaceRight":I
    :cond_61
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/HorizontalListView;->correctTooLow(I)V

    goto :goto_46
.end method

.method private fillLeft(II)Landroid/view/View;
    .registers 12
    .param p1, "pos"    # I
    .param p2, "nextRight"    # I

    .prologue
    const/4 v3, 0x0

    .line 723
    const/4 v8, 0x0

    .line 725
    .local v8, "selectedView":Landroid/view/View;
    const/4 v7, 0x0

    .line 726
    .local v7, "end":I
    iget v0, p0, Landroid/widget/HorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_f

    .line 727
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 730
    :cond_f
    :goto_f
    if-le p2, v7, :cond_35

    if-ltz p1, :cond_35

    .line 732
    iget v0, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_33

    const/4 v5, 0x1

    .line 733
    .local v5, "selected":Z
    :goto_18
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 735
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_30

    .line 736
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 737
    if-eqz v5, :cond_30

    .line 738
    move-object v8, v6

    .line 741
    :cond_30
    add-int/lit8 p1, p1, -0x1

    .line 742
    goto :goto_f

    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_33
    move v5, v3

    .line 732
    goto :goto_18

    .line 744
    :cond_35
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    .line 745
    iget v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalListView;->setVisibleRangeHint(II)V

    .line 746
    return-object v8
.end method

.method private fillLeftAndRight(Landroid/view/View;I)V
    .registers 6
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 810
    iget v0, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    .line 811
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_1e

    .line 812
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 813
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    .line 814
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    .line 820
    :goto_1d
    return-void

    .line 816
    :cond_1e
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    .line 817
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    .line 818
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    goto :goto_1d
.end method

.method private fillRight(II)Landroid/view/View;
    .registers 12
    .param p1, "pos"    # I
    .param p2, "nextLeft"    # I

    .prologue
    const/4 v3, 0x1

    .line 687
    const/4 v8, 0x0

    .line 689
    .local v8, "selectedView":Landroid/view/View;
    iget v0, p0, Landroid/widget/HorizontalListView;->mRight:I

    iget v1, p0, Landroid/widget/HorizontalListView;->mLeft:I

    sub-int v7, v0, v1

    .line 690
    .local v7, "end":I
    iget v0, p0, Landroid/widget/HorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_15

    .line 691
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    .line 694
    :cond_15
    :goto_15
    if-ge p2, v7, :cond_3d

    iget v0, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    if-ge p1, v0, :cond_3d

    .line 696
    iget v0, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_3b

    move v5, v3

    .line 697
    .local v5, "selected":Z
    :goto_20
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 699
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_38

    .line 700
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 701
    if-eqz v5, :cond_38

    .line 702
    move-object v8, v6

    .line 705
    :cond_38
    add-int/lit8 p1, p1, 0x1

    .line 706
    goto :goto_15

    .line 696
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_3b
    const/4 v5, 0x0

    goto :goto_20

    .line 708
    :cond_3d
    iget v0, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalListView;->setVisibleRangeHint(II)V

    .line 709
    return-object v8
.end method

.method private fillSpecific(II)Landroid/view/View;
    .registers 14
    .param p1, "position"    # I
    .param p2, "left"    # I

    .prologue
    const/4 v3, 0x1

    .line 1349
    iget v0, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_3e

    move v5, v3

    .line 1350
    .local v5, "tempIsSelected":Z
    :goto_6
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1352
    .local v10, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    .line 1357
    iget v7, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    .line 1358
    .local v7, "dividerHeight":I
    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    if-nez v0, :cond_40

    .line 1359
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v8

    .line 1361
    .local v8, "leftSide":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    .line 1362
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v9

    .line 1363
    .local v9, "rightSide":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v6

    .line 1364
    .local v6, "childCount":I
    if-lez v6, :cond_3b

    .line 1365
    invoke-direct {p0, v6}, Landroid/widget/HorizontalListView;->correctTooHigh(I)V

    .line 1378
    :cond_3b
    :goto_3b
    if-eqz v5, :cond_63

    .line 1383
    .end local v10    # "temp":Landroid/view/View;
    :goto_3d
    return-object v10

    .line 1349
    .end local v5    # "tempIsSelected":Z
    .end local v6    # "childCount":I
    .end local v7    # "dividerHeight":I
    .end local v8    # "leftSide":Landroid/view/View;
    .end local v9    # "rightSide":Landroid/view/View;
    :cond_3e
    const/4 v5, 0x0

    goto :goto_6

    .line 1368
    .restart local v5    # "tempIsSelected":Z
    .restart local v7    # "dividerHeight":I
    .restart local v10    # "temp":Landroid/view/View;
    :cond_40
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v9

    .line 1370
    .restart local v9    # "rightSide":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    .line 1371
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v8

    .line 1372
    .restart local v8    # "leftSide":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v6

    .line 1373
    .restart local v6    # "childCount":I
    if-lez v6, :cond_3b

    .line 1374
    invoke-direct {p0, v6}, Landroid/widget/HorizontalListView;->correctTooLow(I)V

    goto :goto_3b

    .line 1380
    :cond_63
    if-eqz v8, :cond_67

    move-object v10, v8

    .line 1381
    goto :goto_3d

    :cond_67
    move-object v10, v9

    .line 1383
    goto :goto_3d
.end method

.method private getAccessibilityFocusedChild()Landroid/view/View;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1749
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 1750
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-nez v2, :cond_9

    move-object v0, v3

    .line 1769
    :cond_8
    :goto_8
    return-object v0

    .line 1754
    :cond_9
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    .line 1755
    .local v0, "focusedView":Landroid/view/View;
    if-nez v0, :cond_11

    move-object v0, v3

    .line 1756
    goto :goto_8

    .line 1759
    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1760
    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_15
    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_23

    if-eq v1, p0, :cond_23

    move-object v0, v1

    .line 1761
    check-cast v0, Landroid/view/View;

    .line 1762
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_15

    .line 1765
    :cond_23
    instance-of v4, v1, Landroid/view/View;

    if-nez v4, :cond_8

    move-object v0, v3

    .line 1766
    goto :goto_8
.end method

.method private getArrowScrollPreviewLength()I
    .registers 3

    .prologue
    .line 2710
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getLeftSelectionPixel(III)I
    .registers 5
    .param p1, "childrenLeft"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 913
    move v0, p1

    .line 914
    .local v0, "leftSelectionPixel":I
    if-lez p3, :cond_4

    .line 915
    add-int/2addr v0, p2

    .line 917
    :cond_4
    return v0
.end method

.method private getRightSelectionPixel(III)I
    .registers 6
    .param p1, "childrenRight"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 896
    move v0, p1

    .line 897
    .local v0, "rightSelectionPixel":I
    iget v1, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_8

    .line 898
    sub-int/2addr v0, p2

    .line 900
    :cond_8
    return v0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .registers 15
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .prologue
    .line 2602
    const/4 v8, -0x1

    if-ne p3, v8, :cond_c

    .line 2603
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2613
    :cond_c
    const/4 v0, 0x0

    .line 2614
    .local v0, "leftSelected":Z
    iget v8, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    sub-int v7, v8, v9

    .line 2615
    .local v7, "selectedIndex":I
    iget v8, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    sub-int v3, p3, v8

    .line 2616
    .local v3, "nextSelectedIndex":I
    const/16 v8, 0x11

    if-ne p2, v8, :cond_42

    .line 2617
    move v2, v3

    .line 2618
    .local v2, "leftViewIndex":I
    move v6, v7

    .line 2619
    .local v6, "rightViewIndex":I
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2620
    .local v1, "leftView":Landroid/view/View;
    move-object v5, p1

    .line 2621
    .local v5, "rightView":Landroid/view/View;
    const/4 v0, 0x1

    .line 2629
    :goto_23
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v4

    .line 2632
    .local v4, "numChildren":I
    if-eqz v1, :cond_34

    .line 2633
    if-nez p4, :cond_4a

    if-eqz v0, :cond_4a

    const/4 v8, 0x1

    :goto_2e
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2634
    invoke-direct {p0, v1, v2, v4}, Landroid/widget/HorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    .line 2638
    :cond_34
    if-eqz v5, :cond_41

    .line 2639
    if-nez p4, :cond_4c

    if-nez v0, :cond_4c

    const/4 v8, 0x1

    :goto_3b
    invoke-virtual {v5, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2640
    invoke-direct {p0, v5, v6, v4}, Landroid/widget/HorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    .line 2642
    :cond_41
    return-void

    .line 2623
    .end local v1    # "leftView":Landroid/view/View;
    .end local v2    # "leftViewIndex":I
    .end local v4    # "numChildren":I
    .end local v5    # "rightView":Landroid/view/View;
    .end local v6    # "rightViewIndex":I
    :cond_42
    move v2, v7

    .line 2624
    .restart local v2    # "leftViewIndex":I
    move v6, v3

    .line 2625
    .restart local v6    # "rightViewIndex":I
    move-object v1, p1

    .line 2626
    .restart local v1    # "leftView":Landroid/view/View;
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .restart local v5    # "rightView":Landroid/view/View;
    goto :goto_23

    .line 2633
    .restart local v4    # "numChildren":I
    :cond_4a
    const/4 v8, 0x0

    goto :goto_2e

    .line 2639
    :cond_4c
    const/4 v8, 0x0

    goto :goto_3b
.end method

.method private handleVerticalFocusWithinListItem(I)Z
    .registers 9
    .param p1, "direction"    # I

    .prologue
    .line 2395
    const/16 v5, 0x21

    if-eq p1, v5, :cond_10

    const/16 v5, 0x82

    if-eq p1, v5, :cond_10

    .line 2396
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2400
    :cond_10
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v3

    .line 2401
    .local v3, "numChildren":I
    iget-boolean v5, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_74

    if-lez v3, :cond_74

    iget v5, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_74

    .line 2402
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2403
    .local v4, "selectedView":Landroid/view/View;
    if-eqz v4, :cond_74

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_74

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_74

    .line 2406
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2407
    .local v0, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "selectedView":Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2409
    .local v2, "nextFocus":Landroid/view/View;
    if-eqz v2, :cond_5f

    .line 2411
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2412
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Landroid/widget/HorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2413
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Landroid/widget/HorizontalListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2414
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 2415
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/HorizontalListView;->playSoundEffect(I)V

    .line 2416
    const/4 v5, 0x1

    .line 2430
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :goto_5e
    return v5

    .line 2423
    .restart local v0    # "currentFocus":Landroid/view/View;
    .restart local v2    # "nextFocus":Landroid/view/View;
    :cond_5f
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2425
    .local v1, "globalNextFocus":Landroid/view/View;
    if-eqz v1, :cond_74

    .line 2426
    invoke-direct {p0, v1, p0}, Landroid/widget/HorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_5e

    .line 2430
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v1    # "globalNextFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_74
    const/4 v5, 0x0

    goto :goto_5e
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 2977
    if-ne p1, p2, :cond_4

    .line 2982
    :cond_3
    :goto_3
    return v1

    .line 2981
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2982
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_14

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/HorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_14
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private logActivity()V
    .registers 2

    .prologue
    .line 3890
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Landroid/widget/HorizontalListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    .line 3891
    return-void
.end method

.method private logActivity(Landroid/view/View;Landroid/view/View;)V
    .registers 9
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/View;

    .prologue
    .line 3825
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3887
    :cond_6
    :goto_6
    return-void

    .line 3831
    :cond_7
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1f

    move-object v2, p1

    .line 3832
    check-cast v2, Landroid/view/ViewGroup;

    .line 3833
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3834
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_1f

    .line 3835
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroid/widget/HorizontalListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    .line 3834
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 3839
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_1f
    instance-of v3, p1, Landroid/widget/CheckBox;

    if-eqz v3, :cond_5d

    .line 3841
    const-string v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_e1

    const-string v3, "CHECKED"

    :goto_4c
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3845
    :cond_5d
    instance-of v3, p1, Landroid/widget/RadioButton;

    if-eqz v3, :cond_9b

    .line 3847
    const-string v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_e5

    const-string v3, "CHECKED"

    :goto_8a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    :cond_9b
    if-eqz p2, :cond_cf

    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_cf

    move-object v3, p1

    .line 3853
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lez v3, :cond_cf

    .line 3854
    const-string v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>MENUTEXT:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    :cond_cf
    instance-of v3, p1, Landroid/widget/AbsHorizontalListView;

    if-eqz v3, :cond_6

    .line 3860
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Landroid/widget/HorizontalListView$1;

    invoke-direct {v4, p0, p1}, Landroid/widget/HorizontalListView$1;-><init>(Landroid/widget/HorizontalListView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_6

    .line 3841
    :cond_e1
    const-string v3, "UNCHECKED"

    goto/16 :goto_4c

    .line 3847
    :cond_e5
    const-string v3, "UNCHECKED"

    goto :goto_8a
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .registers 10
    .param p1, "direction"    # I

    .prologue
    const/4 v6, -0x1

    .line 2840
    iget v1, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    .line 2841
    .local v1, "firstPosition":I
    const/16 v7, 0x42

    if-ne p1, v7, :cond_3e

    .line 2842
    iget v7, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_19

    iget v7, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 2845
    .local v5, "startPos":I
    :goto_f
    iget-object v7, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_1b

    move v4, v6

    .line 2880
    :cond_18
    :goto_18
    return v4

    .end local v5    # "startPos":I
    :cond_19
    move v5, v1

    .line 2842
    goto :goto_f

    .line 2848
    .restart local v5    # "startPos":I
    :cond_1b
    if-ge v5, v1, :cond_1e

    .line 2849
    move v5, v1

    .line 2852
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getLastVisiblePosition()I

    move-result v3

    .line 2853
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2854
    .local v0, "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, "pos":I
    :goto_27
    if-gt v4, v3, :cond_80

    .line 2855
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_3b

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_18

    .line 2854
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 2861
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "pos":I
    .end local v5    # "startPos":I
    :cond_3e
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 2862
    .local v2, "last":I
    iget v7, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_59

    iget v7, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 2865
    .restart local v5    # "startPos":I
    :goto_4d
    if-ltz v5, :cond_57

    iget-object v7, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_61

    :cond_57
    move v4, v6

    .line 2866
    goto :goto_18

    .line 2862
    .end local v5    # "startPos":I
    :cond_59
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_4d

    .line 2868
    .restart local v5    # "startPos":I
    :cond_61
    if-le v5, v2, :cond_64

    .line 2869
    move v5, v2

    .line 2872
    :cond_64
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2873
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4    # "pos":I
    :goto_69
    if-lt v4, v1, :cond_80

    .line 2874
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_7d

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_18

    .line 2873
    :cond_7d
    add-int/lit8 v4, v4, -0x1

    goto :goto_69

    .end local v2    # "last":I
    :cond_80
    move v4, v6

    .line 2880
    goto :goto_18
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "x"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenTop"    # I
    .param p5, "selected"    # Z

    .prologue
    .line 1790
    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->mDataChanged:Z

    if-nez v0, :cond_18

    .line 1792
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1793
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_18

    .line 1796
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/HorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1810
    .end local v1    # "child":Landroid/view/View;
    .local v8, "child":Landroid/view/View;
    :goto_17
    return-object v8

    .line 1803
    .end local v8    # "child":Landroid/view/View;
    :cond_18
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1807
    .restart local v1    # "child":Landroid/view/View;
    if-eqz v1, :cond_2e

    .line 1808
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/HorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    :cond_2e
    move-object v8, v1

    .line 1810
    .end local v1    # "child":Landroid/view/View;
    .restart local v8    # "child":Landroid/view/View;
    goto :goto_17
.end method

.method private measureAndAdjustRight(Landroid/view/View;II)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .prologue
    .line 2652
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2653
    .local v1, "oldWidth":I
    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->measureItem(Landroid/view/View;)V

    .line 2654
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-eq v3, v1, :cond_24

    .line 2656
    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2659
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v2, v3, v1

    .line 2660
    .local v2, "widthDelta":I
    add-int/lit8 v0, p2, 0x1

    .local v0, "i":I
    :goto_18
    if-ge v0, p3, :cond_24

    .line 2661
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2660
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 2664
    .end local v0    # "i":I
    .end local v2    # "widthDelta":I
    :cond_24
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 2672
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2673
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_e

    .line 2674
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2679
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_e
    iget v4, p0, Landroid/widget/HorizontalListView;->mHeightMeasureSpec:I

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 2681
    .local v0, "childHeightSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2683
    .local v2, "lpWidth":I
    if-lez v2, :cond_2d

    .line 2684
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2688
    .local v1, "childWidthSpec":I
    :goto_29
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2689
    return-void

    .line 2686
    .end local v1    # "childWidthSpec":I
    :cond_2d
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childWidthSpec":I
    goto :goto_29
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 1194
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 1195
    .local v3, "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-nez v3, :cond_12

    .line 1196
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    check-cast v3, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 1197
    .restart local v3    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1199
    :cond_12
    iget-object v4, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    .line 1200
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->forceAdd:Z

    .line 1202
    iget-object v4, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->height:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1204
    .local v0, "childHeightSpec":I
    iget v2, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->width:I

    .line 1206
    .local v2, "lpWidth":I
    if-lez v2, :cond_3a

    .line 1207
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1211
    .local v1, "childWidthSpec":I
    :goto_36
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1212
    return-void

    .line 1209
    .end local v1    # "childWidthSpec":I
    :cond_3a
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childWidthSpec":I
    goto :goto_36
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .registers 26
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenLeft"    # I
    .param p5, "childrenRight"    # I

    .prologue
    .line 959
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v10

    .line 960
    .local v10, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 964
    .local v17, "selectedPosition":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/HorizontalListView;->getLeftSelectionPixel(III)I

    move-result v12

    .line 966
    .local v12, "leftSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/HorizontalListView;->getRightSelectionPixel(III)I

    move-result v15

    .line 969
    .local v15, "rightSelectionPixel":I
    if-lez p3, :cond_c6

    .line 991
    add-int/lit8 v4, v17, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 994
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    .line 997
    .local v9, "dividerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int v5, v3, v9

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1001
    .local v16, "sel":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v15, :cond_78

    .line 1004
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v18, v3, v12

    .line 1007
    .local v18, "spaceLeft":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v19, v3, v15

    .line 1010
    .local v19, "spaceRight":I
    sub-int v3, p5, p4

    div-int/lit8 v11, v3, 0x2

    .line 1011
    .local v11, "halfHorizontalSpace":I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1012
    .local v14, "offset":I
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1015
    neg-int v3, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1017
    neg-int v3, v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1021
    .end local v11    # "halfHorizontalSpace":I
    .end local v14    # "offset":I
    .end local v18    # "spaceLeft":I
    .end local v19    # "spaceRight":I
    :cond_78
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_a2

    .line 1022
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1023
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    .line 1024
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1105
    .end local v9    # "dividerHeight":I
    :goto_a1
    return-object v16

    .line 1026
    .restart local v9    # "dividerHeight":I
    :cond_a2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1027
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    .line 1028
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    goto :goto_a1

    .line 1030
    .end local v9    # "dividerHeight":I
    .end local v16    # "sel":Landroid/view/View;
    :cond_c6
    if-gez p3, :cond_120

    .line 1051
    if-eqz p2, :cond_10b

    .line 1053
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1063
    .restart local v16    # "sel":Landroid/view/View;
    :goto_de
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v12, :cond_101

    .line 1065
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v18, v12, v3

    .line 1068
    .restart local v18    # "spaceLeft":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v19, v15, v3

    .line 1071
    .restart local v19    # "spaceRight":I
    sub-int v3, p5, p4

    div-int/lit8 v11, v3, 0x2

    .line 1072
    .restart local v11    # "halfHorizontalSpace":I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1073
    .restart local v14    # "offset":I
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1076
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1080
    .end local v11    # "halfHorizontalSpace":I
    .end local v14    # "offset":I
    .end local v18    # "spaceLeft":I
    .end local v19    # "spaceRight":I
    :cond_101
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/HorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    goto :goto_a1

    .line 1058
    .end local v16    # "sel":Landroid/view/View;
    :cond_10b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .restart local v16    # "sel":Landroid/view/View;
    goto :goto_de

    .line 1083
    .end local v16    # "sel":Landroid/view/View;
    :cond_120
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1088
    .local v5, "oldLeft":I
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Landroid/widget/HorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1091
    .restart local v16    # "sel":Landroid/view/View;
    move/from16 v0, p4

    if-ge v5, v0, :cond_14b

    .line 1094
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v13

    .line 1095
    .local v13, "newRight":I
    add-int/lit8 v3, p4, 0x14

    if-ge v13, v3, :cond_14b

    .line 1097
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, p4, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1102
    .end local v13    # "newRight":I
    :cond_14b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/HorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    goto/16 :goto_a1
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .registers 12
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .prologue
    const/16 v7, 0x42

    const/4 v4, -0x1

    .line 2471
    if-ne p3, v7, :cond_2d

    .line 2472
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v2, v5, v6

    .line 2473
    .local v2, "listRight":I
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    if-gt v5, v2, :cond_29

    .line 2474
    if-eq p2, v4, :cond_2a

    iget v5, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-lt p2, v5, :cond_2a

    add-int/lit8 v3, p2, 0x1

    .line 2492
    .end local v2    # "listRight":I
    .local v3, "nextSelected":I
    :goto_1f
    if-ltz v3, :cond_29

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v3, v5, :cond_4b

    .line 2495
    .end local v3    # "nextSelected":I
    :cond_29
    :goto_29
    return v4

    .line 2474
    .restart local v2    # "listRight":I
    :cond_2a
    iget v3, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    goto :goto_1f

    .line 2481
    .end local v2    # "listRight":I
    :cond_2d
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 2482
    .local v1, "listLeft":I
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v5, v1, :cond_29

    .line 2483
    iget v5, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x1

    .line 2484
    .local v0, "lastPos":I
    if-eq p2, v4, :cond_49

    if-gt p2, v0, :cond_49

    add-int/lit8 v3, p2, -0x1

    .line 2487
    .restart local v3    # "nextSelected":I
    :goto_48
    goto :goto_1f

    .end local v3    # "nextSelected":I
    :cond_49
    move v3, v0

    .line 2484
    goto :goto_48

    .line 2495
    .end local v0    # "lastPos":I
    .end local v1    # "listLeft":I
    .restart local v3    # "nextSelected":I
    :cond_4b
    if-ne p3, v7, :cond_53

    const/4 v4, 0x1

    :goto_4e
    invoke-virtual {p0, v3, v4}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v4

    goto :goto_29

    :cond_53
    const/4 v4, 0x0

    goto :goto_4e
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .registers 7
    .param p1, "newFocus"    # Landroid/view/View;

    .prologue
    .line 2962
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v2

    .line 2963
    .local v2, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v2, :cond_18

    .line 2964
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2965
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2966
    iget v3, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 2963
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2969
    .end local v0    # "child":Landroid/view/View;
    :cond_18
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2697
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2698
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2699
    .local v4, "h":I
    iget-object v6, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2700
    .local v1, "childLeft":I
    add-int v2, v1, v5

    .line 2701
    .local v2, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2702
    .local v3, "childTop":I
    add-int v0, v3, v4

    .line 2703
    .local v0, "childBottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2704
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/HorizontalListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 334
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_14

    .line 335
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalListView$FixedViewInfo;

    .line 336
    .local v1, "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_15

    .line 337
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 341
    .end local v1    # "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    :cond_14
    return-void

    .line 334
    .restart local v1    # "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private scrollListItemsBy(I)V
    .registers 14
    .param p1, "amount"    # I

    .prologue
    const/4 v11, 0x0

    .line 3045
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    .line 3047
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int v6, v9, v10

    .line 3048
    .local v6, "listRight":I
    iget-object v9, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v9, Landroid/graphics/Rect;->left:I

    .line 3049
    .local v5, "listLeft":I
    iget-object v8, p0, Landroid/widget/HorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    .line 3051
    .local v8, "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    if-gez p1, :cond_72

    .line 3055
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v7

    .line 3056
    .local v7, "numChildren":I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3057
    .local v1, "last":Landroid/view/View;
    :goto_20
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v6, :cond_38

    .line 3058
    iget v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 3059
    .local v3, "lastVisiblePosition":I
    iget v9, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_38

    .line 3060
    invoke-direct {p0, v1, v3}, Landroid/widget/HorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3061
    add-int/lit8 v7, v7, 0x1

    .line 3065
    goto :goto_20

    .line 3070
    .end local v3    # "lastVisiblePosition":I
    :cond_38
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v6, :cond_47

    .line 3071
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Landroid/widget/HorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    .line 3075
    :cond_47
    invoke-virtual {p0, v11}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3076
    .local v0, "first":Landroid/view/View;
    :goto_4b
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v5, :cond_d0

    .line 3077
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 3078
    .local v4, "layoutParams":Landroid/widget/AbsHorizontalListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 3079
    iget v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3081
    :cond_64
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3082
    invoke-virtual {p0, v11}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3083
    iget v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    goto :goto_4b

    .line 3087
    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "last":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .end local v7    # "numChildren":I
    :cond_72
    invoke-virtual {p0, v11}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3090
    .restart local v0    # "first":Landroid/view/View;
    :goto_76
    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_8f

    iget v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-lez v9, :cond_8f

    .line 3091
    iget v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Landroid/widget/HorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3092
    iget v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    goto :goto_76

    .line 3097
    :cond_8f
    if-eqz v0, :cond_a0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_a0

    .line 3098
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/HorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    .line 3101
    :cond_a0
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3102
    .local v2, "lastIndex":I
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3105
    .restart local v1    # "last":Landroid/view/View;
    :goto_aa
    if-eqz v1, :cond_d0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v6, :cond_d0

    .line 3106
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 3107
    .restart local v4    # "layoutParams":Landroid/widget/AbsHorizontalListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_c6

    .line 3108
    iget v9, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3110
    :cond_c6
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3111
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3112
    goto :goto_aa

    .line 3114
    .end local v2    # "lastIndex":I
    .end local v4    # "layoutParams":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_d0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .registers 30
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "flowRightSide"    # Z
    .param p5, "childrenTop"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z

    .prologue
    .line 1829
    const-wide/16 v20, 0x8

    const-string/jumbo v19, "setupListItem"

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1831
    if-eqz p6, :cond_157

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_157

    const/4 v11, 0x1

    .line 1832
    .local v11, "isSelected":Z
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_15a

    const/16 v17, 0x1

    .line 1833
    .local v17, "updateChildSelected":Z
    :goto_1f
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalListView;->mTouchMode:I

    .line 1834
    .local v13, "mode":I
    if-lez v13, :cond_15e

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_15e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_15e

    const/4 v10, 0x1

    .line 1836
    .local v10, "isPressed":Z
    :goto_38
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_161

    const/16 v16, 0x1

    .line 1837
    .local v16, "updateChildPressed":Z
    :goto_42
    if-eqz p7, :cond_4c

    if-nez v17, :cond_4c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v19

    if-eqz v19, :cond_165

    :cond_4c
    const/4 v14, 0x1

    .line 1841
    .local v14, "needToMeasure":Z
    :goto_4d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 1842
    .local v15, "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-nez v15, :cond_5b

    .line 1843
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .end local v15    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    check-cast v15, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 1845
    .restart local v15    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    .line 1847
    if-eqz p7, :cond_75

    iget-boolean v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_87

    :cond_75
    iget-boolean v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16c

    iget v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16c

    .line 1849
    :cond_87
    if-eqz p4, :cond_168

    const/16 v19, -0x1

    :goto_8b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Landroid/widget/HorizontalListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1858
    :goto_94
    if-eqz v17, :cond_9b

    .line 1859
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 1862
    :cond_9b
    if-eqz v16, :cond_a2

    .line 1863
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 1866
    :cond_a2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_cf

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_cf

    .line 1867
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_19a

    move-object/from16 v19, p1

    .line 1868
    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1875
    :cond_cf
    :goto_cf
    if-eqz v14, :cond_1d1

    .line 1876
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mHeightMeasureSpec:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->height:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1878
    .local v5, "childHeightSpec":I
    iget v12, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->width:I

    .line 1880
    .local v12, "lpWidth":I
    if-lez v12, :cond_1c7

    .line 1881
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1885
    .local v8, "childWidthSpec":I
    :goto_105
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 1890
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpWidth":I
    :goto_10a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 1891
    .local v18, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1892
    .local v9, "h":I
    if-eqz p4, :cond_1d6

    move/from16 v6, p3

    .line 1894
    .local v6, "childLeft":I
    :goto_116
    if-eqz v14, :cond_1da

    .line 1895
    add-int v7, v6, v18

    .line 1896
    .local v7, "childRight":I
    add-int v4, p5, v9

    .line 1897
    .local v4, "childBottom":I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1, v7, v4}, Landroid/view/View;->layout(IIII)V

    .line 1903
    .end local v4    # "childBottom":I
    .end local v7    # "childRight":I
    :goto_123
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13a

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-nez v19, :cond_13a

    .line 1904
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1907
    :cond_13a
    if-eqz p7, :cond_151

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/AbsHorizontalListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_151

    .line 1909
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1912
    :cond_151
    const-wide/16 v20, 0x8

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 1913
    return-void

    .line 1831
    .end local v6    # "childLeft":I
    .end local v9    # "h":I
    .end local v10    # "isPressed":Z
    .end local v11    # "isSelected":Z
    .end local v13    # "mode":I
    .end local v14    # "needToMeasure":Z
    .end local v15    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .end local v16    # "updateChildPressed":Z
    .end local v17    # "updateChildSelected":Z
    .end local v18    # "w":I
    :cond_157
    const/4 v11, 0x0

    goto/16 :goto_15

    .line 1832
    .restart local v11    # "isSelected":Z
    :cond_15a
    const/16 v17, 0x0

    goto/16 :goto_1f

    .line 1834
    .restart local v13    # "mode":I
    .restart local v17    # "updateChildSelected":Z
    :cond_15e
    const/4 v10, 0x0

    goto/16 :goto_38

    .line 1836
    .restart local v10    # "isPressed":Z
    :cond_161
    const/16 v16, 0x0

    goto/16 :goto_42

    .line 1837
    .restart local v16    # "updateChildPressed":Z
    :cond_165
    const/4 v14, 0x0

    goto/16 :goto_4d

    .line 1849
    .restart local v14    # "needToMeasure":Z
    .restart local v15    # "p":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_168
    const/16 v19, 0x0

    goto/16 :goto_8b

    .line 1851
    :cond_16c
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->forceAdd:Z

    .line 1852
    iget v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_184

    .line 1853
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsHorizontalListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1855
    :cond_184
    if-eqz p4, :cond_197

    const/16 v19, -0x1

    :goto_188
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/widget/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_94

    :cond_197
    const/16 v19, 0x0

    goto :goto_188

    .line 1869
    :cond_19a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_cf

    .line 1871
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_cf

    .line 1883
    .restart local v5    # "childHeightSpec":I
    .restart local v12    # "lpWidth":I
    :cond_1c7
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childWidthSpec":I
    goto/16 :goto_105

    .line 1887
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpWidth":I
    :cond_1d1
    invoke-virtual/range {p0 .. p1}, Landroid/widget/HorizontalListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_10a

    .line 1892
    .restart local v9    # "h":I
    .restart local v18    # "w":I
    :cond_1d6
    sub-int v6, p3, v18

    goto/16 :goto_116

    .line 1899
    .restart local v6    # "childLeft":I
    :cond_1da
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, v6, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1900
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_123
.end method

.method private showingLeftFadingEdge()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 550
    iget v2, p0, Landroid/widget/HorizontalListView;->mScrollX:I

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int v0, v2, v3

    .line 551
    .local v0, "listLeft":I
    iget v2, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-gtz v2, :cond_17

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v2, v0, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method private showingRightFadingEdge()Z
    .registers 7

    .prologue
    .line 558
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v0

    .line 559
    .local v0, "childCount":I
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 560
    .local v3, "rightOfRightChild":I
    iget v4, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v0

    add-int/lit8 v1, v4, -0x1

    .line 562
    .local v1, "lastVisiblePosition":I
    iget v4, p0, Landroid/widget/HorizontalListView;->mScrollX:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 564
    .local v2, "listRight":I
    iget v4, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_28

    if-ge v3, v2, :cond_2a

    :cond_28
    const/4 v4, 0x1

    :goto_29
    return v4

    :cond_2a
    const/4 v4, 0x0

    goto :goto_29
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 395
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/HorizontalListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 396
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 360
    new-instance v0, Landroid/widget/HorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalListView$FixedViewInfo;-><init>(Landroid/widget/HorizontalListView;)V

    .line 361
    .local v0, "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 362
    iput-object p2, v0, Landroid/widget/HorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 363
    iput-boolean p3, v0, Landroid/widget/HorizontalListView$FixedViewInfo;->isSelectable:Z

    .line 364
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_30

    .line 368
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    if-nez v1, :cond_27

    .line 369
    new-instance v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewHorizontalListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 374
    :cond_27
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_30

    .line 375
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->onChanged()V

    .line 378
    :cond_30
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 302
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/HorizontalListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 303
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 267
    new-instance v0, Landroid/widget/HorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/HorizontalListView$FixedViewInfo;-><init>(Landroid/widget/HorizontalListView;)V

    .line 268
    .local v0, "info":Landroid/widget/HorizontalListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 269
    iput-object p2, v0, Landroid/widget/HorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 270
    iput-boolean p3, v0, Landroid/widget/HorizontalListView$FixedViewInfo;->isSelectable:Z

    .line 271
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_30

    .line 275
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    if-nez v1, :cond_27

    .line 276
    new-instance v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewHorizontalListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 281
    :cond_27
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_30

    .line 282
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->onChanged()V

    .line 285
    :cond_30
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .registers 2

    .prologue
    .line 3508
    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .registers 2

    .prologue
    .line 3485
    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method arrowScroll(I)Z
    .registers 5
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 2442
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2443
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->logActivity()V

    .line 2446
    :cond_a
    const/4 v1, 0x1

    :try_start_b
    iput-boolean v1, p0, Landroid/widget/HorizontalListView;->mInLayout:Z

    .line 2447
    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2448
    .local v0, "handled":Z
    if-eqz v0, :cond_1a

    .line 2449
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->playSoundEffect(I)V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1d

    .line 2453
    :cond_1a
    iput-boolean v2, p0, Landroid/widget/HorizontalListView;->mInLayout:Z

    return v0

    .end local v0    # "handled":Z
    :catchall_1d
    move-exception v1

    iput-boolean v2, p0, Landroid/widget/HorizontalListView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .registers 2

    .prologue
    .line 1917
    invoke-super {p0}, Landroid/widget/AbsHorizontalListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 43
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3225
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalListView;->mCachingStarted:Z

    move/from16 v39, v0

    if-eqz v39, :cond_10

    .line 3226
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HorizontalListView;->mCachingActive:Z

    .line 3230
    :cond_10
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    .line 3231
    .local v9, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    .line 3232
    .local v33, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    .line 3233
    .local v32, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v33, :cond_1c4

    const/4 v12, 0x1

    .line 3234
    .local v12, "drawOverscrollHeader":Z
    :goto_23
    if-eqz v32, :cond_1c7

    const/4 v11, 0x1

    .line 3235
    .local v11, "drawOverscrollFooter":Z
    :goto_26
    if-lez v9, :cond_1ca

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v39, v0

    if-eqz v39, :cond_1ca

    const/4 v10, 0x1

    .line 3237
    .local v10, "drawDividers":Z
    :goto_31
    if-nez v10, :cond_37

    if-nez v12, :cond_37

    if-eqz v11, :cond_23b

    .line 3239
    :cond_37
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 3240
    .local v6, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mPaddingTop:I

    move/from16 v39, v0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3241
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mBottom:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mTop:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mPaddingBottom:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3243
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v8

    .line 3244
    .local v8, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 3245
    .local v19, "headerCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    move/from16 v26, v0

    .line 3246
    .local v26, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v39

    sub-int v18, v26, v39

    .line 3247
    .local v18, "footerLimit":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalListView;->mHeaderDividersEnabled:Z

    move/from16 v20, v0

    .line 3248
    .local v20, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalListView;->mFooterDividersEnabled:Z

    move/from16 v17, v0

    .line 3249
    .local v17, "footerDividers":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    move/from16 v16, v0

    .line 3250
    .local v16, "first":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/HorizontalListView;->mAreAllItemsSelectable:Z

    .line 3251
    .local v5, "areAllItemsSelectable":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3256
    .local v4, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->isOpaque()Z

    move-result v39

    if-eqz v39, :cond_1cd

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->isOpaque()Z

    move-result v39

    if-nez v39, :cond_1cd

    const/4 v15, 0x1

    .line 3258
    .local v15, "fillForMissingDividers":Z
    :goto_a6
    if-eqz v15, :cond_d0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    if-nez v39, :cond_d0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalListView;->mIsCacheColorOpaque:Z

    move/from16 v39, v0

    if-eqz v39, :cond_d0

    .line 3259
    new-instance v39, Landroid/graphics/Paint;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3260
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getCacheColorHint()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Landroid/graphics/Paint;->setColor(I)V

    .line 3262
    :cond_d0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    .line 3264
    .local v34, "paint":Landroid/graphics/Paint;
    const/4 v13, 0x0

    .line 3265
    .local v13, "effectivePaddingLeft":I
    const/4 v14, 0x0

    .line 3266
    .local v14, "effectivePaddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mGroupFlags:I

    move/from16 v39, v0

    and-int/lit8 v39, v39, 0x22

    const/16 v40, 0x22

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_fc

    .line 3267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v13, v0, Landroid/graphics/Rect;->left:I

    .line 3268
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v14, v0, Landroid/graphics/Rect;->right:I

    .line 3271
    :cond_fc
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mRight:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mLeft:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    sub-int v39, v39, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mScrollX:I

    move/from16 v40, v0

    add-int v29, v39, v40

    .line 3272
    .local v29, "listRight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    move/from16 v39, v0

    if-nez v39, :cond_23f

    .line 3273
    const/16 v36, 0x0

    .line 3276
    .local v36, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mScrollX:I

    move/from16 v37, v0

    .line 3277
    .local v37, "scrollX":I
    if-lez v8, :cond_13d

    if-gez v37, :cond_13d

    .line 3278
    if-eqz v12, :cond_1d0

    .line 3279
    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3280
    move/from16 v0, v37

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3281
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/HorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3289
    :cond_13d
    :goto_13d
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_13f
    move/from16 v0, v21

    if-ge v0, v8, :cond_20c

    .line 3290
    add-int v27, v16, v21

    .line 3291
    .local v27, "itemIndex":I
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_1ec

    const/16 v24, 0x1

    .line 3292
    .local v24, "isHeader":Z
    :goto_14d
    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_1f0

    const/16 v23, 0x1

    .line 3293
    .local v23, "isFooter":Z
    :goto_155
    if-nez v20, :cond_159

    if-nez v24, :cond_1c0

    :cond_159
    if-nez v17, :cond_15d

    if-nez v23, :cond_1c0

    .line 3294
    :cond_15d
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3295
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v36

    .line 3296
    add-int/lit8 v39, v8, -0x1

    move/from16 v0, v21

    move/from16 v1, v39

    if-ne v0, v1, :cond_1f4

    const/16 v25, 0x1

    .line 3298
    .local v25, "isLastItem":Z
    :goto_173
    if-eqz v10, :cond_1c0

    move/from16 v0, v36

    move/from16 v1, v29

    if-ge v0, v1, :cond_1c0

    if-eqz v11, :cond_17f

    if-nez v25, :cond_1c0

    .line 3300
    :cond_17f
    add-int/lit8 v30, v27, 0x1

    .line 3303
    .local v30, "nextIndex":I
    if-nez v5, :cond_1ad

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-nez v39, :cond_193

    if-eqz v20, :cond_18f

    if-nez v24, :cond_193

    :cond_18f
    if-eqz v17, :cond_1f8

    if-eqz v23, :cond_1f8

    :cond_193
    if-nez v25, :cond_1ad

    move/from16 v0, v30

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-nez v39, :cond_1ad

    if-eqz v20, :cond_1a5

    move/from16 v0, v30

    move/from16 v1, v19

    if-lt v0, v1, :cond_1ad

    :cond_1a5
    if-eqz v17, :cond_1f8

    move/from16 v0, v30

    move/from16 v1, v18

    if-lt v0, v1, :cond_1f8

    .line 3309
    :cond_1ad
    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3310
    add-int v39, v36, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3311
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3289
    .end local v7    # "child":Landroid/view/View;
    .end local v25    # "isLastItem":Z
    .end local v30    # "nextIndex":I
    :cond_1c0
    :goto_1c0
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_13f

    .line 3233
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v8    # "count":I
    .end local v10    # "drawDividers":Z
    .end local v11    # "drawOverscrollFooter":Z
    .end local v12    # "drawOverscrollHeader":Z
    .end local v13    # "effectivePaddingLeft":I
    .end local v14    # "effectivePaddingRight":I
    .end local v15    # "fillForMissingDividers":Z
    .end local v16    # "first":I
    .end local v17    # "footerDividers":Z
    .end local v18    # "footerLimit":I
    .end local v19    # "headerCount":I
    .end local v20    # "headerDividers":Z
    .end local v21    # "i":I
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v26    # "itemCount":I
    .end local v27    # "itemIndex":I
    .end local v29    # "listRight":I
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "right":I
    .end local v37    # "scrollX":I
    :cond_1c4
    const/4 v12, 0x0

    goto/16 :goto_23

    .line 3234
    .restart local v12    # "drawOverscrollHeader":Z
    :cond_1c7
    const/4 v11, 0x0

    goto/16 :goto_26

    .line 3235
    .restart local v11    # "drawOverscrollFooter":Z
    :cond_1ca
    const/4 v10, 0x0

    goto/16 :goto_31

    .line 3256
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v6    # "bounds":Landroid/graphics/Rect;
    .restart local v8    # "count":I
    .restart local v10    # "drawDividers":Z
    .restart local v16    # "first":I
    .restart local v17    # "footerDividers":Z
    .restart local v18    # "footerLimit":I
    .restart local v19    # "headerCount":I
    .restart local v20    # "headerDividers":Z
    .restart local v26    # "itemCount":I
    :cond_1cd
    const/4 v15, 0x0

    goto/16 :goto_a6

    .line 3282
    .restart local v13    # "effectivePaddingLeft":I
    .restart local v14    # "effectivePaddingRight":I
    .restart local v15    # "fillForMissingDividers":Z
    .restart local v29    # "listRight":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    .restart local v36    # "right":I
    .restart local v37    # "scrollX":I
    :cond_1d0
    if-eqz v10, :cond_13d

    .line 3283
    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3284
    neg-int v0, v9

    move/from16 v39, v0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3285
    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_13d

    .line 3291
    .restart local v21    # "i":I
    .restart local v27    # "itemIndex":I
    :cond_1ec
    const/16 v24, 0x0

    goto/16 :goto_14d

    .line 3292
    .restart local v24    # "isHeader":Z
    :cond_1f0
    const/16 v23, 0x0

    goto/16 :goto_155

    .line 3296
    .restart local v7    # "child":Landroid/view/View;
    .restart local v23    # "isFooter":Z
    :cond_1f4
    const/16 v25, 0x0

    goto/16 :goto_173

    .line 3312
    .restart local v25    # "isLastItem":Z
    .restart local v30    # "nextIndex":I
    :cond_1f8
    if-eqz v15, :cond_1c0

    .line 3313
    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3314
    add-int v39, v36, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3315
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1c0

    .line 3321
    .end local v7    # "child":Landroid/view/View;
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v25    # "isLastItem":Z
    .end local v27    # "itemIndex":I
    .end local v30    # "nextIndex":I
    :cond_20c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mRight:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mScrollX:I

    move/from16 v40, v0

    add-int v31, v39, v40

    .line 3322
    .local v31, "overFooterRight":I
    if-eqz v11, :cond_23b

    add-int v39, v16, v8

    move/from16 v0, v39

    move/from16 v1, v26

    if-ne v0, v1, :cond_23b

    move/from16 v0, v31

    move/from16 v1, v36

    if-le v0, v1, :cond_23b

    .line 3324
    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3325
    move/from16 v0, v31

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3326
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/HorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3390
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v8    # "count":I
    .end local v13    # "effectivePaddingLeft":I
    .end local v14    # "effectivePaddingRight":I
    .end local v15    # "fillForMissingDividers":Z
    .end local v16    # "first":I
    .end local v17    # "footerDividers":Z
    .end local v18    # "footerLimit":I
    .end local v19    # "headerCount":I
    .end local v20    # "headerDividers":Z
    .end local v21    # "i":I
    .end local v26    # "itemCount":I
    .end local v29    # "listRight":I
    .end local v31    # "overFooterRight":I
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "right":I
    .end local v37    # "scrollX":I
    :cond_23b
    :goto_23b
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsHorizontalListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3391
    return-void

    .line 3331
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v6    # "bounds":Landroid/graphics/Rect;
    .restart local v8    # "count":I
    .restart local v13    # "effectivePaddingLeft":I
    .restart local v14    # "effectivePaddingRight":I
    .restart local v15    # "fillForMissingDividers":Z
    .restart local v16    # "first":I
    .restart local v17    # "footerDividers":Z
    .restart local v18    # "footerLimit":I
    .restart local v19    # "headerCount":I
    .restart local v20    # "headerDividers":Z
    .restart local v26    # "itemCount":I
    .restart local v29    # "listRight":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    :cond_23f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mScrollX:I

    move/from16 v37, v0

    .line 3333
    .restart local v37    # "scrollX":I
    if-lez v8, :cond_268

    if-eqz v12, :cond_268

    .line 3334
    move/from16 v0, v37

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3335
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLeft()I

    move-result v39

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3336
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/HorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3339
    :cond_268
    if-eqz v12, :cond_2ec

    const/16 v38, 0x1

    .line 3340
    .local v38, "start":I
    :goto_26c
    move/from16 v21, v38

    .restart local v21    # "i":I
    :goto_26e
    move/from16 v0, v21

    if-ge v0, v8, :cond_30d

    .line 3341
    add-int v27, v16, v21

    .line 3342
    .restart local v27    # "itemIndex":I
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_2f0

    const/16 v24, 0x1

    .line 3343
    .restart local v24    # "isHeader":Z
    :goto_27c
    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_2f3

    const/16 v23, 0x1

    .line 3344
    .restart local v23    # "isFooter":Z
    :goto_284
    if-nez v20, :cond_288

    if-nez v24, :cond_2e9

    :cond_288
    if-nez v17, :cond_28c

    if-nez v23, :cond_2e9

    .line 3345
    :cond_28c
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3346
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v28

    .line 3347
    .local v28, "left":I
    if-eqz v10, :cond_2e9

    move/from16 v0, v28

    if-le v0, v13, :cond_2e9

    .line 3348
    move/from16 v0, v21

    move/from16 v1, v38

    if-ne v0, v1, :cond_2f6

    const/16 v22, 0x1

    .line 3349
    .local v22, "isFirstItem":Z
    :goto_2a6
    add-int/lit8 v35, v27, -0x1

    .line 3352
    .local v35, "previousIndex":I
    if-nez v5, :cond_2d4

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-nez v39, :cond_2ba

    if-eqz v20, :cond_2b6

    if-nez v24, :cond_2ba

    :cond_2b6
    if-eqz v17, :cond_2f9

    if-eqz v23, :cond_2f9

    :cond_2ba
    if-nez v22, :cond_2d4

    move/from16 v0, v35

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-nez v39, :cond_2d4

    if-eqz v20, :cond_2cc

    move/from16 v0, v35

    move/from16 v1, v19

    if-lt v0, v1, :cond_2d4

    :cond_2cc
    if-eqz v17, :cond_2f9

    move/from16 v0, v35

    move/from16 v1, v18

    if-lt v0, v1, :cond_2f9

    .line 3358
    :cond_2d4
    sub-int v39, v28, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3359
    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3364
    add-int/lit8 v39, v21, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3340
    .end local v7    # "child":Landroid/view/View;
    .end local v22    # "isFirstItem":Z
    .end local v28    # "left":I
    .end local v35    # "previousIndex":I
    :cond_2e9
    :goto_2e9
    add-int/lit8 v21, v21, 0x1

    goto :goto_26e

    .line 3339
    .end local v21    # "i":I
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v27    # "itemIndex":I
    .end local v38    # "start":I
    :cond_2ec
    const/16 v38, 0x0

    goto/16 :goto_26c

    .line 3342
    .restart local v21    # "i":I
    .restart local v27    # "itemIndex":I
    .restart local v38    # "start":I
    :cond_2f0
    const/16 v24, 0x0

    goto :goto_27c

    .line 3343
    .restart local v24    # "isHeader":Z
    :cond_2f3
    const/16 v23, 0x0

    goto :goto_284

    .line 3348
    .restart local v7    # "child":Landroid/view/View;
    .restart local v23    # "isFooter":Z
    .restart local v28    # "left":I
    :cond_2f6
    const/16 v22, 0x0

    goto :goto_2a6

    .line 3365
    .restart local v22    # "isFirstItem":Z
    .restart local v35    # "previousIndex":I
    :cond_2f9
    if-eqz v15, :cond_2e9

    .line 3366
    sub-int v39, v28, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3367
    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3368
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2e9

    .line 3374
    .end local v7    # "child":Landroid/view/View;
    .end local v22    # "isFirstItem":Z
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v27    # "itemIndex":I
    .end local v28    # "left":I
    .end local v35    # "previousIndex":I
    :cond_30d
    if-lez v8, :cond_23b

    if-lez v37, :cond_23b

    .line 3375
    if-eqz v11, :cond_32a

    .line 3376
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalListView;->mRight:I

    .line 3377
    .local v3, "absListRight":I
    iput v3, v6, Landroid/graphics/Rect;->left:I

    .line 3378
    add-int v39, v3, v37

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3379
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v6}, Landroid/widget/HorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_23b

    .line 3380
    .end local v3    # "absListRight":I
    :cond_32a
    if-eqz v10, :cond_23b

    .line 3381
    move/from16 v0, v29

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3382
    add-int v39, v29, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3383
    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Landroid/widget/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_23b
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2110
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2111
    .local v1, "handled":Z
    if-nez v1, :cond_1a

    .line 2113
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2114
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1a

    .line 2117
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/HorizontalListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2120
    .end local v0    # "focused":Landroid/view/View;
    :cond_1a
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 3395
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsHorizontalListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3396
    .local v0, "more":Z
    iget-boolean v1, p0, Landroid/widget/HorizontalListView;->mCachingActive:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_f

    .line 3397
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/HorizontalListView;->mCachingActive:Z

    .line 3399
    :cond_f
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 3413
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3415
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3416
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3417
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3207
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 3209
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3210
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3212
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 3213
    .local v0, "span":I
    if-ge v0, v1, :cond_17

    .line 3214
    iget v2, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Rect;->right:I

    .line 3217
    :cond_17
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3218
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3220
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3221
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3190
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 3192
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3193
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3195
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 3196
    .local v0, "span":I
    if-ge v0, v1, :cond_17

    .line 3197
    iget v2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Rect;->left:I

    .line 3200
    :cond_17
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3201
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3203
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3204
    return-void
.end method

.method fillGap(Z)V
    .registers 8
    .param p1, "rightSide"    # Z

    .prologue
    const/16 v5, 0x22

    .line 653
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v0

    .line 654
    .local v0, "count":I
    if-eqz p1, :cond_33

    .line 655
    const/4 v1, 0x0

    .line 656
    .local v1, "paddingLeft":I
    iget v4, p0, Landroid/widget/HorizontalListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_13

    .line 657
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getListPaddingLeft()I

    move-result v1

    .line 659
    :cond_13
    if-lez v0, :cond_31

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 661
    .local v3, "startOffset":I
    :goto_23
    iget v4, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Landroid/widget/HorizontalListView;->fillRight(II)Landroid/view/View;

    .line 662
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/HorizontalListView;->correctTooHigh(I)V

    .line 673
    .end local v1    # "paddingLeft":I
    :goto_30
    return-void

    .end local v3    # "startOffset":I
    .restart local v1    # "paddingLeft":I
    :cond_31
    move v3, v1

    .line 659
    goto :goto_23

    .line 664
    .end local v1    # "paddingLeft":I
    :cond_33
    const/4 v2, 0x0

    .line 665
    .local v2, "paddingRight":I
    iget v4, p0, Landroid/widget/HorizontalListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_3e

    .line 666
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getListPaddingRight()I

    move-result v2

    .line 668
    :cond_3e
    if-lez v0, :cond_5c

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 670
    .restart local v3    # "startOffset":I
    :goto_4d
    iget v4, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 671
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/HorizontalListView;->correctTooLow(I)V

    goto :goto_30

    .line 668
    .end local v3    # "startOffset":I
    :cond_5c
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v4

    sub-int v3, v4, v2

    goto :goto_4d
.end method

.method findMotionRow(I)I
    .registers 6
    .param p1, "x"    # I

    .prologue
    .line 1316
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v0

    .line 1317
    .local v0, "childCount":I
    if-lez v0, :cond_33

    .line 1318
    iget-boolean v3, p0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_1e

    .line 1319
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_33

    .line 1320
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1321
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_1b

    .line 1322
    iget v3, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1334
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1a
    return v3

    .line 1319
    .restart local v1    # "i":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1326
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1e
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_20
    if-ltz v1, :cond_33

    .line 1327
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1328
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_30

    .line 1329
    iget v3, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1a

    .line 1326
    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_20

    .line 1334
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_33
    const/4 v3, -0x1

    goto :goto_1a
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 8
    .param p3, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3741
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/HorizontalListView$FixedViewInfo;>;"
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_23

    .line 3742
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3745
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_23

    .line 3746
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3748
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_20

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_20

    .line 3749
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3751
    if-eqz v2, :cond_20

    .line 3757
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1f
    return-object v2

    .line 3745
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3757
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_23
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 6
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3719
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3720
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1a

    .line 3721
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/HorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3722
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 3731
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_f
    return-object v1

    .line 3726
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_10
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/HorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3727
    if-eqz v0, :cond_1a

    move-object v1, v0

    .line 3728
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_f

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1a
    move-object v1, v0

    .line 3731
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_f
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 7
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3646
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/HorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_21

    .line 3647
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3650
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_21

    .line 3651
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3653
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3654
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3656
    if-eqz v2, :cond_1e

    .line 3662
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1d
    return-object v2

    .line 3650
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3662
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_21
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 3627
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3628
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1a

    .line 3629
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/HorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3630
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 3638
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_f
    return-object v1

    .line 3633
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_10
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/HorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3634
    if-eqz v0, :cond_1a

    move-object v1, v0

    .line 3635
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_f

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1a
    move-object v1, v0

    .line 3638
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_f
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .registers 7
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/HorizontalListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3692
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/HorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_21

    .line 3693
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3696
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_21

    .line 3697
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/HorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3699
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3700
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3702
    if-eqz v2, :cond_1e

    .line 3708
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1d
    return-object v2

    .line 3696
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3708
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_21
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 5
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 3672
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3673
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1a

    .line 3674
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/HorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3675
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 3684
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_f
    return-object v1

    .line 3679
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_10
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/HorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3680
    if-eqz v0, :cond_1a

    move-object v1, v0

    .line 3681
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_f

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1a
    move-object v1, v0

    .line 3684
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_f
.end method

.method fullScroll(I)Z
    .registers 8
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2354
    const/4 v1, 0x0

    .line 2355
    .local v1, "moved":Z
    const/16 v3, 0x11

    if-ne p1, v3, :cond_2b

    .line 2356
    iget v3, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-eqz v3, :cond_1c

    .line 2357
    iget v3, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/HorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2358
    .local v2, "position":I
    if-ltz v2, :cond_1b

    .line 2359
    iput v5, p0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    .line 2360
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->setSelectionInt(I)V

    .line 2361
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invokeOnItemScrollListener()V

    .line 2363
    :cond_1b
    const/4 v1, 0x1

    .line 2379
    .end local v2    # "position":I
    :cond_1c
    :goto_1c
    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 2380
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->awakenScrollBars()Z

    .line 2381
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    .line 2384
    :cond_2a
    return v1

    .line 2365
    :cond_2b
    const/16 v3, 0x42

    if-ne p1, v3, :cond_1c

    .line 2366
    iget v3, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v0, v3, -0x1

    .line 2367
    .local v0, "lastItem":I
    iget v3, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-ge v3, v0, :cond_1c

    .line 2368
    iget v3, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v0, v4}, Landroid/widget/HorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2370
    .restart local v2    # "position":I
    if-ltz v2, :cond_48

    .line 2371
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    .line 2372
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->setSelectionInt(I)V

    .line 2373
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invokeOnItemScrollListener()V

    .line 2375
    :cond_48
    const/4 v1, 0x1

    goto :goto_1c
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3772
    iget-object v8, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_12

    iget-object v8, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 3773
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 3802
    :cond_11
    :goto_11
    return-object v5

    .line 3778
    :cond_12
    iget v8, p0, Landroid/widget/HorizontalListView;->mChoiceMode:I

    if-eqz v8, :cond_4c

    iget-object v8, p0, Landroid/widget/HorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_4c

    iget-object v8, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_4c

    .line 3779
    iget-object v7, p0, Landroid/widget/HorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3780
    .local v7, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 3781
    .local v3, "count":I
    new-array v5, v3, [J

    .line 3782
    .local v5, "ids":[J
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3784
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 3785
    .local v1, "checkedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v2, v1

    .end local v1    # "checkedCount":I
    .local v2, "checkedCount":I
    :goto_2b
    if-ge v4, v3, :cond_43

    .line 3786
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 3787
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 3785
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "checkedCount":I
    .restart local v2    # "checkedCount":I
    goto :goto_2b

    .line 3793
    :cond_43
    if-eq v2, v3, :cond_11

    .line 3796
    new-array v6, v2, [J

    .line 3797
    .local v6, "result":[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    move-object v5, v6

    .line 3799
    goto :goto_11

    .line 3802
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "checkedCount":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    .end local v6    # "result":[J
    .end local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_4c
    new-array v5, v10, [J

    goto :goto_11

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "checkedCount":I
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "ids":[J
    .restart local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_4f
    move v1, v2

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    goto :goto_3f
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3425
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .registers 2

    .prologue
    .line 3450
    iget v0, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .registers 2

    .prologue
    .line 3152
    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .registers 4

    .prologue
    .line 200
    const v0, 0x3ea8f5c3    # 0.33f

    iget v1, p0, Landroid/widget/HorizontalListView;->mRight:I

    iget v2, p0, Landroid/widget/HorizontalListView;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3547
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3528
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 3157
    iget-boolean v5, p0, Landroid/widget/HorizontalListView;->mCachingActive:Z

    if-eqz v5, :cond_13

    iget-boolean v5, p0, Landroid/widget/HorizontalListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_13

    iget-boolean v5, p0, Landroid/widget/HorizontalListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_13

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_19

    :cond_13
    invoke-super {p0}, Landroid/widget/AbsHorizontalListView;->isOpaque()Z

    move-result v5

    if-eqz v5, :cond_32

    :cond_19
    const/4 v4, 0x1

    .line 3159
    .local v4, "retValue":Z
    :goto_1a
    if-eqz v4, :cond_31

    .line 3161
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_34

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 3162
    .local v2, "listLeft":I
    :goto_24
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3163
    .local v0, "first":Landroid/view/View;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v2, :cond_37

    :cond_30
    move v4, v6

    .line 3173
    .end local v0    # "first":Landroid/view/View;
    .end local v2    # "listLeft":I
    .end local v4    # "retValue":Z
    :cond_31
    :goto_31
    return v4

    :cond_32
    move v4, v6

    .line 3157
    goto :goto_1a

    .line 3161
    .restart local v4    # "retValue":Z
    :cond_34
    iget v2, p0, Landroid/widget/HorizontalListView;->mPaddingLeft:I

    goto :goto_24

    .line 3166
    .restart local v0    # "first":Landroid/view/View;
    .restart local v2    # "listLeft":I
    :cond_37
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v7

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_59

    iget-object v5, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    :goto_43
    sub-int v3, v7, v5

    .line 3168
    .local v3, "listRight":I
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3169
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_57

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v5, v3, :cond_31

    :cond_57
    move v4, v6

    .line 3170
    goto :goto_31

    .line 3166
    .end local v1    # "last":Landroid/view/View;
    .end local v3    # "listRight":I
    :cond_59
    iget v5, p0, Landroid/widget/HorizontalListView;->mPaddingRight:I

    goto :goto_43
.end method

.method protected layoutChildren()V
    .registers 29

    .prologue
    .line 1493
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/widget/HorizontalListView;->mBlockLayoutRequests:Z

    .line 1494
    .local v10, "blockLayoutRequests":Z
    if-eqz v10, :cond_7

    .line 1742
    :cond_6
    :goto_6
    return-void

    .line 1498
    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalListView;->mBlockLayoutRequests:Z

    .line 1501
    :try_start_c
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    .line 1503
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->invalidate()V

    .line 1505
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_26

    .line 1506
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->resetList()V

    .line 1507
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->invokeOnItemScrollListener()V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_125

    .line 1738
    if-nez v10, :cond_6

    .line 1739
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalListView;->mBlockLayoutRequests:Z

    goto :goto_6

    .line 1511
    :cond_26
    :try_start_26
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 1512
    .local v6, "childrenLeft":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mLeft:I

    move/from16 v26, v0

    sub-int v2, v2, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v7, v2, v26

    .line 1513
    .local v7, "childrenRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v12

    .line 1515
    .local v12, "childCount":I
    const/16 v18, 0x0

    .line 1516
    .local v18, "index":I
    const/4 v5, 0x0

    .line 1519
    .local v5, "delta":I
    const/4 v3, 0x0

    .line 1520
    .local v3, "oldSel":Landroid/view/View;
    const/16 v20, 0x0

    .line 1521
    .local v20, "oldFirst":Landroid/view/View;
    const/4 v4, 0x0

    .line 1524
    .local v4, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_3b4

    .line 1539
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v18, v2, v26

    .line 1540
    if-ltz v18, :cond_72

    move/from16 v0, v18

    if-ge v0, v12, :cond_72

    .line 1541
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1545
    :cond_72
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1547
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mNextSelectedPosition:I

    if-ltz v2, :cond_8b

    .line 1548
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    move/from16 v26, v0

    sub-int v5, v2, v26

    .line 1552
    :cond_8b
    add-int v2, v18, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1556
    :cond_93
    :goto_93
    :pswitch_93
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalListView;->mDataChanged:Z

    .line 1557
    .local v13, "dataChanged":Z
    if-eqz v13, :cond_9c

    .line 1558
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->handleDataChanged()V

    .line 1563
    :cond_9c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    if-nez v2, :cond_cc

    .line 1564
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->resetList()V

    .line 1565
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->invokeOnItemScrollListener()V
    :try_end_a8
    .catchall {:try_start_26 .. :try_end_a8} :catchall_125

    .line 1738
    if-nez v10, :cond_6

    .line 1739
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalListView;->mBlockLayoutRequests:Z

    goto/16 :goto_6

    .line 1526
    .end local v13    # "dataChanged":Z
    :pswitch_b1
    :try_start_b1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v18, v2, v26

    .line 1527
    if-ltz v18, :cond_93

    move/from16 v0, v18

    if-ge v0, v12, :cond_93

    .line 1528
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_93

    .line 1567
    .restart local v13    # "dataChanged":Z
    :cond_cc
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    move/from16 v0, v26

    if-eq v2, v0, :cond_131

    .line 1568
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ") with Adapter("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ")]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_125
    .catchall {:try_start_b1 .. :try_end_125} :catchall_125

    .line 1738
    .end local v3    # "oldSel":Landroid/view/View;
    .end local v4    # "newSel":Landroid/view/View;
    .end local v5    # "delta":I
    .end local v6    # "childrenLeft":I
    .end local v7    # "childrenRight":I
    .end local v12    # "childCount":I
    .end local v13    # "dataChanged":Z
    .end local v18    # "index":I
    .end local v20    # "oldFirst":Landroid/view/View;
    :catchall_125
    move-exception v2

    if-nez v10, :cond_130

    .line 1739
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HorizontalListView;->mBlockLayoutRequests:Z

    :cond_130
    throw v2

    .line 1576
    .restart local v3    # "oldSel":Landroid/view/View;
    .restart local v4    # "newSel":Landroid/view/View;
    .restart local v5    # "delta":I
    .restart local v6    # "childrenLeft":I
    .restart local v7    # "childrenRight":I
    .restart local v12    # "childCount":I
    .restart local v13    # "dataChanged":Z
    .restart local v18    # "index":I
    .restart local v20    # "oldFirst":Landroid/view/View;
    :cond_131
    :try_start_131
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalListView;->setSelectedPositionInt(I)V

    .line 1580
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getAccessibilityFocusedChild()Landroid/view/View;

    move-result-object v8

    .line 1581
    .local v8, "accessFocusedChild":Landroid/view/View;
    if-eqz v8, :cond_17c

    .line 1582
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/HorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v9

    .line 1583
    .local v9, "accessibilityFocusPosition":I
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1591
    :goto_14a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v16

    .line 1592
    .local v16, "focusedChild":Landroid/view/View;
    if-eqz v16, :cond_156

    .line 1593
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1598
    :cond_156
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    .line 1599
    .local v14, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    move-object/from16 v22, v0

    .line 1600
    .local v22, "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    if-eqz v13, :cond_17e

    .line 1601
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_164
    move/from16 v0, v17

    if-ge v0, v12, :cond_183

    .line 1602
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v26, v14, v17

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1601
    add-int/lit8 v17, v17, 0x1

    goto :goto_164

    .line 1585
    .end local v9    # "accessibilityFocusPosition":I
    .end local v14    # "firstPosition":I
    .end local v16    # "focusedChild":Landroid/view/View;
    .end local v17    # "i":I
    .end local v22    # "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    :cond_17c
    const/4 v9, -0x1

    .restart local v9    # "accessibilityFocusPosition":I
    goto :goto_14a

    .line 1605
    .restart local v14    # "firstPosition":I
    .restart local v16    # "focusedChild":Landroid/view/View;
    .restart local v22    # "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    :cond_17e
    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v14}, Landroid/widget/AbsHorizontalListView$RecycleBin;->fillActiveViews(II)V

    .line 1609
    :cond_183
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->detachAllViewsFromParent()V

    .line 1610
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsHorizontalListView$RecycleBin;->removeSkippedScrap()V

    .line 1612
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_3c2

    .line 1639
    if-nez v12, :cond_2fc

    .line 1640
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    if-nez v2, :cond_2d7

    .line 1641
    const/4 v2, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1642
    .local v21, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->setSelectedPositionInt(I)V

    .line 1643
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/HorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v24

    .line 1664
    .end local v6    # "childrenLeft":I
    .end local v21    # "position":I
    .local v24, "sel":Landroid/view/View;
    :goto_1b0
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsHorizontalListView$RecycleBin;->scrapActiveViews()V

    .line 1666
    if-eqz v24, :cond_372

    .line 1667
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    if-eqz v2, :cond_34d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_34d

    const/16 v25, 0x1

    .line 1668
    .local v25, "shouldPlaceFocus":Z
    :goto_1c3
    if-eqz v16, :cond_351

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_351

    const/16 v19, 0x1

    .line 1669
    .local v19, "maintainedFocus":Z
    :goto_1cd
    if-eqz v25, :cond_368

    if-nez v19, :cond_368

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_368

    .line 1670
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_355

    .line 1672
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1673
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1685
    :goto_1ea
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalListView;->mSelectedLeft:I

    .line 1700
    .end local v19    # "maintainedFocus":Z
    .end local v25    # "shouldPlaceFocus":Z
    :cond_1f2
    :goto_1f2
    if-eqz v8, :cond_224

    .line 1701
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1705
    invoke-virtual {v8}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v2

    if-nez v2, :cond_224

    const/4 v2, -0x1

    if-eq v9, v2, :cond_224

    .line 1708
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    sub-int v2, v9, v2

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v21

    .line 1710
    .restart local v21    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 1711
    .local v23, "restoreView":Landroid/view/View;
    if-eqz v23, :cond_224

    .line 1712
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 1717
    .end local v21    # "position":I
    .end local v23    # "restoreView":Landroid/view/View;
    :cond_224
    if-eqz v16, :cond_22c

    .line 1718
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1721
    :cond_22c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    .line 1722
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalListView;->mDataChanged:Z

    .line 1723
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v2, :cond_24a

    .line 1724
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 1725
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/HorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1727
    :cond_24a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalListView;->mNeedSync:Z

    .line 1728
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalListView;->setNextSelectedPositionInt(I)V

    .line 1730
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->updateScrollIndicators()V

    .line 1732
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    if-lez v2, :cond_264

    .line 1733
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->checkSelectionChanged()V

    .line 1736
    :cond_264
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->invokeOnItemScrollListener()V
    :try_end_267
    .catchall {:try_start_131 .. :try_end_267} :catchall_125

    .line 1738
    if-nez v10, :cond_6

    .line 1739
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalListView;->mBlockLayoutRequests:Z

    goto/16 :goto_6

    .line 1614
    .end local v24    # "sel":Landroid/view/View;
    .restart local v6    # "childrenLeft":I
    :pswitch_270
    if-eqz v4, :cond_27e

    .line 1615
    :try_start_272
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Landroid/widget/HorizontalListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_1b0

    .line 1617
    .end local v24    # "sel":Landroid/view/View;
    :cond_27e
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/widget/HorizontalListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v24

    .line 1619
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_1b0

    .line 1621
    .end local v24    # "sel":Landroid/view/View;
    :pswitch_286
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mSpecificTop:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v2, v1}, Landroid/widget/HorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .line 1622
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_1b0

    .line 1624
    .end local v24    # "sel":Landroid/view/View;
    :pswitch_29a
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v24

    .line 1625
    .restart local v24    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    goto/16 :goto_1b0

    .line 1628
    .end local v24    # "sel":Landroid/view/View;
    :pswitch_2ab
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    .line 1629
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/HorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v24

    .line 1630
    .restart local v24    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalListView;->adjustViewsLeftOrRight()V

    goto/16 :goto_1b0

    .line 1633
    .end local v24    # "sel":Landroid/view/View;
    :pswitch_2bb
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mSpecificTop:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v2, v1}, Landroid/widget/HorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .line 1634
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_1b0

    .end local v24    # "sel":Landroid/view/View;
    :pswitch_2cf
    move-object/from16 v2, p0

    .line 1636
    invoke-direct/range {v2 .. v7}, Landroid/widget/HorizontalListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v24

    .line 1637
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_1b0

    .line 1645
    .end local v24    # "sel":Landroid/view/View;
    :cond_2d7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1646
    .restart local v21    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->setSelectedPositionInt(I)V

    .line 1647
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Landroid/widget/HorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v24

    .line 1648
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_1b0

    .line 1650
    .end local v21    # "position":I
    .end local v24    # "sel":Landroid/view/View;
    :cond_2fc
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-ltz v2, :cond_323

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v2, v0, :cond_323

    .line 1651
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-nez v3, :cond_31e

    .end local v6    # "childrenLeft":I
    :goto_316
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/HorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_1b0

    .end local v24    # "sel":Landroid/view/View;
    .restart local v6    # "childrenLeft":I
    :cond_31e
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    goto :goto_316

    .line 1653
    :cond_323
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v2, v0, :cond_344

    .line 1654
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    if-nez v20, :cond_33f

    .end local v6    # "childrenLeft":I
    :goto_337
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/HorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_1b0

    .end local v24    # "sel":Landroid/view/View;
    .restart local v6    # "childrenLeft":I
    :cond_33f
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v6

    goto :goto_337

    .line 1657
    :cond_344
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/HorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_1b0

    .line 1667
    .end local v6    # "childrenLeft":I
    :cond_34d
    const/16 v25, 0x0

    goto/16 :goto_1c3

    .line 1668
    .restart local v25    # "shouldPlaceFocus":Z
    :cond_351
    const/16 v19, 0x0

    goto/16 :goto_1cd

    .line 1676
    .restart local v19    # "maintainedFocus":Z
    :cond_355
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v15

    .line 1677
    .local v15, "focused":Landroid/view/View;
    if-eqz v15, :cond_35e

    .line 1678
    invoke-virtual {v15}, Landroid/view/View;->clearFocus()V

    .line 1680
    :cond_35e
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/widget/HorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_1ea

    .line 1683
    .end local v15    # "focused":Landroid/view/View;
    :cond_368
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/widget/HorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_1ea

    .line 1689
    .end local v19    # "maintainedFocus":Z
    .end local v25    # "shouldPlaceFocus":Z
    :cond_372
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mTouchMode:I

    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v2, v0, :cond_386

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mTouchMode:I

    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v2, v0, :cond_3a5

    .line 1690
    :cond_386
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v2, v2, v26

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1691
    .local v11, "child":Landroid/view/View;
    if-eqz v11, :cond_1f2

    .line 1692
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Landroid/widget/HorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_1f2

    .line 1695
    .end local v11    # "child":Landroid/view/View;
    :cond_3a5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalListView;->mSelectedLeft:I

    .line 1696
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_3b1
    .catchall {:try_start_272 .. :try_end_3b1} :catchall_125

    goto/16 :goto_1f2

    .line 1524
    nop

    :pswitch_data_3b4
    .packed-switch 0x1
        :pswitch_93
        :pswitch_b1
        :pswitch_93
        :pswitch_93
        :pswitch_93
    .end packed-switch

    .line 1612
    :pswitch_data_3c2
    .packed-switch 0x1
        :pswitch_2ab
        :pswitch_270
        :pswitch_29a
        :pswitch_2bb
        :pswitch_286
        :pswitch_2cf
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .registers 7
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v2, -0x1

    .line 2012
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2013
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2036
    :cond_b
    :goto_b
    return v2

    .line 2017
    :cond_c
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2018
    .local v1, "count":I
    iget-boolean v3, p0, Landroid/widget/HorizontalListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_37

    .line 2019
    if-eqz p2, :cond_26

    .line 2020
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2021
    :goto_1b
    if-ge p1, v1, :cond_37

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_37

    .line 2022
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    .line 2025
    :cond_26
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2026
    :goto_2c
    if-ltz p1, :cond_37

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_37

    .line 2027
    add-int/lit8 p1, p1, -0x1

    goto :goto_2c

    .line 2032
    :cond_37
    if-ltz p1, :cond_b

    if-ge p1, v1, :cond_b

    move v2, p1

    .line 2036
    goto :goto_b
.end method

.method lookForSelectablePositionAfter(IIZ)I
    .registers 10
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .prologue
    const/4 v3, -0x1

    .line 2052
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2053
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_b
    move v1, v3

    .line 2084
    :cond_c
    :goto_c
    return v1

    .line 2058
    :cond_d
    invoke-virtual {p0, p2, p3}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2059
    .local v1, "after":I
    if-ne v1, v3, :cond_c

    .line 2064
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2065
    .local v2, "count":I
    add-int/lit8 v4, v2, -0x1

    invoke-static {p1, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 2066
    if-eqz p3, :cond_36

    .line 2067
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v2, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2068
    :goto_27
    if-le p2, p1, :cond_32

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_32

    .line 2069
    add-int/lit8 p2, p2, -0x1

    goto :goto_27

    .line 2071
    :cond_32
    if-gt p2, p1, :cond_4c

    move v1, v3

    .line 2072
    goto :goto_c

    .line 2075
    :cond_36
    const/4 v4, 0x0

    add-int/lit8 v5, p2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2076
    :goto_3d
    if-ge p2, p1, :cond_48

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_48

    .line 2077
    add-int/lit8 p2, p2, 0x1

    goto :goto_3d

    .line 2079
    :cond_48
    if-lt p2, p1, :cond_4c

    move v1, v3

    .line 2080
    goto :goto_c

    :cond_4c
    move v1, p2

    .line 2084
    goto :goto_c
.end method

.method final measureWidthOfChildren(IIIII)I
    .registers 18
    .param p1, "heightMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxWidth"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 1253
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1254
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_f

    .line 1255
    iget-object v10, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v6, v10, v11

    .line 1311
    :cond_e
    :goto_e
    return v6

    .line 1259
    :cond_f
    iget-object v10, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v9, v10, v11

    .line 1260
    .local v9, "returnedWidth":I
    iget v10, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    if-lez v10, :cond_70

    iget-object v10, p0, Landroid/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_70

    iget v3, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    .line 1263
    .local v3, "dividerHeight":I
    :goto_23
    const/4 v6, 0x0

    .line 1268
    .local v6, "prevWidthWithoutPartialChild":I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2d

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1269
    :cond_2d
    iget-object v7, p0, Landroid/widget/HorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    .line 1270
    .local v7, "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->recycleOnMeasure()Z

    move-result v8

    .line 1271
    .local v8, "recyle":Z
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mIsScrap:[Z

    .line 1273
    .local v5, "isScrap":[Z
    move v4, p2

    .local v4, "i":I
    :goto_36
    if-gt v4, p3, :cond_7c

    .line 1274
    invoke-virtual {p0, v4, v5}, Landroid/widget/HorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1276
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_79

    .line 1277
    invoke-direct {p0, v2, v4, p1}, Landroid/widget/HorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1279
    if-lez v4, :cond_44

    .line 1281
    add-int/2addr v9, v3

    .line 1285
    :cond_44
    if-eqz v8, :cond_58

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsHorizontalListView$LayoutParams;

    iget v10, v10, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_58

    .line 1287
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1290
    :cond_58
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    .line 1292
    move/from16 v0, p4

    if-lt v9, v0, :cond_72

    .line 1295
    if-ltz p5, :cond_6d

    move/from16 v0, p5

    if-le v4, v0, :cond_6d

    if-lez v6, :cond_6d

    move/from16 v0, p4

    if-ne v9, v0, :cond_e

    :cond_6d
    move/from16 v6, p4

    goto :goto_e

    .line 1260
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "dividerHeight":I
    .end local v4    # "i":I
    .end local v5    # "isScrap":[Z
    .end local v6    # "prevWidthWithoutPartialChild":I
    .end local v7    # "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    .end local v8    # "recyle":Z
    :cond_70
    const/4 v3, 0x0

    goto :goto_23

    .line 1303
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "dividerHeight":I
    .restart local v4    # "i":I
    .restart local v5    # "isScrap":[Z
    .restart local v6    # "prevWidthWithoutPartialChild":I
    .restart local v7    # "recycleBin":Landroid/widget/AbsHorizontalListView$RecycleBin;
    .restart local v8    # "recyle":Z
    :cond_72
    if-ltz p5, :cond_79

    move/from16 v0, p5

    if-lt v4, v0, :cond_79

    .line 1304
    move v6, v9

    .line 1273
    :cond_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .end local v2    # "child":Landroid/view/View;
    :cond_7c
    move v6, v9

    .line 1311
    goto :goto_e
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 3609
    invoke-super {p0}, Landroid/widget/AbsHorizontalListView;->onFinishInflate()V

    .line 3611
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v0

    .line 3612
    .local v0, "count":I
    if-lez v0, :cond_19

    .line 3613
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_16

    .line 3614
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->addHeaderView(Landroid/view/View;)V

    .line 3613
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3616
    :cond_16
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->removeAllViews()V

    .line 3618
    .end local v1    # "i":I
    :cond_19
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 19
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3552
    invoke-super/range {p0 .. p3}, Landroid/widget/AbsHorizontalListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3554
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3555
    .local v2, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    .line 3556
    .local v5, "closetChildIndex":I
    const/4 v4, 0x0

    .line 3557
    .local v4, "closestChildLeft":I
    if-eqz v2, :cond_5d

    if-eqz p1, :cond_5d

    if-eqz p3, :cond_5d

    .line 3558
    iget v12, p0, Landroid/widget/HorizontalListView;->mScrollX:I

    iget v13, p0, Landroid/widget/HorizontalListView;->mScrollY:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 3562
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v13

    iget v14, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_29

    .line 3563
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    .line 3564
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->layoutChildren()V

    .line 3569
    :cond_29
    iget-object v11, p0, Landroid/widget/HorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 3570
    .local v11, "otherRect":Landroid/graphics/Rect;
    const v9, 0x7fffffff

    .line 3571
    .local v9, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v3

    .line 3572
    .local v3, "childCount":I
    iget v7, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    .line 3574
    .local v7, "firstPosition":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_35
    if-ge v8, v3, :cond_5d

    .line 3576
    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_42

    .line 3574
    :cond_3f
    :goto_3f
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    .line 3580
    :cond_42
    invoke-virtual {p0, v8}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3581
    .local v10, "other":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3582
    invoke-virtual {p0, v10, v11}, Landroid/widget/HorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3583
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, Landroid/widget/HorizontalListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 3585
    .local v6, "distance":I
    if-ge v6, v9, :cond_3f

    .line 3586
    move v9, v6

    .line 3587
    move v5, v8

    .line 3588
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v4

    goto :goto_3f

    .line 3593
    .end local v3    # "childCount":I
    .end local v6    # "distance":I
    .end local v7    # "firstPosition":I
    .end local v8    # "i":I
    .end local v9    # "minDistance":I
    .end local v10    # "other":Landroid/view/View;
    .end local v11    # "otherRect":Landroid/graphics/Rect;
    :cond_5d
    if-ltz v5, :cond_66

    .line 3594
    iget v12, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, Landroid/widget/HorizontalListView;->setSelectionFromTop(II)V

    .line 3598
    :goto_65
    return-void

    .line 3596
    :cond_66
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->requestLayout()V

    goto :goto_65
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3807
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3808
    const-class v0, Landroid/widget/HorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3809
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 3813
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3814
    const-class v2, Landroid/widget/HorizontalListView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3816
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getCount()I

    move-result v1

    .line 3817
    .local v1, "count":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 3818
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 3819
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3904
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsHorizontalListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3906
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 3907
    .local v2, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-eqz v2, :cond_1b

    iget v5, v2, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_1b

    move v0, v3

    .line 3908
    .local v0, "isHeading":Z
    :goto_13
    invoke-static {v4, v3, p2, v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v1

    .line 3909
    .local v1, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 3910
    return-void

    .end local v0    # "isHeading":Z
    .end local v1    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    :cond_1b
    move v0, v4

    .line 3907
    goto :goto_13
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2125
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/HorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2135
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/HorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1144
    invoke-super {p0, p1, p2}, Landroid/widget/AbsHorizontalListView;->onMeasure(II)V

    .line 1146
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1147
    .local v12, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1148
    .local v10, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1149
    .local v4, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 1151
    .local v11, "heightSize":I
    const/4 v9, 0x0

    .line 1152
    .local v9, "childWidth":I
    const/4 v7, 0x0

    .line 1153
    .local v7, "childHeight":I
    const/4 v8, 0x0

    .line 1155
    .local v8, "childState":I
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_92

    move v0, v2

    :goto_1d
    iput v0, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    .line 1156
    iget v0, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    if-lez v0, :cond_5b

    if-eqz v12, :cond_27

    if-nez v10, :cond_5b

    .line 1158
    :cond_27
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/HorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1160
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6, v2, p2}, Landroid/widget/HorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1162
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1163
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1164
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Landroid/widget/HorizontalListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1166
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    iget v0, v0, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1168
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Landroid/widget/AbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1172
    .end local v6    # "child":Landroid/view/View;
    :cond_5b
    if-nez v10, :cond_99

    .line 1173
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getHorizontalScrollbarHeight()I

    move-result v1

    add-int v11, v0, v1

    .line 1179
    :goto_6d
    if-nez v12, :cond_81

    .line 1180
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1184
    :cond_81
    const/high16 v0, -0x80000000

    if-ne v12, v0, :cond_8c

    move-object v0, p0

    move v1, p2

    move v5, v3

    .line 1186
    invoke-virtual/range {v0 .. v5}, Landroid/widget/HorizontalListView;->measureWidthOfChildren(IIIII)I

    move-result v4

    .line 1189
    :cond_8c
    invoke-virtual {p0, v4, v11}, Landroid/widget/HorizontalListView;->setMeasuredDimension(II)V

    .line 1190
    iput p2, p0, Landroid/widget/HorizontalListView;->mHeightMeasureSpec:I

    .line 1191
    return-void

    .line 1155
    :cond_92
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_1d

    .line 1176
    :cond_99
    const/high16 v0, -0x1000000

    and-int/2addr v0, v8

    or-int/2addr v11, v0

    goto :goto_6d
.end method

.method protected onSizeChanged(IIII)V
    .registers 12
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1125
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3e

    .line 1126
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1127
    .local v2, "focusedChild":Landroid/view/View;
    if-eqz v2, :cond_3e

    .line 1128
    iget v5, p0, Landroid/widget/HorizontalListView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v0, v5, v6

    .line 1129
    .local v0, "childPosition":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1130
    .local v1, "childRight":I
    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/HorizontalListView;->mPaddingLeft:I

    sub-int v6, p1, v6

    sub-int v6, v1, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1131
    .local v4, "offset":I
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v3, v5, v4

    .line 1132
    .local v3, "left":I
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mFocusSelector:Landroid/widget/HorizontalListView$FocusSelector;

    if-nez v5, :cond_35

    .line 1133
    new-instance v5, Landroid/widget/HorizontalListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/HorizontalListView$FocusSelector;-><init>(Landroid/widget/HorizontalListView;Landroid/widget/HorizontalListView$1;)V

    iput-object v5, p0, Landroid/widget/HorizontalListView;->mFocusSelector:Landroid/widget/HorizontalListView$FocusSelector;

    .line 1135
    :cond_35
    iget-object v5, p0, Landroid/widget/HorizontalListView;->mFocusSelector:Landroid/widget/HorizontalListView$FocusSelector;

    invoke-virtual {v5, v0, v3}, Landroid/widget/HorizontalListView$FocusSelector;->setup(II)Landroid/widget/HorizontalListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/HorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 1138
    .end local v0    # "childPosition":I
    .end local v1    # "childRight":I
    .end local v2    # "focusedChild":Landroid/view/View;
    .end local v3    # "left":I
    .end local v4    # "offset":I
    :cond_3e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsHorizontalListView;->onSizeChanged(IIII)V

    .line 1139
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 3894
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->onWindowFocusChanged(Z)V

    .line 3895
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3896
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->logActivity()V

    .line 3898
    :cond_c
    return-void
.end method

.method pageScroll(I)Z
    .registers 10
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2302
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2303
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->logActivity()V

    .line 2308
    :cond_b
    const/16 v5, 0x11

    if-ne p1, v5, :cond_5c

    .line 2309
    iget v5, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2310
    .local v0, "nextPage":I
    const/4 v2, 0x0

    .line 2318
    .local v2, "rightSide":Z
    :goto_1d
    if-ltz v0, :cond_5b

    .line 2319
    iget v5, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v5, v0, v2}, Landroid/widget/HorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    .line 2320
    .local v1, "position":I
    if-ltz v1, :cond_5b

    .line 2321
    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    .line 2322
    iget v3, p0, Landroid/widget/HorizontalListView;->mPaddingLeft:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Landroid/widget/HorizontalListView;->mSpecificTop:I

    .line 2324
    if-eqz v2, :cond_41

    iget v3, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v5

    sub-int/2addr v3, v5

    if-le v1, v3, :cond_41

    .line 2325
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    .line 2328
    :cond_41
    if-nez v2, :cond_4b

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_4b

    .line 2329
    iput v4, p0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    .line 2332
    :cond_4b
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalListView;->setSelectionInt(I)V

    .line 2333
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invokeOnItemScrollListener()V

    .line 2334
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 2335
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    :cond_5a
    move v3, v4

    .line 2342
    .end local v0    # "nextPage":I
    .end local v1    # "position":I
    .end local v2    # "rightSide":Z
    :cond_5b
    return v3

    .line 2311
    :cond_5c
    const/16 v5, 0x42

    if-ne p1, v5, :cond_5b

    .line 2312
    iget v5, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2313
    .restart local v0    # "nextPage":I
    const/4 v2, 0x1

    .restart local v2    # "rightSide":Z
    goto :goto_1d
.end method

.method protected recycleOnMeasure()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1221
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 411
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewHorizontalListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 414
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 415
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->onChanged()V

    .line 417
    :cond_20
    const/4 v0, 0x1

    .line 419
    :cond_21
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/HorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 422
    .end local v0    # "result":Z
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 318
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewHorizontalListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 321
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 322
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->onChanged()V

    .line 324
    :cond_20
    const/4 v0, 0x1

    .line 326
    :cond_21
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/HorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 329
    .end local v0    # "result":Z
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 19
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 572
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 575
    .local v8, "rectLeftWithinChild":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 576
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 578
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getWidth()I

    move-result v12

    .line 579
    .local v12, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getScrollX()I

    move-result v6

    .line 580
    .local v6, "listUnfadedLeft":I
    add-int v7, v6, v12

    .line 581
    .local v7, "listUnfadedRight":I
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    .line 583
    .local v4, "fadingEdge":I
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->showingLeftFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 585
    iget v13, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    if-gtz v13, :cond_3a

    if-le v8, v4, :cond_3b

    .line 586
    :cond_3a
    add-int/2addr v6, v4

    .line 590
    :cond_3b
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->getChildCount()I

    move-result v1

    .line 591
    .local v1, "childCount":I
    add-int/lit8 v13, v1, -0x1

    invoke-virtual {p0, v13}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v9

    .line 593
    .local v9, "rightOfRightChild":I
    invoke-direct {p0}, Landroid/widget/HorizontalListView;->showingRightFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_60

    .line 595
    iget v13, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    iget v14, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_5f

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int v14, v9, v4

    if-ge v13, v14, :cond_60

    .line 597
    :cond_5f
    sub-int/2addr v7, v4

    .line 601
    :cond_60
    const/4 v11, 0x0

    .line 603
    .local v11, "scrollXDelta":I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    if-le v13, v7, :cond_9f

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    if-le v13, v6, :cond_9f

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v13, v12, :cond_98

    .line 610
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v6

    add-int/2addr v11, v13

    .line 617
    :goto_79
    sub-int v3, v9, v7

    .line 618
    .local v3, "distanceToRight":I
    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 638
    .end local v3    # "distanceToRight":I
    :cond_7f
    :goto_7f
    if-eqz v11, :cond_d0

    const/4 v10, 0x1

    .line 639
    .local v10, "scroll":Z
    :goto_82
    if-eqz v10, :cond_97

    .line 640
    neg-int v13, v11

    invoke-direct {p0, v13}, Landroid/widget/HorizontalListView;->scrollListItemsBy(I)V

    .line 641
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Landroid/widget/HorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 642
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    iput v13, p0, Landroid/widget/HorizontalListView;->mSelectedLeft:I

    .line 643
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    .line 645
    :cond_97
    return v10

    .line 613
    .end local v10    # "scroll":Z
    :cond_98
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_79

    .line 619
    :cond_9f
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    if-ge v13, v6, :cond_7f

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    if-ge v13, v7, :cond_7f

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v13, v12, :cond_c8

    .line 626
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 633
    :goto_b8
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 634
    .local v5, "left":I
    sub-int v2, v5, v6

    .line 635
    .local v2, "deltaToLeft":I
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_7f

    .line 629
    .end local v2    # "deltaToLeft":I
    .end local v5    # "left":I
    :cond_c8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int v13, v6, v13

    sub-int/2addr v11, v13

    goto :goto_b8

    .line 638
    :cond_d0
    const/4 v10, 0x0

    goto :goto_82
.end method

.method resetList()V
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 525
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/HorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 527
    invoke-super {p0}, Landroid/widget/AbsHorizontalListView;->resetList()V

    .line 529
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    .line 530
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 80
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 8
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 464
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_11

    .line 465
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 468
    :cond_11
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->resetList()V

    .line 469
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsHorizontalListView$RecycleBin;->clear()V

    .line 471
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_29

    iget-object v1, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8f

    .line 472
    :cond_29
    new-instance v1, Landroid/widget/HeaderViewHorizontalListAdapter;

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/HorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/HeaderViewHorizontalListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 477
    :goto_34
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/HorizontalListView;->mOldSelectedPosition:I

    .line 478
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/HorizontalListView;->mOldSelectedRowId:J

    .line 481
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 483
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_97

    .line 484
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/HorizontalListView;->mAreAllItemsSelectable:Z

    .line 485
    iget v1, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    iput v1, p0, Landroid/widget/HorizontalListView;->mOldItemCount:I

    .line 486
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    .line 487
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->checkFocus()V

    .line 489
    new-instance v1, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsHorizontalListView;)V

    iput-object v1, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    .line 490
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mDataSetObserver:Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 492
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mRecycler:Landroid/widget/AbsHorizontalListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsHorizontalListView$RecycleBin;->setViewTypeCount(I)V

    .line 495
    iget-boolean v1, p0, Landroid/widget/HorizontalListView;->mStackFromBottom:Z

    if-eqz v1, :cond_92

    .line 496
    iget v1, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 500
    .local v0, "position":I
    :goto_7e
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalListView;->setSelectedPositionInt(I)V

    .line 501
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalListView;->setNextSelectedPositionInt(I)V

    .line 503
    iget v1, p0, Landroid/widget/HorizontalListView;->mItemCount:I

    if-nez v1, :cond_8b

    .line 505
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->checkSelectionChanged()V

    .line 514
    .end local v0    # "position":I
    :cond_8b
    :goto_8b
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->requestLayout()V

    .line 515
    return-void

    .line 474
    :cond_8f
    iput-object p1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_34

    .line 498
    :cond_92
    invoke-virtual {p0, v4, v5}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_7e

    .line 508
    .end local v0    # "position":I
    :cond_97
    iput-boolean v5, p0, Landroid/widget/HorizontalListView;->mAreAllItemsSelectable:Z

    .line 509
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->checkFocus()V

    .line 511
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->checkSelectionChanged()V

    goto :goto_8b
.end method

.method public setCacheColorHint(I)V
    .registers 5
    .param p1, "color"    # I

    .prologue
    .line 3178
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1f

    const/4 v0, 0x1

    .line 3179
    .local v0, "opaque":Z
    :goto_7
    iput-boolean v0, p0, Landroid/widget/HorizontalListView;->mIsCacheColorOpaque:Z

    .line 3180
    if-eqz v0, :cond_1b

    .line 3181
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_16

    .line 3182
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3184
    :cond_16
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3186
    :cond_1b
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->setCacheColorHint(I)V

    .line 3187
    return-void

    .line 3178
    .end local v0    # "opaque":Z
    :cond_1f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 3435
    if-eqz p1, :cond_1e

    .line 3436
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    .line 3440
    :goto_9
    iput-object p1, p0, Landroid/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3441
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    :cond_14
    const/4 v0, 0x1

    :cond_15
    iput-boolean v0, p0, Landroid/widget/HorizontalListView;->mDividerIsOpaque:Z

    .line 3442
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->requestLayout()V

    .line 3443
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    .line 3444
    return-void

    .line 3438
    :cond_1e
    iput v0, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    goto :goto_9
.end method

.method public setDividerHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .prologue
    .line 3460
    iput p1, p0, Landroid/widget/HorizontalListView;->mDividerHeight:I

    .line 3461
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->requestLayout()V

    .line 3462
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    .line 3463
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .registers 2
    .param p1, "footerDividersEnabled"    # Z

    .prologue
    .line 3498
    iput-boolean p1, p0, Landroid/widget/HorizontalListView;->mFooterDividersEnabled:Z

    .line 3499
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    .line 3500
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .registers 2
    .param p1, "headerDividersEnabled"    # Z

    .prologue
    .line 3475
    iput-boolean p1, p0, Landroid/widget/HorizontalListView;->mHeaderDividersEnabled:Z

    .line 3476
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    .line 3477
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .registers 3
    .param p1, "itemsCanFocus"    # Z

    .prologue
    .line 3141
    iput-boolean p1, p0, Landroid/widget/HorizontalListView;->mItemsCanFocus:Z

    .line 3142
    if-nez p1, :cond_9

    .line 3143
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalListView;->setDescendantFocusability(I)V

    .line 3145
    :cond_9
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3539
    iput-object p1, p0, Landroid/widget/HorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3540
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    .line 3541
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3518
    iput-object p1, p0, Landroid/widget/HorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3519
    iget v0, p0, Landroid/widget/HorizontalListView;->mScrollX:I

    if-gez v0, :cond_9

    .line 3520
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->invalidate()V

    .line 3522
    :cond_9
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 446
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 447
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1929
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalListView;->setSelectionFromTop(II)V

    .line 1930
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .registers 3

    .prologue
    .line 2092
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2093
    .local v0, "count":I
    if-lez v0, :cond_c

    .line 2094
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/HorizontalListView;->mNextSelectedPosition:I

    .line 2105
    :goto_b
    return-void

    .line 2098
    :cond_c
    iget-object v1, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_14

    .line 2099
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalListView;->setSelection(I)V

    goto :goto_b

    .line 2101
    :cond_14
    iput v0, p0, Landroid/widget/HorizontalListView;->mNextSelectedPosition:I

    .line 2102
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    goto :goto_b
.end method

.method public setSelectionFromTop(II)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "x"    # I

    .prologue
    .line 1942
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    .line 1969
    :cond_4
    :goto_4
    return-void

    .line 1946
    :cond_5
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1947
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 1948
    if-ltz p1, :cond_15

    .line 1949
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalListView;->setNextSelectedPositionInt(I)V

    .line 1955
    :cond_15
    :goto_15
    if-ltz p1, :cond_4

    .line 1956
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/HorizontalListView;->mLayoutMode:I

    .line 1957
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/HorizontalListView;->mSpecificTop:I

    .line 1959
    iget-boolean v0, p0, Landroid/widget/HorizontalListView;->mNeedSync:Z

    if-eqz v0, :cond_2f

    .line 1960
    iput p1, p0, Landroid/widget/HorizontalListView;->mSyncPosition:I

    .line 1961
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/HorizontalListView;->mSyncRowId:J

    .line 1964
    :cond_2f
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v0, :cond_38

    .line 1965
    iget-object v0, p0, Landroid/widget/HorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 1967
    :cond_38
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->requestLayout()V

    goto :goto_4

    .line 1952
    :cond_3c
    iput p1, p0, Landroid/widget/HorizontalListView;->mResurrectToPosition:I

    goto :goto_15
.end method

.method setSelectionInt(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 1978
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalListView;->setNextSelectedPositionInt(I)V

    .line 1979
    const/4 v0, 0x0

    .line 1981
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Landroid/widget/HorizontalListView;->mSelectedPosition:I

    .line 1983
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_d

    .line 1984
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_1f

    .line 1985
    const/4 v0, 0x1

    .line 1991
    :cond_d
    :goto_d
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v2, :cond_16

    .line 1992
    iget-object v2, p0, Landroid/widget/HorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    .line 1995
    :cond_16
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->layoutChildren()V

    .line 1997
    if-eqz v0, :cond_1e

    .line 1998
    invoke-virtual {p0}, Landroid/widget/HorizontalListView;->awakenScrollBars()Z

    .line 2000
    :cond_1e
    return-void

    .line 1986
    :cond_1f
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_d

    .line 1987
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public smoothScrollByOffset(I)V
    .registers 2
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 937
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->smoothScrollByOffset(I)V

    .line 938
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 2
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 927
    invoke-super {p0, p1}, Landroid/widget/AbsHorizontalListView;->smoothScrollToPosition(I)V

    .line 928
    return-void
.end method
