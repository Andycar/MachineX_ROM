.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 121
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 129
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 99
    iput v8, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 101
    iput v7, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 103
    iput v7, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 104
    iput v9, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 109
    iput-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 110
    iput-object v6, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 112
    const v6, 0x800003

    iput v6, p0, Landroid/widget/GridView;->mGravity:I

    .line 114
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 131
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 134
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 136
    .local v2, "hSpacing":I
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 138
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 140
    .local v5, "vSpacing":I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 142
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 143
    .local v3, "index":I
    if-ltz v3, :cond_3e

    .line 144
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 147
    :cond_3e
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 148
    .local v1, "columnWidth":I
    if-lez v1, :cond_48

    .line 149
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 152
    :cond_48
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 153
    .local v4, "numColumns":I
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 155
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 156
    if-ltz v3, :cond_59

    .line 157
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setGravity(I)V

    .line 160
    :cond_59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .registers 8
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    .line 802
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_1a

    .line 806
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 810
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 811
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 814
    .local v0, "offset":I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 816
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_1a
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .registers 8
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    .line 830
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_19

    .line 833
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 837
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 838
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 841
    .local v0, "offset":I
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 843
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_19
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .registers 7

    .prologue
    .line 2251
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 2253
    .local v1, "childCount":I
    if-lez v1, :cond_29

    .line 2257
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v3, :cond_2a

    .line 2260
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2261
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 2262
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-eqz v3, :cond_20

    .line 2265
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 2267
    :cond_20
    if-gez v2, :cond_23

    .line 2269
    const/4 v2, 0x0

    .line 2288
    :cond_23
    :goto_23
    if-eqz v2, :cond_29

    .line 2289
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 2292
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_29
    return-void

    .line 2273
    :cond_2a
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2274
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 2276
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge v3, v4, :cond_49

    .line 2279
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 2282
    :cond_49
    if-lez v2, :cond_23

    .line 2284
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .registers 12
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1632
    iget-object v4, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_c

    .line 1759
    :goto_b
    return v2

    .line 1636
    :cond_c
    iget-boolean v4, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-eqz v4, :cond_13

    .line 1637
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1640
    :cond_13
    const/4 v1, 0x0

    .line 1641
    .local v1, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1643
    .local v0, "action":I
    if-eq v0, v3, :cond_1d

    .line 1644
    sparse-switch p1, :sswitch_data_1ac

    .line 1743
    :cond_1d
    :goto_1d
    if-eqz v1, :cond_18c

    move v2, v3

    .line 1744
    goto :goto_b

    .line 1646
    :sswitch_21
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1647
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_35

    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_37

    :cond_35
    move v1, v3

    :goto_36
    goto :goto_1d

    :cond_37
    move v1, v2

    goto :goto_36

    .line 1652
    :sswitch_39
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1653
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_4d

    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_4f

    :cond_4d
    move v1, v3

    :goto_4e
    goto :goto_1d

    :cond_4f
    move v1, v2

    goto :goto_4e

    .line 1658
    :sswitch_51
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 1659
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_63

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_65

    :cond_63
    move v1, v3

    :goto_64
    goto :goto_1d

    :cond_65
    move v1, v2

    goto :goto_64

    .line 1660
    :cond_67
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1661
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_79

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_7b

    :cond_79
    move v1, v3

    :goto_7a
    goto :goto_1d

    :cond_7b
    move v1, v2

    goto :goto_7a

    .line 1666
    :sswitch_7d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 1667
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_8f

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_91

    :cond_8f
    move v1, v3

    :goto_90
    goto :goto_1d

    :cond_91
    move v1, v2

    goto :goto_90

    .line 1668
    :cond_93
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1669
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_a5

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_a8

    :cond_a5
    move v1, v3

    :goto_a6
    goto/16 :goto_1d

    :cond_a8
    move v1, v2

    goto :goto_a6

    .line 1675
    :sswitch_aa
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1676
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v1

    .line 1677
    if-nez v1, :cond_1d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1d

    .line 1679
    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    .line 1680
    const/4 v1, 0x1

    goto/16 :goto_1d

    .line 1686
    :sswitch_c8
    iget-object v4, p0, Landroid/widget/GridView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_d4

    iget-object v4, p0, Landroid/widget/GridView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1687
    :cond_d4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 1688
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_e6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_e9

    :cond_e6
    move v1, v3

    :goto_e7
    goto/16 :goto_1d

    :cond_e9
    move v1, v2

    goto :goto_e7

    .line 1689
    :cond_eb
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1690
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_fd

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_100

    :cond_fd
    move v1, v3

    :goto_fe
    goto/16 :goto_1d

    :cond_100
    move v1, v2

    goto :goto_fe

    .line 1696
    :sswitch_102
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_119

    .line 1697
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_114

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_117

    :cond_114
    move v1, v3

    :goto_115
    goto/16 :goto_1d

    :cond_117
    move v1, v2

    goto :goto_115

    .line 1698
    :cond_119
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1699
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_12b

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_12e

    :cond_12b
    move v1, v3

    :goto_12c
    goto/16 :goto_1d

    :cond_12e
    move v1, v2

    goto :goto_12c

    .line 1704
    :sswitch_130
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_147

    .line 1705
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_142

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_145

    :cond_142
    move v1, v3

    :goto_143
    goto/16 :goto_1d

    :cond_145
    move v1, v2

    goto :goto_143

    .line 1706
    :cond_147
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1707
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_159

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_15c

    :cond_159
    move v1, v3

    :goto_15a
    goto/16 :goto_1d

    :cond_15c
    move v1, v2

    goto :goto_15a

    .line 1712
    :sswitch_15e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1713
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_170

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_173

    :cond_170
    move v1, v3

    :goto_171
    goto/16 :goto_1d

    :cond_173
    move v1, v2

    goto :goto_171

    .line 1718
    :sswitch_175
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1719
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_187

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_18a

    :cond_187
    move v1, v3

    :goto_188
    goto/16 :goto_1d

    :cond_18a
    move v1, v2

    goto :goto_188

    .line 1747
    :cond_18c
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_195

    move v2, v3

    .line 1748
    goto/16 :goto_b

    .line 1751
    :cond_195
    packed-switch v0, :pswitch_data_1da

    goto/16 :goto_b

    .line 1753
    :pswitch_19a
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 1755
    :pswitch_1a0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 1757
    :pswitch_1a6
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 1644
    :sswitch_data_1ac
    .sparse-switch
        0x13 -> :sswitch_51
        0x14 -> :sswitch_7d
        0x15 -> :sswitch_21
        0x16 -> :sswitch_39
        0x17 -> :sswitch_aa
        0x3e -> :sswitch_c8
        0x42 -> :sswitch_aa
        0x5c -> :sswitch_102
        0x5d -> :sswitch_130
        0x7a -> :sswitch_15e
        0x7b -> :sswitch_175
    .end sparse-switch

    .line 1751
    :pswitch_data_1da
    .packed-switch 0x0
        :pswitch_19a
        :pswitch_1a0
        :pswitch_1a6
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .registers 13
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 614
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    .line 615
    .local v6, "lastPosition":I
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_60

    if-lez p3, :cond_60

    .line 617
    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 620
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 622
    .local v4, "lastBottom":I
    iget v7, p0, Landroid/widget/GridView;->mBottom:I

    iget v8, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 626
    .local v1, "end":I
    sub-int v0, v1, v4

    .line 628
    .local v0, "bottomOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 629
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 633
    .local v3, "firstTop":I
    if-lez v0, :cond_60

    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gtz v7, :cond_39

    iget-object v7, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_60

    .line 634
    :cond_39
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v7, :cond_46

    .line 636
    iget-object v7, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 640
    :cond_46
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 641
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez v7, :cond_60

    .line 644
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v8, :cond_54

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_54
    sub-int/2addr v7, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 647
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 651
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    :cond_60
    return-void
.end method

.method private correctTooLow(III)V
    .registers 14
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 654
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v8, :cond_61

    if-lez p3, :cond_61

    .line 656
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 659
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 662
    .local v2, "firstTop":I
    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 665
    .local v6, "start":I
    iget v8, p0, Landroid/widget/GridView;->mBottom:I

    iget v9, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 669
    .local v0, "end":I
    sub-int v7, v2, v6

    .line 670
    .local v7, "topOffset":I
    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 671
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 672
    .local v3, "lastBottom":I
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    .line 676
    .local v5, "lastPosition":I
    if-lez v7, :cond_61

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_39

    if-le v3, v0, :cond_61

    .line 677
    :cond_39
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_45

    .line 679
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 683
    :cond_45
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 684
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_61

    .line 687
    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v8, :cond_54

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_54
    add-int v8, v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 690
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 694
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v6    # "start":I
    .end local v7    # "topOffset":I
    :cond_61
    return-void
.end method

