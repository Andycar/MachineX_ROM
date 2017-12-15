.class public Landroid/widget/ExpandableHeightGridView;
.super Landroid/widget/GridView;
.source "ExpandableHeightGridView.java"


# instance fields
.field private expanded:Z

.field private mItemHeight:I

.field private mLineNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-boolean v0, p0, Landroid/widget/ExpandableHeightGridView;->expanded:Z

    .line 30
    iput v0, p0, Landroid/widget/ExpandableHeightGridView;->mItemHeight:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-boolean v0, p0, Landroid/widget/ExpandableHeightGridView;->expanded:Z

    .line 30
    iput v0, p0, Landroid/widget/ExpandableHeightGridView;->mItemHeight:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-boolean v0, p0, Landroid/widget/ExpandableHeightGridView;->expanded:Z

    .line 30
    iput v0, p0, Landroid/widget/ExpandableHeightGridView;->mItemHeight:I

    .line 43
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .registers 2

    .prologue
    .line 46
    iget-boolean v0, p0, Landroid/widget/ExpandableHeightGridView;->expanded:Z

    return v0
.end method

.method public onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/widget/ExpandableHeightGridView;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 54
    const v2, 0xffffff

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 55
    .local v0, "expandSpec":I
    invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V

    .line 57
    invoke-virtual {p0}, Landroid/widget/ExpandableHeightGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 59
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Landroid/widget/ExpandableHeightGridView;->mItemHeight:I

    if-lez v2, :cond_2c

    .line 61
    iget v2, p0, Landroid/widget/ExpandableHeightGridView;->mLineNum:I

    if-nez v2, :cond_29

    const/4 v2, 0x1

    :goto_1f
    iput v2, p0, Landroid/widget/ExpandableHeightGridView;->mLineNum:I

    .line 62
    iget v2, p0, Landroid/widget/ExpandableHeightGridView;->mLineNum:I

    iget v3, p0, Landroid/widget/ExpandableHeightGridView;->mItemHeight:I

    mul-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    .end local v0    # "expandSpec":I
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_28
    return-void

    .line 61
    .restart local v0    # "expandSpec":I
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_29
    iget v2, p0, Landroid/widget/ExpandableHeightGridView;->mLineNum:I

    goto :goto_1f

    .line 64
    :cond_2c
    invoke-virtual {p0}, Landroid/widget/ExpandableHeightGridView;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_28

    .line 67
    .end local v0    # "expandSpec":I
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_33
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    goto :goto_28
.end method

.method public setExpanded(Z)V
    .registers 2
    .param p1, "expanded"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Landroid/widget/ExpandableHeightGridView;->expanded:Z

    .line 73
    return-void
.end method

.method public setItemHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .prologue
    .line 76
    iput p1, p0, Landroid/widget/ExpandableHeightGridView;->mItemHeight:I

    .line 77
    return-void
.end method
