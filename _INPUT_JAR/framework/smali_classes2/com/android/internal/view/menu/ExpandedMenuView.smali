.class public final Lcom/android/internal/view/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.source "ExpandedMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private isDeviceDefault:I

.field private mAnimations:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mVisibleMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    sget-object v2, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mAnimations:I

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 61
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10105a2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 62
    iget v2, v1, Landroid/util/TypedValue;->data:I

    iput v2, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->isDeviceDefault:I

    .line 65
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    return-void
.end method


# virtual methods
.method public getWindowAnimations()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mAnimations:I

    return v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 70
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 77
    .local v1, "mAdapter":Landroid/widget/Adapter;
    if-eqz v1, :cond_13

    instance-of v2, v1, Landroid/widget/BaseAdapter;

    if-eqz v2, :cond_13

    move-object v0, v1

    .line 78
    check-cast v0, Landroid/widget/BaseAdapter;

    .line 79
    .local v0, "baseAdapter":Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 81
    .end local v0    # "baseAdapter":Landroid/widget/BaseAdapter;
    :cond_13
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ExpandedMenuView;->setSelection(I)V

    .line 82
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ExpandedMenuView;->setChildrenDrawingCacheEnabled(Z)V

    .line 90
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ExpandedMenuView;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 98
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->getCount()I

    move-result v0

    .line 112
    .local v0, "mItemCount":I
    iget v4, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->isDeviceDefault:I

    if-eqz v4, :cond_36

    .line 114
    iget-object v4, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00b7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 115
    .local v1, "mItemMaxCount":I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->getMeasuredHeight()I

    move-result v2

    .line 116
    .local v2, "mMeasuredHeight":I
    if-le v0, v1, :cond_37

    iget-object v4, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050172

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 118
    .local v3, "mVisibleMaxHeight":I
    :goto_2b
    if-le v2, v3, :cond_36

    if-eqz v3, :cond_36

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/view/menu/ExpandedMenuView;->setMeasuredDimension(II)V

    .line 123
    .end local v1    # "mItemMaxCount":I
    .end local v2    # "mMeasuredHeight":I
    .end local v3    # "mVisibleMaxHeight":I
    :cond_36
    return-void

    .line 116
    .restart local v1    # "mItemMaxCount":I
    .restart local v2    # "mMeasuredHeight":I
    :cond_37
    iget-object v4, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050173

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_2b
.end method