.method private determineColumns(I)Z
    .registers 10
    .param p1, "availableSpace"    # I

    .prologue
    const/4 v7, 0x1

    .line 963
    iget v2, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 964
    .local v2, "requestedHorizontalSpacing":I
    iget v4, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 965
    .local v4, "stretchMode":I
    iget v1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 966
    .local v1, "requestedColumnWidth":I
    const/4 v0, 0x0

    .line 968
    .local v0, "didNotInitiallyFit":Z
    iget v5, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_36

    .line 969
    if-lez v1, :cond_32

    .line 971
    add-int v5, p1, v2

    add-int v6, v1, v2

    div-int/2addr v5, v6

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 982
    :goto_16
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-gtz v5, :cond_1c

    .line 983
    iput v7, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 986
    :cond_1c
    packed-switch v4, :pswitch_data_74

    .line 994
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v2

    sub-int v3, v5, v6

    .line 997
    .local v3, "spaceLeftOver":I
    if-gez v3, :cond_2e

    .line 998
    const/4 v0, 0x1

    .line 1001
    :cond_2e
    packed-switch v4, :pswitch_data_7a

    .line 1033
    .end local v3    # "spaceLeftOver":I
    :goto_31
    return v0

    .line 975
    :cond_32
    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_16

    .line 979
    :cond_36
    iget v5, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_16

    .line 989
    :pswitch_3b
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 990
    iput v2, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 1004
    .restart local v3    # "spaceLeftOver":I
    :pswitch_40
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v5, v3, v5

    add-int/2addr v5, v1

    iput v5, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1005
    iput v2, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 1010
    :pswitch_4a
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1011
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v5, v7, :cond_5a

    .line 1012
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 1015
    :cond_5a
    add-int v5, v2, v3

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 1021
    :pswitch_5f
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1022
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v5, v7, :cond_6f

    .line 1023
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v5, v5, 0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 1026
    :cond_6f
    add-int v5, v2, v3

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 986
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_3b
    .end packed-switch

    .line 1001
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_40
        :pswitch_5f
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .registers 9
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .prologue
    .line 294
    const/4 v1, 0x0

    .line 296
    .local v1, "selectedView":Landroid/view/View;
    iget v3, p0, Landroid/widget/GridView;->mBottom:I

    iget v4, p0, Landroid/widget/GridView;->mTop:I

    sub-int v0, v3, v4

    .line 297
    .local v0, "end":I
    iget v3, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_14

    .line 298
    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    .line 301
    :cond_14
    :goto_14
    if-ge p2, v0, :cond_30

    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge p1, v3, :cond_30

    .line 302
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 303
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_22

    .line 304
    move-object v1, v2

    .line 309
    :cond_22
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 311
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 312
    goto :goto_14

    .line 314
    .end local v2    # "temp":Landroid/view/View;
    :cond_30
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    .line 315
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .registers 6
    .param p1, "lastPosition"    # I
    .param p2, "nextBottom"    # I

    .prologue
    .line 441
    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 442
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 444
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 445
    .local v0, "invertedPosition":I
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 447
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .registers 18
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 707
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 708
    .local v2, "fadingEdgeLength":I
    iget v9, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 709
    .local v9, "selectedPosition":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 710
    .local v4, "numColumns":I
    iget v11, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 713
    .local v11, "verticalSpacing":I
    const/4 v6, -0x1

    .line 715
    .local v6, "rowEnd":I
    iget-boolean v12, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v12, :cond_4f

    .line 716
    rem-int v12, v9, v4

    sub-int v7, v9, v12

    .line 727
    .local v7, "rowStart":I
    :goto_13
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v10

    .line 728
    .local v10, "topSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 731
    .local v1, "bottomSelectionPixel":I
    iget-boolean v12, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v12, :cond_69

    move v12, v6

    :goto_24
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 733
    .local v8, "sel":Landroid/view/View;
    iput v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 735
    iget-object v5, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 736
    .local v5, "referenceView":Landroid/view/View;
    invoke-direct {p0, v5, v10, v1}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 737
    invoke-direct {p0, v5, v10, v1}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 739
    iget-boolean v12, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v12, :cond_6b

    .line 740
    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 741
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 742
    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 750
    :goto_4e
    return-object v8

    .line 718
    .end local v1    # "bottomSelectionPixel":I
    .end local v5    # "referenceView":Landroid/view/View;
    .end local v7    # "rowStart":I
    .end local v8    # "sel":Landroid/view/View;
    .end local v10    # "topSelectionPixel":I
    :cond_4f
    iget v12, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    .line 720
    .local v3, "invertedSelection":I
    iget v12, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    .line 721
    const/4 v12, 0x0

    sub-int v13, v6, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "rowStart":I
    goto :goto_13

    .end local v3    # "invertedSelection":I
    .restart local v1    # "bottomSelectionPixel":I
    .restart local v10    # "topSelectionPixel":I
    :cond_69
    move v12, v7

    .line 731
    goto :goto_24

    .line 744
    .restart local v5    # "referenceView":Landroid/view/View;
    .restart local v8    # "sel":Landroid/view/View;
    :cond_6b
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 745
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 746
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto :goto_4e
.end method

.method private fillFromTop(I)Landroid/view/View;
    .registers 5
    .param p1, "nextTop"    # I

    .prologue
    .line 431
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 432
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 433
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gez v0, :cond_1d

    .line 434
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 436
    :cond_1d
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 437
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .registers 18
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .prologue
    .line 451
    invoke-virtual {p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    move-result v10

    .line 452
    .local v10, "selectedPosition":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 453
    .local v4, "numColumns":I
    iget v12, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 456
    .local v12, "verticalSpacing":I
    const/4 v7, -0x1

    .line 458
    .local v7, "rowEnd":I
    iget-boolean v13, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v13, :cond_2c

    .line 459
    rem-int v13, v10, v4

    sub-int v8, v10, v13

    .line 467
    .local v8, "rowStart":I
    :goto_11
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 468
    .local v2, "fadingEdgeLength":I
    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v11

    .line 470
    .local v11, "topSelectionPixel":I
    iget-boolean v13, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v13, :cond_46

    move v13, v7

    :goto_20
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    .line 471
    .local v9, "sel":Landroid/view/View;
    iput v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 473
    iget-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 475
    .local v6, "referenceView":Landroid/view/View;
    if-nez v6, :cond_48

    .line 495
    :goto_2b
    return-object v9

    .line 461
    .end local v2    # "fadingEdgeLength":I
    .end local v6    # "referenceView":Landroid/view/View;
    .end local v8    # "rowStart":I
    .end local v9    # "sel":Landroid/view/View;
    .end local v11    # "topSelectionPixel":I
    :cond_2c
    iget v13, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    .line 463
    .local v3, "invertedSelection":I
    iget v13, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    .line 464
    const/4 v13, 0x0

    sub-int v14, v7, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .restart local v8    # "rowStart":I
    goto :goto_11

    .end local v3    # "invertedSelection":I
    .restart local v2    # "fadingEdgeLength":I
    .restart local v11    # "topSelectionPixel":I
    :cond_46
    move v13, v8

    .line 470
    goto :goto_20

    .line 479
    .restart local v6    # "referenceView":Landroid/view/View;
    .restart local v9    # "sel":Landroid/view/View;
    :cond_48
    iget-boolean v13, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v13, :cond_69

    .line 480
    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 481
    move/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/widget/GridView;->pinToBottom(I)V

    .line 482
    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 483
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_2b

    .line 485
    :cond_69
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 487
    .local v1, "bottomSelectionPixel":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    .line 488
    .local v5, "offset":I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 489
    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 490
    invoke-direct/range {p0 .. p1}, Landroid/widget/GridView;->pinToTop(I)V

    .line 491
    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 492
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_2b
.end method

.method private fillSpecific(II)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 553
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 556
    .local v6, "numColumns":I
    const/4 v4, -0x1

    .line 558
    .local v4, "motionRowEnd":I
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_1d

    .line 559
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 567
    .local v5, "motionRowStart":I
    :goto_b
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v10, :cond_37

    move v10, v4

    :goto_10
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 570
    .local v8, "temp":Landroid/view/View;
    iput v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 572
    iget-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 574
    .local v7, "referenceView":Landroid/view/View;
    if-nez v7, :cond_39

    .line 575
    const/4 v8, 0x0

    .line 608
    .end local v8    # "temp":Landroid/view/View;
    :cond_1c
    :goto_1c
    return-object v8

    .line 561
    .end local v5    # "motionRowStart":I
    .end local v7    # "referenceView":Landroid/view/View;
    :cond_1d
    iget v10, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    .line 563
    .local v3, "invertedSelection":I
    iget v10, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    .line 564
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5    # "motionRowStart":I
    goto :goto_b

    .end local v3    # "invertedSelection":I
    :cond_37
    move v10, v5

    .line 567
    goto :goto_10

    .line 578
    .restart local v7    # "referenceView":Landroid/view/View;
    .restart local v8    # "temp":Landroid/view/View;
    :cond_39
    iget v9, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 583
    .local v9, "verticalSpacing":I
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_67

    .line 584
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 585
    .local v0, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 586
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 588
    .local v1, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 589
    .local v2, "childCount":I
    if-lez v2, :cond_61

    .line 590
    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 603
    :cond_61
    :goto_61
    if-nez v8, :cond_1c

    .line 605
    if-eqz v0, :cond_8a

    move-object v8, v0

    .line 606
    goto :goto_1c

    .line 593
    .end local v0    # "above":Landroid/view/View;
    .end local v1    # "below":Landroid/view/View;
    .end local v2    # "childCount":I
    :cond_67
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 594
    .restart local v1    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 595
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 597
    .restart local v0    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 598
    .restart local v2    # "childCount":I
    if-lez v2, :cond_61

    .line 599
    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_61

    :cond_8a
    move-object v8, v1

    .line 608
    goto :goto_1c
.end method

.method private fillUp(II)Landroid/view/View;
    .registers 9
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 393
    const/4 v1, 0x0

    .line 395
    .local v1, "selectedView":Landroid/view/View;
    const/4 v0, 0x0

    .line 396
    .local v0, "end":I
    iget v3, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_f

    .line 397
    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 400
    :cond_f
    :goto_f
    if-le p2, v0, :cond_2a

    if-ltz p1, :cond_2a

    .line 402
    invoke-direct {p0, p1, p2, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 403
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_1a

    .line 404
    move-object v1, v2

    .line 407
    :cond_1a
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 409
    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 411
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 412
    goto :goto_f

    .line 414
    .end local v2    # "temp":Landroid/view/View;
    :cond_2a
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v3, :cond_36

    .line 415
    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 418
    :cond_36
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    .line 419
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .registers 8
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "numColumns"    # I
    .param p4, "rowStart"    # I

    .prologue
    .line 765
    move v0, p1

    .line 766
    .local v0, "bottomSelectionPixel":I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_c

    .line 767
    sub-int/2addr v0, p2

    .line 769
    :cond_c
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .registers 5
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "rowStart"    # I

    .prologue
    .line 782
    move v0, p1

    .line 783
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_4

    .line 784
    add-int/2addr v0, p2

    .line 786
    :cond_4
    return v0
.end method

.method private isCandidateSelection(II)Z
    .registers 11
    .param p1, "childIndex"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1999
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 2000
    .local v0, "count":I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .line 2005
    .local v1, "invertedIndex":I
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_28

    .line 2006
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .line 2007
    .local v3, "rowStart":I
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2013
    .local v2, "rowEnd":I
    :goto_1d
    sparse-switch p2, :sswitch_data_5e

    .line 2034
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2009
    .end local v2    # "rowEnd":I
    .end local v3    # "rowStart":I
    :cond_28
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .line 2010
    .restart local v2    # "rowEnd":I
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3    # "rowStart":I
    goto :goto_1d

    .line 2017
    :sswitch_3d
    if-ne p1, v3, :cond_40

    .line 2032
    :cond_3f
    :goto_3f
    return v4

    :cond_40
    move v4, v5

    .line 2017
    goto :goto_3f

    .line 2020
    :sswitch_42
    if-eqz v3, :cond_3f

    move v4, v5

    goto :goto_3f

    .line 2023
    :sswitch_46
    if-eq p1, v2, :cond_3f

    move v4, v5

    goto :goto_3f

    .line 2026
    :sswitch_4a
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_3f

    move v4, v5

    goto :goto_3f

    .line 2029
    :sswitch_50
    if-ne p1, v3, :cond_54

    if-eqz v3, :cond_3f

    :cond_54
    move v4, v5

    goto :goto_3f

    .line 2032
    :sswitch_56
    if-ne p1, v2, :cond_5c

    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_3f

    :cond_5c
    move v4, v5

    goto :goto_3f

    .line 2013
    :sswitch_data_5e
    .sparse-switch
        0x1 -> :sswitch_56
        0x2 -> :sswitch_50
        0x11 -> :sswitch_46
        0x21 -> :sswitch_4a
        0x42 -> :sswitch_3d
        0x82 -> :sswitch_42
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .registers 17
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z
    .param p6, "where"    # I

    .prologue
    .line 1424
    iget-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-nez v0, :cond_1a

    .line 1426
    iget-object v0, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1427
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_1a

    .line 1430
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1442
    .end local v1    # "child":Landroid/view/View;
    .local v9, "child":Landroid/view/View;
    :goto_19
    return-object v9

    .line 1437
    .end local v9    # "child":Landroid/view/View;
    :cond_1a
    iget-object v0, p0, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1440
    .restart local v1    # "child":Landroid/view/View;
    iget-object v0, p0, Landroid/widget/GridView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1442
    .end local v1    # "child":Landroid/view/View;
    .restart local v9    # "child":Landroid/view/View;
    goto :goto_19
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .registers 23
    .param p1, "startPos"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z

    .prologue
    .line 319
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/GridView;->mColumnWidth:I

    .line 320
    .local v9, "columnWidth":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 322
    .local v12, "horizontalSpacing":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v14

    .line 327
    .local v14, "isLayoutRtl":Z
    if-eqz v14, :cond_7b

    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    sub-int v3, v1, v9

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_79

    move v1, v12

    :goto_23
    sub-int v5, v3, v1

    .line 335
    .local v5, "nextLeft":I
    :goto_25
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_8e

    .line 336
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mNumColumns:I

    add-int v1, v1, p1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/GridView;->mItemCount:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 347
    .local v15, "last":I
    :cond_39
    :goto_39
    const/16 v18, 0x0

    .line 349
    .local v18, "selectedView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v11

    .line 350
    .local v11, "hasFocus":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    move-result v13

    .line 351
    .local v13, "inClick":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 353
    .local v17, "selectedPosition":I
    const/4 v8, 0x0

    .line 354
    .local v8, "child":Landroid/view/View;
    if-eqz v14, :cond_b8

    const/16 v16, -0x1

    .line 355
    .local v16, "nextChildDir":I
    :goto_4e
    move/from16 v2, p1

    .local v2, "pos":I
    :goto_50
    if-ge v2, v15, :cond_c0

    .line 357
    move/from16 v0, v17

    if-ne v2, v0, :cond_bb

    const/4 v6, 0x1

    .line 360
    .local v6, "selected":Z
    :goto_57
    if-eqz p3, :cond_bd

    const/4 v7, -0x1

    .local v7, "where":I
    :goto_5a
    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    .line 361
    invoke-direct/range {v1 .. v7}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v8

    .line 363
    mul-int v1, v16, v9

    add-int/2addr v5, v1

    .line 364
    add-int/lit8 v1, v15, -0x1

    if-ge v2, v1, :cond_6e

    .line 365
    mul-int v1, v16, v12

    add-int/2addr v5, v1

    .line 368
    :cond_6e
    if-eqz v6, :cond_76

    if-nez v11, :cond_74

    if-eqz v13, :cond_76

    .line 369
    :cond_74
    move-object/from16 v18, v8

    .line 355
    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 328
    .end local v2    # "pos":I
    .end local v5    # "nextLeft":I
    .end local v6    # "selected":Z
    .end local v7    # "where":I
    .end local v8    # "child":Landroid/view/View;
    .end local v11    # "hasFocus":Z
    .end local v13    # "inClick":Z
    .end local v15    # "last":I
    .end local v16    # "nextChildDir":I
    .end local v17    # "selectedPosition":I
    .end local v18    # "selectedView":Landroid/view/View;
    :cond_79
    const/4 v1, 0x0

    goto :goto_23

    .line 331
    :cond_7b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_8c

    move v1, v12

    :goto_89
    add-int v5, v3, v1

    .restart local v5    # "nextLeft":I
    goto :goto_25

    .end local v5    # "nextLeft":I
    :cond_8c
    const/4 v1, 0x0

    goto :goto_89

    .line 338
    .restart local v5    # "nextLeft":I
    :cond_8e
    add-int/lit8 v15, p1, 0x1

    .line 339
    .restart local v15    # "last":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 341
    sub-int v1, v15, p1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/GridView;->mNumColumns:I

    if-ge v1, v3, :cond_39

    .line 342
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v3, v15, p1

    sub-int/2addr v1, v3

    add-int v3, v9, v12

    mul-int v10, v1, v3

    .line 343
    .local v10, "deltaLeft":I
    if-eqz v14, :cond_b6

    const/4 v1, -0x1

    :goto_b3
    mul-int/2addr v1, v10

    add-int/2addr v5, v1

    goto :goto_39

    :cond_b6
    const/4 v1, 0x1

    goto :goto_b3

    .line 354
    .end local v10    # "deltaLeft":I
    .restart local v8    # "child":Landroid/view/View;
    .restart local v11    # "hasFocus":Z
    .restart local v13    # "inClick":Z
    .restart local v17    # "selectedPosition":I
    .restart local v18    # "selectedView":Landroid/view/View;
    :cond_b8
    const/16 v16, 0x1

    goto :goto_4e

    .line 357
    .restart local v2    # "pos":I
    .restart local v16    # "nextChildDir":I
    :cond_bb
    const/4 v6, 0x0

    goto :goto_57

    .line 360
    .restart local v6    # "selected":Z
    :cond_bd
    sub-int v7, v2, p1

    goto :goto_5a

    .line 373
    .end local v6    # "selected":Z
    :cond_c0
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 375
    if-eqz v18, :cond_ce

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 379
    :cond_ce
    return-object v18
.end method

.method private moveSelection(III)Landroid/view/View;
    .registers 26
    .param p1, "delta"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 879
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 880
    .local v5, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 881
    .local v16, "selectedPosition":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/GridView;->mNumColumns:I

    .line 882
    .local v7, "numColumns":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v18, v0

    .line 886
    .local v18, "verticalSpacing":I
    const/4 v13, -0x1

    .line 888
    .local v13, "rowEnd":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_9d

    .line 889
    sub-int v19, v16, p1

    sub-int v20, v16, p1

    rem-int v20, v20, v7

    sub-int v9, v19, v20

    .line 891
    .local v9, "oldRowStart":I
    rem-int v19, v16, v7

    sub-int v14, v16, v19

    .line 903
    .local v14, "rowStart":I
    :goto_29
    sub-int v12, v14, v9

    .line 905
    .local v12, "rowDelta":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v17

    .line 906
    .local v17, "topSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    .line 910
    .local v4, "bottomSelectionPixel":I
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/GridView;->mFirstPosition:I

    .line 915
    if-lez v12, :cond_f5

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_e5

    const/4 v8, 0x0

    .line 923
    .local v8, "oldBottom":I
    :goto_4a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f1

    move/from16 v19, v13

    :goto_54
    add-int v20, v8, v18

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 924
    .local v15, "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 926
    .local v11, "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 949
    .end local v8    # "oldBottom":I
    :goto_6f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_168

    .line 950
    sub-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 951
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 952
    add-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 959
    :goto_9c
    return-object v15

    .line 893
    .end local v4    # "bottomSelectionPixel":I
    .end local v9    # "oldRowStart":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v12    # "rowDelta":I
    .end local v14    # "rowStart":I
    .end local v15    # "sel":Landroid/view/View;
    .end local v17    # "topSelectionPixel":I
    :cond_9d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v16

    .line 895
    .local v6, "invertedSelection":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v13, v19, v20

    .line 896
    const/16 v19, 0x0

    sub-int v20, v13, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 898
    .restart local v14    # "rowStart":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v16, p1

    sub-int v6, v19, v20

    .line 899
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v9, v19, v20

    .line 900
    .restart local v9    # "oldRowStart":I
    const/16 v19, 0x0

    sub-int v20, v9, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_29

    .line 920
    .end local v6    # "invertedSelection":I
    .restart local v4    # "bottomSelectionPixel":I
    .restart local v12    # "rowDelta":I
    .restart local v17    # "topSelectionPixel":I
    :cond_e5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v8

    goto/16 :goto_4a

    .restart local v8    # "oldBottom":I
    :cond_f1
    move/from16 v19, v14

    .line 923
    goto/16 :goto_54

    .line 927
    .end local v8    # "oldBottom":I
    :cond_f5
    if-gez v12, :cond_135

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_127

    const/4 v10, 0x0

    .line 934
    .local v10, "oldTop":I
    :goto_100
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_132

    move/from16 v19, v13

    :goto_10a
    sub-int v20, v10, v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 935
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 937
    .restart local v11    # "referenceView":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_6f

    .line 931
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_100

    .restart local v10    # "oldTop":I
    :cond_132
    move/from16 v19, v14

    .line 934
    goto :goto_10a

    .line 942
    .end local v10    # "oldTop":I
    :cond_135
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_15a

    const/4 v10, 0x0

    .line 945
    .restart local v10    # "oldTop":I
    :goto_13e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_165

    move/from16 v19, v13

    :goto_148
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 946
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .restart local v11    # "referenceView":Landroid/view/View;
    goto/16 :goto_6f

    .line 942
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_15a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_13e

    .restart local v10    # "oldTop":I
    :cond_165
    move/from16 v19, v14

    .line 945
    goto :goto_148

    .line 954
    .end local v10    # "oldTop":I
    .restart local v11    # "referenceView":Landroid/view/View;
    .restart local v15    # "sel":Landroid/view/View;
    :cond_168
    add-int v19, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 955
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 956
    add-int/lit8 v19, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_9c
.end method

.method private pinToBottom(I)V
    .registers 7
    .param p1, "childrenBottom"    # I

    .prologue
    .line 509
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 510
    .local v1, "count":I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    if-ne v3, v4, :cond_1c

    .line 511
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 512
    .local v0, "bottom":I
    sub-int v2, p1, v0

    .line 513
    .local v2, "offset":I
    if-lez v2, :cond_1c

    .line 514
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 517
    .end local v0    # "bottom":I
    .end local v2    # "offset":I
    :cond_1c
    return-void
.end method

.method private pinToTop(I)V
    .registers 5
    .param p1, "childrenTop"    # I

    .prologue
    .line 499
    iget v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v2, :cond_14

    .line 500
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 501
    .local v1, "top":I
    sub-int v0, p1, v1

    .line 502
    .local v0, "offset":I
    if-gez v0, :cond_14

    .line 503
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 506
    .end local v0    # "offset":I
    .end local v1    # "top":I
    :cond_14
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .registers 35
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flow"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z
    .param p8, "where"    # I

    .prologue
    .line 1463
    const-wide/16 v24, 0x8

    const-string/jumbo v23, "setupGridItem"

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1465
    if-eqz p6, :cond_15a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v23

    if-eqz v23, :cond_15a

    const/4 v15, 0x1

    .line 1466
    .local v15, "isSelected":Z
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v23

    move/from16 v0, v23

    if-eq v15, v0, :cond_15d

    const/16 v21, 0x1

    .line 1467
    .local v21, "updateChildSelected":Z
    :goto_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    move/from16 v17, v0

    .line 1468
    .local v17, "mode":I
    if-lez v17, :cond_161

    const/16 v23, 0x3

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_161

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p2

    if-ne v0, v1, :cond_161

    const/4 v14, 0x1

    .line 1470
    .local v14, "isPressed":Z
    :goto_3c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v23

    move/from16 v0, v23

    if-eq v14, v0, :cond_164

    const/16 v20, 0x1

    .line 1472
    .local v20, "updateChildPressed":Z
    :goto_46
    if-eqz p7, :cond_50

    if-nez v21, :cond_50

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v23

    if-eqz v23, :cond_168

    :cond_50
    const/16 v18, 0x1

    .line 1476
    .local v18, "needToMeasure":Z
    :goto_52
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    .line 1477
    .local v19, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v19, :cond_60

    .line 1478
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .end local v19    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    .line 1480
    .restart local v19    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1482
    if-eqz p7, :cond_16c

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v23, v0

    if-nez v23, :cond_16c

    .line 1483
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1489
    :goto_89
    if-eqz v21, :cond_95

    .line 1490
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setSelected(Z)V

    .line 1491
    if-eqz v15, :cond_95

    .line 1492
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->requestFocus()Z

    .line 1496
    :cond_95
    if-eqz v20, :cond_9c

    .line 1497
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setPressed(Z)V

    .line 1500
    :cond_9c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mChoiceMode:I

    move/from16 v23, v0

    if-eqz v23, :cond_c9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c9

    .line 1501
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v23, v0

    if-eqz v23, :cond_185

    move-object/from16 v23, p1

    .line 1502
    check-cast v23, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v24

    invoke-interface/range {v23 .. v24}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1509
    :cond_c9
    :goto_c9
    if-eqz v18, :cond_1b2

    .line 1510
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move/from16 v25, v0

    invoke-static/range {v23 .. v25}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 1513
    .local v8, "childHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v25, v0

    invoke-static/range {v23 .. v25}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v12

    .line 1515
    .local v12, "childWidthSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v8}, Landroid/view/View;->measure(II)V

    .line 1520
    .end local v8    # "childHeightSpec":I
    .end local v12    # "childWidthSpec":I
    :goto_fc
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    .line 1521
    .local v22, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 1524
    .local v13, "h":I
    if-eqz p4, :cond_1b7

    move/from16 v11, p3

    .line 1526
    .local v11, "childTop":I
    :goto_108
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getLayoutDirection()I

    move-result v16

    .line 1527
    .local v16, "layoutDirection":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mGravity:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    .line 1528
    .local v6, "absoluteGravity":I
    and-int/lit8 v23, v6, 0x7

    packed-switch v23, :pswitch_data_1f6

    .line 1539
    :pswitch_11f
    move/from16 v9, p5

    .line 1543
    .local v9, "childLeft":I
    :goto_121
    if-eqz v18, :cond_1d9

    .line 1544
    add-int v10, v9, v22

    .line 1545
    .local v10, "childRight":I
    add-int v7, v11, v13

    .line 1546
    .local v7, "childBottom":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v11, v10, v7}, Landroid/view/View;->layout(IIII)V

    .line 1552
    .end local v7    # "childBottom":I
    .end local v10    # "childRight":I
    :goto_12c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mCachingStarted:Z

    move/from16 v23, v0

    if-eqz v23, :cond_13d

    .line 1553
    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1556
    :cond_13d
    if-eqz p7, :cond_154

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p2

    if-eq v0, v1, :cond_154

    .line 1558
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1561
    :cond_154
    const-wide/16 v24, 0x8

    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 1562
    return-void

    .line 1465
    .end local v6    # "absoluteGravity":I
    .end local v9    # "childLeft":I
    .end local v11    # "childTop":I
    .end local v13    # "h":I
    .end local v14    # "isPressed":Z
    .end local v15    # "isSelected":Z
    .end local v16    # "layoutDirection":I
    .end local v17    # "mode":I
    .end local v18    # "needToMeasure":Z
    .end local v19    # "p":Landroid/widget/AbsListView$LayoutParams;
    .end local v20    # "updateChildPressed":Z
    .end local v21    # "updateChildSelected":Z
    .end local v22    # "w":I
    :cond_15a
    const/4 v15, 0x0

    goto/16 :goto_15

    .line 1466
    .restart local v15    # "isSelected":Z
    :cond_15d
    const/16 v21, 0x0

    goto/16 :goto_1f

    .line 1468
    .restart local v17    # "mode":I
    .restart local v21    # "updateChildSelected":Z
    :cond_161
    const/4 v14, 0x0

    goto/16 :goto_3c

    .line 1470
    .restart local v14    # "isPressed":Z
    :cond_164
    const/16 v20, 0x0

    goto/16 :goto_46

    .line 1472
    .restart local v20    # "updateChildPressed":Z
    :cond_168
    const/16 v18, 0x0

    goto/16 :goto_52

    .line 1485
    .restart local v18    # "needToMeasure":Z
    .restart local v19    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_16c
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1486
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v19

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_89

    .line 1503
    :cond_185
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v23, v0

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_c9

    .line 1505
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_c9

    .line 1517
    :cond_1b2
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_fc

    .line 1524
    .restart local v13    # "h":I
    .restart local v22    # "w":I
    :cond_1b7
    sub-int v11, p3, v13

    goto/16 :goto_108

    .line 1530
    .restart local v6    # "absoluteGravity":I
    .restart local v11    # "childTop":I
    .restart local v16    # "layoutDirection":I
    :pswitch_1bb
    move/from16 v9, p5

    .line 1531
    .restart local v9    # "childLeft":I
    goto/16 :goto_121

    .line 1533
    .end local v9    # "childLeft":I
    :pswitch_1bf
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v23, v0

    sub-int v23, v23, v22

    div-int/lit8 v23, v23, 0x2

    add-int v9, p5, v23

    .line 1534
    .restart local v9    # "childLeft":I
    goto/16 :goto_121

    .line 1536
    .end local v9    # "childLeft":I
    :pswitch_1cd
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v23, v0

    add-int v23, v23, p5

    sub-int v9, v23, v22

    .line 1537
    .restart local v9    # "childLeft":I
    goto/16 :goto_121

    .line 1548
    :cond_1d9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v23

    sub-int v23, v9, v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1549
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    sub-int v23, v11, v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_12c

    .line 1528
    nop

    :pswitch_data_1f6
    .packed-switch 0x1
        :pswitch_1bf
        :pswitch_11f
        :pswitch_1bb
        :pswitch_11f
        :pswitch_1cd
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .registers 13
    .param p1, "direction"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x6

    .line 1825
    iget v5, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 1826
    .local v5, "selectedPosition":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1827
    .local v4, "numColumns":I
    invoke-virtual {p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v2

    .line 1832
    .local v2, "isLayoutRtl":Z
    const/4 v3, 0x0

    .line 1834
    .local v3, "moved":Z
    iget-boolean v7, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v7, :cond_34

    .line 1835
    div-int v7, v5, v4

    mul-int v6, v7, v4

    .line 1836
    .local v6, "startOfRowPos":I
    add-int v7, v6, v4

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1843
    .local v0, "endOfRowPos":I
    :goto_1f
    sparse-switch p1, :sswitch_data_c0

    .line 1882
    :cond_22
    :goto_22
    if-eqz v3, :cond_2e

    .line 1883
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 1884
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1887
    :cond_2e
    if-eqz v3, :cond_33

    .line 1888
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1891
    :cond_33
    return v3

    .line 1838
    .end local v0    # "endOfRowPos":I
    .end local v6    # "startOfRowPos":I
    :cond_34
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v1, v7, v5

    .line 1839
    .local v1, "invertedSelection":I
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    div-int v8, v1, v4

    mul-int/2addr v8, v4

    sub-int v0, v7, v8

    .line 1840
    .restart local v0    # "endOfRowPos":I
    sub-int v7, v0, v4

    add-int/lit8 v7, v7, 0x1

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .restart local v6    # "startOfRowPos":I
    goto :goto_1f

    .line 1845
    .end local v1    # "invertedSelection":I
    :sswitch_4c
    if-lez v6, :cond_22

    .line 1846
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1847
    sub-int v7, v5, v4

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1848
    const/4 v3, 0x1

    goto :goto_22

    .line 1852
    :sswitch_5b
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_22

    .line 1853
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1854
    add-int v7, v5, v4

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1855
    const/4 v3, 0x1

    goto :goto_22

    .line 1859
    :sswitch_72
    if-nez v2, :cond_83

    if-le v5, v6, :cond_83

    .line 1860
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1861
    add-int/lit8 v7, v5, -0x1

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1862
    const/4 v3, 0x1

    goto :goto_22

    .line 1863
    :cond_83
    if-eqz v2, :cond_22

    if-ge v5, v0, :cond_22

    .line 1864
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1865
    add-int/lit8 v7, v5, 0x1

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1866
    const/4 v3, 0x1

    goto :goto_22

    .line 1870
    :sswitch_98
    if-nez v2, :cond_ae

    if-ge v5, v0, :cond_ae

    .line 1871
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1872
    add-int/lit8 v7, v5, 0x1

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1873
    const/4 v3, 0x1

    goto/16 :goto_22

    .line 1874
    :cond_ae
    if-eqz v2, :cond_22

    if-le v5, v6, :cond_22

    .line 1875
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1876
    add-int/lit8 v7, v5, -0x1

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1877
    const/4 v3, 0x1

    goto/16 :goto_22

    .line 1843
    :sswitch_data_c0
    .sparse-switch
        0x11 -> :sswitch_72
        0x21 -> :sswitch_4c
        0x42 -> :sswitch_98
        0x82 -> :sswitch_5b
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .prologue
    .line 1127
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1130
    .local v0, "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_d

    .line 1131
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 1132
    .restart local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1135
    :cond_d
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 1136
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 1137
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1138
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1140
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v2, :cond_2c

    .line 1141
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1142
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1149
    :goto_2b
    return-void

    .line 1144
    :cond_2c
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .line 1146
    .local v1, "invertedIndex":I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1147
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_2b
.end method

.method protected computeVerticalScrollExtent()I
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 2296
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 2297
    .local v1, "count":I
    if-lez v1, :cond_3e

    .line 2298
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2299
    .local v4, "numColumns":I
    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    .line 2301
    .local v5, "rowCount":I
    mul-int/lit8 v2, v5, 0x64

    .line 2303
    .local v2, "extent":I
    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2304
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2305
    .local v6, "top":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2306
    .local v3, "height":I
    if-lez v3, :cond_23

    .line 2307
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 2310
    :cond_23
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2311
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2312
    .local v0, "bottom":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2313
    if-lez v3, :cond_3d

    .line 2314
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 2319
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "numColumns":I
    .end local v5    # "rowCount":I
    .end local v6    # "top":I
    .end local v7    # "view":Landroid/view/View;
    :cond_3d
    :goto_3d
    return v2

    :cond_3e
    move v2, v8

    goto :goto_3d
.end method

.method protected computeVerticalScrollOffset()I
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 2324
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-ltz v8, :cond_4d

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4d

    .line 2325
    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2326
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2327
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2328
    .local v0, "height":I
    if-lez v0, :cond_4d

    .line 2329
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2330
    .local v1, "numColumns":I
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    div-int v3, v8, v1

    .line 2334
    .local v3, "rowCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->isStackFromBottom()Z

    move-result v8

    if-eqz v8, :cond_4e

    mul-int v8, v3, v1

    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int v2, v8, v9

    .line 2336
    .local v2, "oddItemsOnFirstRow":I
    :goto_2e
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v8, v2

    div-int v6, v8, v1

    .line 2337
    .local v6, "whichRow":I
    mul-int/lit8 v8, v6, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v0

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v3

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2341
    .end local v0    # "height":I
    .end local v1    # "numColumns":I
    .end local v2    # "oddItemsOnFirstRow":I
    .end local v3    # "rowCount":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "whichRow":I
    :cond_4d
    return v7

    .restart local v0    # "height":I
    .restart local v1    # "numColumns":I
    .restart local v3    # "rowCount":I
    .restart local v4    # "top":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_4e
    move v2, v7

    .line 2334
    goto :goto_2e
.end method

.method protected computeVerticalScrollRange()I
    .registers 6

    .prologue
    .line 2347
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2348
    .local v0, "numColumns":I
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int v2, v3, v0

    .line 2349
    .local v2, "rowCount":I
    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2350
    .local v1, "result":I
    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    if-eqz v3, :cond_28

    .line 2352
    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2354
    :cond_28
    return v1
.end method

.method fillGap(Z)V
    .registers 11
    .param p1, "down"    # Z

    .prologue
    const/16 v8, 0x22

    .line 246
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 247
    .local v1, "numColumns":I
    iget v6, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 249
    .local v6, "verticalSpacing":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 251
    .local v0, "count":I
    if-eqz p1, :cond_3d

    .line 252
    const/4 v3, 0x0

    .line 253
    .local v3, "paddingTop":I
    iget v7, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_17

    .line 254
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result v3

    .line 256
    :cond_17
    if-lez v0, :cond_3b

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v5, v7, v6

    .line 258
    .local v5, "startOffset":I
    :goto_25
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int v4, v7, v0

    .line 259
    .local v4, "position":I
    iget-boolean v7, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v7, :cond_30

    .line 260
    add-int/lit8 v7, v1, -0x1

    add-int/2addr v4, v7

    .line 262
    :cond_30
    invoke-direct {p0, v4, v5}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 263
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 280
    .end local v3    # "paddingTop":I
    :goto_3a
    return-void

    .end local v4    # "position":I
    .end local v5    # "startOffset":I
    .restart local v3    # "paddingTop":I
    :cond_3b
    move v5, v3

    .line 256
    goto :goto_25

    .line 265
    .end local v3    # "paddingTop":I
    :cond_3d
    const/4 v2, 0x0

    .line 266
    .local v2, "paddingBottom":I
    iget v7, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_48

    .line 267
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result v2

    .line 269
    :cond_48
    if-lez v0, :cond_67

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v5, v7, v6

    .line 271
    .restart local v5    # "startOffset":I
    :goto_55
    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 272
    .restart local v4    # "position":I
    iget-boolean v7, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v7, :cond_6e

    .line 273
    sub-int/2addr v4, v1

    .line 277
    :goto_5c
    invoke-direct {p0, v4, v5}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 278
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_3a

    .line 269
    .end local v4    # "position":I
    .end local v5    # "startOffset":I
    :cond_67
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v7

    sub-int v5, v7, v2

    goto :goto_55

    .line 275
    .restart local v4    # "position":I
    .restart local v5    # "startOffset":I
    :cond_6e
    add-int/lit8 v4, v4, -0x1

    goto :goto_5c
.end method

.method findMotionRow(I)I
    .registers 6
    .param p1, "y"    # I

    .prologue
    .line 521
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 522
    .local v0, "childCount":I
    if-lez v0, :cond_33

    .line 524
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 525
    .local v2, "numColumns":I
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v3, :cond_1f

    .line 526
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_33

    .line 527
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1d

    .line 528
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 539
    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :goto_1c
    return v3

    .line 526
    .restart local v1    # "i":I
    .restart local v2    # "numColumns":I
    :cond_1d
    add-int/2addr v1, v2

    goto :goto_d

    .line 532
    .end local v1    # "i":I
    :cond_1f
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_21
    if-ltz v1, :cond_33

    .line 533
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_31

    .line 534
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1c

    .line 532
    :cond_31
    sub-int/2addr v1, v2

    goto :goto_21

    .line 539
    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :cond_33
    const/4 v3, -0x1

    goto :goto_1c
.end method

.method fullScroll(I)Z
    .registers 5
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x2

    .line 1796
    const/4 v0, 0x0

    .line 1797
    .local v0, "moved":Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_16

    .line 1798
    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1799
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1800
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1801
    const/4 v0, 0x1

    .line 1809
    :cond_10
    :goto_10
    if-eqz v0, :cond_15

    .line 1810
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1813
    :cond_15
    return v0

    .line 1802
    :cond_16
    const/16 v1, 0x82

    if-ne p1, v1, :cond_10

    .line 1803
    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1804
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1805
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1806
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getColumnWidth()I
    .registers 2

    .prologue
    .line 2199
    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    .prologue
    .line 2063
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    return v0
.end method

.method public getHorizontalSpacing()I
    .registers 2

    .prologue
    .line 2098
    iget v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getNumColumns()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2243
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    return v0
.end method

.method public getRequestedColumnWidth()I
    .registers 2

    .prologue
    .line 2216
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    return v0
.end method

.method public getRequestedHorizontalSpacing()I
    .registers 2

    .prologue
    .line 2118
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public getStretchMode()I
    .registers 2

    .prologue
    .line 2169
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .registers 2

    .prologue
    .line 2149
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    return v0
.end method

.method protected layoutChildren()V
    .registers 36

    .prologue
    .line 1153
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1154
    .local v7, "blockLayoutRequests":Z
    if-nez v7, :cond_e

    .line 1155
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1159
    :cond_e
    :try_start_e
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1161
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invalidate()V

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v32, v0

    if-nez v32, :cond_2d

    .line 1164
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1165
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_25c

    .line 1399
    if-nez v7, :cond_2c

    .line 1400
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1403
    :cond_2c
    :goto_2c
    return-void

    .line 1169
    :cond_2d
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 1170
    .local v11, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mBottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTop:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    sub-int v10, v32, v33

    .line 1172
    .local v10, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v9

    .line 1174
    .local v9, "childCount":I
    const/4 v13, 0x0

    .line 1177
    .local v13, "delta":I
    const/16 v24, 0x0

    .line 1178
    .local v24, "oldSel":Landroid/view/View;
    const/16 v23, 0x0

    .line 1179
    .local v23, "oldFirst":Landroid/view/View;
    const/16 v22, 0x0

    .line 1182
    .local v22, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mLayoutMode:I

    move/from16 v32, v0

    packed-switch v32, :pswitch_data_406

    .line 1201
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v19, v32, v33

    .line 1202
    .local v19, "index":I
    if-ltz v19, :cond_83

    move/from16 v0, v19

    if-ge v0, v9, :cond_83

    .line 1203
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 1207
    :cond_83
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 1210
    .end local v19    # "index":I
    :cond_8d
    :goto_8d
    :pswitch_8d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/GridView;->mDataChanged:Z

    .line 1211
    .local v12, "dataChanged":Z
    if-eqz v12, :cond_96

    .line 1212
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->handleDataChanged()V

    .line 1217
    :cond_96
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v32, v0

    if-nez v32, :cond_e4

    .line 1218
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1219
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_a4
    .catchall {:try_start_2d .. :try_end_a4} :catchall_25c

    .line 1399
    if-nez v7, :cond_2c

    .line 1400
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    goto/16 :goto_2c

    .line 1184
    .end local v12    # "dataChanged":Z
    :pswitch_b0
    :try_start_b0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v19, v32, v33

    .line 1185
    .restart local v19    # "index":I
    if-ltz v19, :cond_8d

    move/from16 v0, v19

    if-ge v0, v9, :cond_8d

    .line 1186
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    goto :goto_8d

    .line 1195
    .end local v19    # "index":I
    :pswitch_cd
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v32, v0

    if-ltz v32, :cond_8d

    .line 1196
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v33, v0

    sub-int v13, v32, v33

    goto :goto_8d

    .line 1223
    .restart local v12    # "dataChanged":Z
    :cond_e4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1225
    const/4 v4, 0x0

    .line 1226
    .local v4, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v5, 0x0

    .line 1227
    .local v5, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v6, -0x1

    .line 1232
    .local v6, "accessibilityFocusPosition":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v30

    .line 1233
    .local v30, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v30, :cond_126

    .line 1234
    invoke-virtual/range {v30 .. v30}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v16

    .line 1235
    .local v16, "focusHost":Landroid/view/View;
    if-eqz v16, :cond_126

    .line 1236
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v15

    .line 1237
    .local v15, "focusChild":Landroid/view/View;
    if-eqz v15, :cond_126

    .line 1238
    if-eqz v12, :cond_11a

    invoke-virtual {v15}, Landroid/view/View;->hasTransientState()Z

    move-result v32

    if-nez v32, :cond_11a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mAdapterHasStableIds:Z

    move/from16 v32, v0

    if-eqz v32, :cond_120

    .line 1242
    :cond_11a
    move-object/from16 v5, v16

    .line 1243
    invoke-virtual/range {v30 .. v30}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 1248
    :cond_120
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    .line 1255
    .end local v15    # "focusChild":Landroid/view/View;
    .end local v16    # "focusHost":Landroid/view/View;
    :cond_126
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/GridView;->mFirstPosition:I

    .line 1256
    .local v14, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v27, v0

    .line 1258
    .local v27, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v12, :cond_14e

    .line 1259
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_134
    move/from16 v0, v17

    if-ge v0, v9, :cond_153

    .line 1260
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    add-int v33, v14, v17

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1259
    add-int/lit8 v17, v17, 0x1

    goto :goto_134

    .line 1263
    .end local v17    # "i":I
    :cond_14e
    move-object/from16 v0, v27

    invoke-virtual {v0, v9, v14}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1267
    :cond_153
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    .line 1268
    invoke-virtual/range {v27 .. v27}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1270
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mLayoutMode:I

    move/from16 v32, v0

    packed-switch v32, :pswitch_data_416

    .line 1298
    if-nez v9, :cond_2e5

    .line 1299
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v32, v0

    if-nez v32, :cond_2b9

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v32, v0

    if-eqz v32, :cond_17a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v32

    if-eqz v32, :cond_2b5

    :cond_17a
    const/16 v32, -0x1

    :goto_17c
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1302
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v29

    .line 1324
    .end local v11    # "childrenTop":I
    .local v29, "sel":Landroid/view/View;
    :goto_189
    invoke-virtual/range {v27 .. v27}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1326
    if-eqz v29, :cond_34b

    .line 1327
    const/16 v32, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1328
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mSelectedTop:I

    .line 1354
    :cond_1a3
    :goto_1a3
    if-eqz v30, :cond_1d2

    .line 1355
    invoke-virtual/range {v30 .. v30}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v21

    .line 1356
    .local v21, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v21, :cond_1d2

    .line 1357
    if-eqz v5, :cond_3dc

    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v32

    if-eqz v32, :cond_3dc

    .line 1359
    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v26

    .line 1361
    .local v26, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v4, :cond_3d7

    if-eqz v26, :cond_3d7

    .line 1362
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v31

    .line 1364
    .local v31, "virtualViewId":I
    const/16 v32, 0x40

    const/16 v33, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 1382
    .end local v21    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v26    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v31    # "virtualViewId":I
    :cond_1d2
    :goto_1d2
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mLayoutMode:I

    .line 1383
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mDataChanged:Z

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1ff

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 1386
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1388
    :cond_1ff
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mNeedSync:Z

    .line 1389
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1391
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->updateScrollIndicators()V

    .line 1393
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v32, v0

    if-lez v32, :cond_222

    .line 1394
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 1397
    :cond_222
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_225
    .catchall {:try_start_b0 .. :try_end_225} :catchall_25c

    .line 1399
    if-nez v7, :cond_2c

    .line 1400
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    goto/16 :goto_2c

    .line 1272
    .end local v29    # "sel":Landroid/view/View;
    .restart local v11    # "childrenTop":I
    :pswitch_231
    if-eqz v22, :cond_241

    .line 1273
    :try_start_233
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1, v11, v10}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v29

    .restart local v29    # "sel":Landroid/view/View;
    goto/16 :goto_189

    .line 1275
    .end local v29    # "sel":Landroid/view/View;
    :cond_241
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v29

    .line 1277
    .restart local v29    # "sel":Landroid/view/View;
    goto/16 :goto_189

    .line 1279
    .end local v29    # "sel":Landroid/view/View;
    :pswitch_249
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    .line 1280
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v29

    .line 1281
    .restart local v29    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V
    :try_end_25a
    .catchall {:try_start_233 .. :try_end_25a} :catchall_25c

    goto/16 :goto_189

    .line 1399
    .end local v4    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v5    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v6    # "accessibilityFocusPosition":I
    .end local v9    # "childCount":I
    .end local v10    # "childrenBottom":I
    .end local v11    # "childrenTop":I
    .end local v12    # "dataChanged":Z
    .end local v13    # "delta":I
    .end local v14    # "firstPosition":I
    .end local v22    # "newSel":Landroid/view/View;
    .end local v23    # "oldFirst":Landroid/view/View;
    .end local v24    # "oldSel":Landroid/view/View;
    .end local v27    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v29    # "sel":Landroid/view/View;
    .end local v30    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :catchall_25c
    move-exception v32

    if-nez v7, :cond_267

    .line 1400
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_267
    throw v32

    .line 1284
    .restart local v4    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v5    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .restart local v6    # "accessibilityFocusPosition":I
    .restart local v9    # "childCount":I
    .restart local v10    # "childrenBottom":I
    .restart local v11    # "childrenTop":I
    .restart local v12    # "dataChanged":Z
    .restart local v13    # "delta":I
    .restart local v14    # "firstPosition":I
    .restart local v22    # "newSel":Landroid/view/View;
    .restart local v23    # "oldFirst":Landroid/view/View;
    .restart local v24    # "oldSel":Landroid/view/View;
    .restart local v27    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v30    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :pswitch_268
    :try_start_268
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1, v10}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v29

    .line 1285
    .restart local v29    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_189

    .line 1288
    .end local v29    # "sel":Landroid/view/View;
    :pswitch_27d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSpecificTop:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v29

    .line 1289
    .restart local v29    # "sel":Landroid/view/View;
    goto/16 :goto_189

    .line 1291
    .end local v29    # "sel":Landroid/view/View;
    :pswitch_295
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSyncPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSpecificTop:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v29

    .line 1292
    .restart local v29    # "sel":Landroid/view/View;
    goto/16 :goto_189

    .line 1295
    .end local v29    # "sel":Landroid/view/View;
    :pswitch_2ad
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11, v10}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v29

    .line 1296
    .restart local v29    # "sel":Landroid/view/View;
    goto/16 :goto_189

    .line 1300
    .end local v29    # "sel":Landroid/view/View;
    :cond_2b5
    const/16 v32, 0x0

    goto/16 :goto_17c

    .line 1304
    :cond_2b9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v32, v0

    add-int/lit8 v20, v32, -0x1

    .line 1305
    .local v20, "last":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v32, v0

    if-eqz v32, :cond_2cf

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v32

    if-eqz v32, :cond_2e2

    :cond_2cf
    const/16 v32, -0x1

    :goto_2d1
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1307
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v10}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v29

    .line 1308
    .restart local v29    # "sel":Landroid/view/View;
    goto/16 :goto_189

    .end local v29    # "sel":Landroid/view/View;
    :cond_2e2
    move/from16 v32, v20

    .line 1305
    goto :goto_2d1

    .line 1310
    .end local v20    # "last":I
    :cond_2e5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v32, v0

    if-ltz v32, :cond_316

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_316

    .line 1311
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v32, v0

    if-nez v24, :cond_311

    .end local v11    # "childrenTop":I
    :goto_307
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1, v11}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v29

    .restart local v29    # "sel":Landroid/view/View;
    goto/16 :goto_189

    .end local v29    # "sel":Landroid/view/View;
    .restart local v11    # "childrenTop":I
    :cond_311
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v11

    goto :goto_307

    .line 1313
    :cond_316
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_33f

    .line 1314
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v32, v0

    if-nez v23, :cond_33a

    .end local v11    # "childrenTop":I
    :goto_330
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1, v11}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v29

    .restart local v29    # "sel":Landroid/view/View;
    goto/16 :goto_189

    .end local v29    # "sel":Landroid/view/View;
    .restart local v11    # "childrenTop":I
    :cond_33a
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v11

    goto :goto_330

    .line 1317
    :cond_33f
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1, v11}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v29

    .restart local v29    # "sel":Landroid/view/View;
    goto/16 :goto_189

    .line 1330
    .end local v11    # "childrenTop":I
    :cond_34b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    move/from16 v32, v0

    if-lez v32, :cond_38c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_38c

    const/16 v18, 0x1

    .line 1332
    .local v18, "inTouchMode":Z
    :goto_363
    if-eqz v18, :cond_38f

    .line 1334
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1335
    .local v8, "child":Landroid/view/View;
    if-eqz v8, :cond_1a3

    .line 1336
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_1a3

    .line 1330
    .end local v8    # "child":Landroid/view/View;
    .end local v18    # "inTouchMode":Z
    :cond_38c
    const/16 v18, 0x0

    goto :goto_363

    .line 1338
    .restart local v18    # "inTouchMode":Z
    :cond_38f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3c4

    .line 1342
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectorPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1343
    .restart local v8    # "child":Landroid/view/View;
    if-eqz v8, :cond_1a3

    .line 1344
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectorPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_1a3

    .line 1348
    .end local v8    # "child":Landroid/view/View;
    :cond_3c4
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mSelectedTop:I

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_1a3

    .line 1367
    .end local v18    # "inTouchMode":Z
    .restart local v21    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v26    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_3d7
    invoke-virtual {v5}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_1d2

    .line 1369
    .end local v26    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_3dc
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v6, v0, :cond_1d2

    .line 1371
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v32, v0

    sub-int v32, v6, v32

    const/16 v33, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    invoke-static/range {v32 .. v34}, Landroid/util/MathUtils;->constrain(III)I

    move-result v25

    .line 1374
    .local v25, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .line 1375
    .local v28, "restoreView":Landroid/view/View;
    if-eqz v28, :cond_1d2

    .line 1376
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->requestAccessibilityFocus()Z
    :try_end_403
    .catchall {:try_start_268 .. :try_end_403} :catchall_25c

    goto/16 :goto_1d2

    .line 1182
    nop

    :pswitch_data_406
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_b0
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_cd
    .end packed-switch

    .line 1270
    :pswitch_data_416
    .packed-switch 0x1
        :pswitch_249
        :pswitch_231
        :pswitch_268
        :pswitch_27d
        :pswitch_295
        :pswitch_2ad
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .registers 6
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v1, -0x1

    .line 230
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 231
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    move p1, v1

    .line 238
    .end local p1    # "position":I
    :cond_c
    :goto_c
    return p1

    .line 235
    .restart local p1    # "position":I
    :cond_d
    if-ltz p1, :cond_13

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-lt p1, v2, :cond_c

    :cond_13
    move p1, v1

    .line 236
    goto :goto_c
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 13
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1954
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1956
    const/4 v1, -0x1

    .line 1957
    .local v1, "closestChildIndex":I
    if-eqz p1, :cond_37

    if-eqz p3, :cond_37

    .line 1958
    iget v7, p0, Landroid/widget/GridView;->mScrollX:I

    iget v8, p0, Landroid/widget/GridView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1962
    iget-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 1963
    .local v6, "otherRect":Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 1964
    .local v4, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 1965
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v0, :cond_37

    .line 1967
    invoke-direct {p0, v3, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_24

    .line 1965
    :cond_21
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1971
    :cond_24
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1972
    .local v5, "other":Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1973
    invoke-virtual {p0, v5, v6}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1974
    invoke-static {p3, v6, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 1976
    .local v2, "distance":I
    if-ge v2, v4, :cond_21

    .line 1977
    move v4, v2

    .line 1978
    move v1, v3

    goto :goto_21

    .line 1983
    .end local v0    # "childCount":I
    .end local v2    # "distance":I
    .end local v3    # "i":I
    .end local v4    # "minDistance":I
    .end local v5    # "other":Landroid/view/View;
    .end local v6    # "otherRect":Landroid/graphics/Rect;
    :cond_37
    if-ltz v1, :cond_40

    .line 1984
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelection(I)V

    .line 1988
    :goto_3f
    return-void

    .line 1986
    :cond_40
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    goto :goto_3f
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2359
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2360
    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2361
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2365
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2366
    const-class v4, Landroid/widget/GridView;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2368
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    .line 2369
    .local v1, "columnsCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v4

    div-int v2, v4, v1

    .line 2370
    .local v2, "rowsCount":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getSelectionModeForAccessibility()I

    move-result v3

    .line 2371
    .local v3, "selectionMode":I
    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 2373
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 2374
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2379
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2381
    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v7

    .line 2382
    .local v7, "count":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v6

    .line 2383
    .local v6, "columnsCount":I
    div-int v11, v7, v6

    .line 2387
    .local v11, "rowsCount":I
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_31

    .line 2388
    rem-int v2, p2, v6

    .line 2389
    .local v2, "column":I
    div-int v0, p2, v6

    .line 2397
    .local v0, "row":I
    :goto_15
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    .line 2398
    .local v10, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v10, :cond_42

    iget v1, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v3, -0x2

    if-eq v1, v3, :cond_42

    const/4 v4, 0x1

    .line 2399
    .local v4, "isHeading":Z
    :goto_23
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->isItemChecked(I)Z

    move-result v5

    .line 2400
    .local v5, "isSelected":Z
    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v9

    .line 2402
    .local v9, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 2403
    return-void

    .line 2391
    .end local v0    # "row":I
    .end local v2    # "column":I
    .end local v4    # "isHeading":Z
    .end local v5    # "isSelected":Z
    .end local v9    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .end local v10    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_31
    add-int/lit8 v1, v7, -0x1

    sub-int v8, v1, p2

    .line 2393
    .local v8, "invertedIndex":I
    add-int/lit8 v1, v6, -0x1

    rem-int v3, v8, v6

    sub-int v2, v1, v3

    .line 2394
    .restart local v2    # "column":I
    add-int/lit8 v1, v11, -0x1

    div-int v3, v8, v6

    sub-int v0, v1, v3

    .restart local v0    # "row":I
    goto :goto_15

    .line 2398
    .end local v8    # "invertedIndex":I
    .restart local v10    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_42
    const/4 v4, 0x0

    goto :goto_23
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1618
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1623
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1628
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 25
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1039
    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1041
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 1042
    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1043
    .local v11, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 1044
    .local v18, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1046
    .local v12, "heightSize":I
    if-nez v17, :cond_45

    .line 1047
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v19, v0

    if-lez v19, :cond_1e6

    .line 1048
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v18, v19, v20

    .line 1052
    :goto_3f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v19

    add-int v18, v18, v19

    .line 1055
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    .line 1056
    .local v7, "childWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/GridView;->determineColumns(I)Z

    move-result v10

    .line 1058
    .local v10, "didNotInitiallyFit":Z
    const/4 v4, 0x0

    .line 1059
    .local v4, "childHeight":I
    const/4 v6, 0x0

    .line 1061
    .local v6, "childState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_202

    const/16 v19, 0x0

    :goto_73
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mItemCount:I

    .line 1062
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/GridView;->mItemCount:I

    .line 1063
    .local v9, "count":I
    if-lez v9, :cond_11c

    .line 1064
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mIsScrap:[Z

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 1066
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .line 1067
    .local v16, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v16, :cond_a4

    .line 1068
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .end local v16    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .line 1069
    .restart local v16    # "p":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1071
    :cond_a4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1072
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1074
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v5

    .line 1076
    .local v5, "childHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v8

    .line 1078
    .local v8, "childWidthSpec":I
    invoke-virtual {v3, v8, v5}, Landroid/view/View;->measure(II)V

    .line 1080
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1081
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Landroid/widget/GridView;->combineMeasuredStates(II)I

    move-result v6

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v19

    if-eqz v19, :cond_11c

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1088
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v16    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_11c
    if-nez v11, :cond_142

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v19, v19, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v20

    mul-int/lit8 v20, v20, 0x2

    add-int v12, v19, v20

    .line 1093
    :cond_142
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-ne v11, v0, :cond_17c

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v15, v19, v20

    .line 1096
    .local v15, "ourSize":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/GridView;->mNumColumns:I

    .line 1097
    .local v14, "numColumns":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_167
    if-ge v13, v9, :cond_17b

    .line 1098
    add-int/2addr v15, v4

    .line 1099
    add-int v19, v13, v14

    move/from16 v0, v19

    if-ge v0, v9, :cond_178

    .line 1100
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v19, v0

    add-int v15, v15, v19

    .line 1102
    :cond_178
    if-lt v15, v12, :cond_20e

    .line 1103
    move v15, v12

    .line 1107
    :cond_17b
    move v12, v15

    .line 1110
    .end local v13    # "i":I
    .end local v14    # "numColumns":I
    .end local v15    # "ourSize":I
    :cond_17c
    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1d8

    .line 1111
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v15, v19, v20

    .line 1114
    .restart local v15    # "ourSize":I
    move/from16 v0, v18

    if-gt v15, v0, :cond_1d4

    if-eqz v10, :cond_1d8

    .line 1115
    :cond_1d4
    const/high16 v19, 0x1000000

    or-int v18, v18, v19

    .line 1119
    .end local v15    # "ourSize":I
    :cond_1d8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    .line 1120
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mWidthMeasureSpec:I

    .line 1121
    return-void

    .line 1050
    .end local v4    # "childHeight":I
    .end local v6    # "childState":I
    .end local v7    # "childWidth":I
    .end local v9    # "count":I
    .end local v10    # "didNotInitiallyFit":Z
    :cond_1e6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v18, v19, v20

    goto/16 :goto_3f

    .line 1061
    .restart local v4    # "childHeight":I
    .restart local v6    # "childState":I
    .restart local v7    # "childWidth":I
    .restart local v10    # "didNotInitiallyFit":Z
    :cond_202
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/widget/ListAdapter;->getCount()I

    move-result v19

    goto/16 :goto_73

    .line 1097
    .restart local v9    # "count":I
    .restart local v13    # "i":I
    .restart local v14    # "numColumns":I
    .restart local v15    # "ourSize":I
    :cond_20e
    add-int/2addr v13, v14

    goto/16 :goto_167
.end method

.method pageScroll(I)Z
    .registers 7
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x0

    .line 1770
    const/4 v0, -0x1

    .line 1772
    .local v0, "nextPage":I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1e

    .line 1773
    iget v2, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1778
    :cond_11
    :goto_11
    if-ltz v0, :cond_1d

    .line 1779
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1780
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1781
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1782
    const/4 v1, 0x1

    .line 1785
    :cond_1d
    return v1

    .line 1774
    :cond_1e
    const/16 v2, 0x82

    if-ne p1, v2, :cond_11

    .line 1775
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_11
.end method

.method sequenceScroll(I)Z
    .registers 15
    .param p1, "direction"    # I

    .prologue
    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1899
    iget v5, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 1900
    .local v5, "selectedPosition":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1901
    .local v4, "numColumns":I
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    .line 1905
    .local v0, "count":I
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_32

    .line 1906
    div-int v10, v5, v4

    mul-int v7, v10, v4

    .line 1907
    .local v7, "startOfRow":I
    add-int v10, v7, v4

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1914
    .local v1, "endOfRow":I
    :goto_1b
    const/4 v3, 0x0

    .line 1915
    .local v3, "moved":Z
    const/4 v6, 0x0

    .line 1916
    .local v6, "showScroll":Z
    packed-switch p1, :pswitch_data_68

    .line 1940
    :cond_20
    :goto_20
    if-eqz v3, :cond_2c

    .line 1941
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 1942
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1945
    :cond_2c
    if-eqz v6, :cond_31

    .line 1946
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1949
    :cond_31
    return v3

    .line 1909
    .end local v1    # "endOfRow":I
    .end local v3    # "moved":Z
    .end local v6    # "showScroll":Z
    .end local v7    # "startOfRow":I
    :cond_32
    add-int/lit8 v10, v0, -0x1

    sub-int v2, v10, v5

    .line 1910
    .local v2, "invertedSelection":I
    add-int/lit8 v10, v0, -0x1

    div-int v11, v2, v4

    mul-int/2addr v11, v4

    sub-int v1, v10, v11

    .line 1911
    .restart local v1    # "endOfRow":I
    sub-int v10, v1, v4

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "startOfRow":I
    goto :goto_1b

    .line 1918
    .end local v2    # "invertedSelection":I
    .restart local v3    # "moved":Z
    .restart local v6    # "showScroll":Z
    :pswitch_46
    add-int/lit8 v10, v0, -0x1

    if-ge v5, v10, :cond_20

    .line 1920
    iput v12, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1921
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1922
    const/4 v3, 0x1

    .line 1924
    if-ne v5, v1, :cond_56

    move v6, v8

    :goto_55
    goto :goto_20

    :cond_56
    move v6, v9

    goto :goto_55

    .line 1929
    :pswitch_58
    if-lez v5, :cond_20

    .line 1931
    iput v12, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1932
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1933
    const/4 v3, 0x1

    .line 1935
    if-ne v5, v7, :cond_66

    move v6, v8

    :goto_65
    goto :goto_20

    :cond_66
    move v6, v9

    goto :goto_65

    .line 1916
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_58
        :pswitch_46
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 60
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 8
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 185
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_11

    .line 186
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 189
    :cond_11
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    .line 190
    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 191
    iput-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 193
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/GridView;->mOldSelectedPosition:I

    .line 194
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/GridView;->mOldSelectedRowId:J

    .line 197
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_71

    .line 200
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    iput v1, p0, Landroid/widget/GridView;->mOldItemCount:I

    .line 201
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/GridView;->mItemCount:I

    .line 202
    iput-boolean v5, p0, Landroid/widget/GridView;->mDataChanged:Z

    .line 203
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 205
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 206
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 208
    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 211
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v1, :cond_6c

    .line 212
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 216
    .local v0, "position":I
    :goto_5f
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 217
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 218
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 225
    .end local v0    # "position":I
    :goto_68
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 226
    return-void

    .line 214
    :cond_6c
    invoke-virtual {p0, v4, v5}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_5f

    .line 220
    .end local v0    # "position":I
    :cond_71
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 222
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    goto :goto_68
.end method

.method public setColumnWidth(I)V
    .registers 3
    .param p1, "columnWidth"    # I

    .prologue
    .line 2180
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_9

    .line 2181
    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 2182
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2184
    :cond_9
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 2049
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_9

    .line 2050
    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    .line 2051
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2053
    :cond_9
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .registers 3
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 2076
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_9

    .line 2077
    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 2078
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2080
    :cond_9
    return-void
.end method

.method public setNumColumns(I)V
    .registers 3
    .param p1, "numColumns"    # I

    .prologue
    .line 2227
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_9

    .line 2228
    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    .line 2229
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2231
    :cond_9
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 176
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1574
    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1575
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1579
    :goto_9
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1580
    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_15

    .line 1581
    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1583
    :cond_15
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 1584
    return-void

    .line 1577
    :cond_19
    iput p1, p0, Landroid/widget/GridView;->mResurrectToPosition:I

    goto :goto_9
.end method

.method setSelectionInt(I)V
    .registers 9
    .param p1, "position"    # I

    .prologue
    .line 1593
    iget v4, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    .line 1595
    .local v4, "previousSelectedPosition":I
    iget-object v5, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_b

    .line 1596
    iget-object v5, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 1599
    :cond_b
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1600
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1602
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v5, :cond_35

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    sub-int v0, v5, v6

    .line 1604
    .local v0, "next":I
    :goto_1d
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v5, :cond_38

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    .line 1607
    .local v2, "previous":I
    :goto_27
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, v0, v5

    .line 1608
    .local v1, "nextRow":I
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v2, v5

    .line 1610
    .local v3, "previousRow":I
    if-eq v1, v3, :cond_34

    .line 1611
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1614
    :cond_34
    return-void

    .line 1602
    .end local v0    # "next":I
    .end local v1    # "nextRow":I
    .end local v2    # "previous":I
    .end local v3    # "previousRow":I
    :cond_35
    iget v0, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    goto :goto_1d

    .restart local v0    # "next":I
    :cond_38
    move v2, v4

    .line 1604
    goto :goto_27
.end method

.method public setStretchMode(I)V
    .registers 3
    .param p1, "stretchMode"    # I

    .prologue
    .line 2161
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_9

    .line 2162
    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 2163
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2165
    :cond_9
    return-void
.end method

.method public setVerticalSpacing(I)V
    .registers 3
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 2133
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_9

    .line 2134
    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 2135
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2137
    :cond_9
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .registers 2
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 862
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 863
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 2
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 852
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 853
    return-void
.end method
