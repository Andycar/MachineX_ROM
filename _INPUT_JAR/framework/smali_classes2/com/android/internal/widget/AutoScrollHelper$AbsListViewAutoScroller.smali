.class public Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;
.super Lcom/android/internal/widget/AutoScrollHelper;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AbsListViewAutoScroller"
.end annotation


# instance fields
.field private final mTarget:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .registers 2
    .param p1, "target"    # Landroid/widget/AbsListView;

    .prologue
    .line 875
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    .line 877
    iput-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    .line 878
    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .registers 3
    .param p1, "direction"    # I

    .prologue
    .line 888
    const/4 v0, 0x0

    return v0
.end method

.method public canTargetScrollVertically(I)Z
    .registers 12
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x0

    .line 893
    iget-object v6, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    .line 894
    .local v6, "target":Landroid/widget/AbsListView;
    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    .line 895
    .local v3, "itemCount":I
    if-nez v3, :cond_a

    .line 932
    :cond_9
    :goto_9
    return v7

    .line 899
    :cond_a
    invoke-virtual {v6}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 900
    .local v0, "childCount":I
    invoke-virtual {v6}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 901
    .local v1, "firstPosition":I
    add-int v4, v1, v0

    .line 903
    .local v4, "lastPosition":I
    if-lez p1, :cond_2a

    .line 905
    if-lt v4, v3, :cond_28

    .line 906
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 907
    .local v5, "lastView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_9

    .line 932
    .end local v5    # "lastView":Landroid/view/View;
    :cond_28
    const/4 v7, 0x1

    goto :goto_9

    .line 911
    :cond_2a
    if-gez p1, :cond_9

    .line 913
    if-gtz v1, :cond_28

    .line 914
    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 917
    .local v2, "firstView":Landroid/view/View;
    if-eqz v2, :cond_9

    .line 922
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    if-ltz v8, :cond_28

    goto :goto_9
.end method

.method public scrollTargetBy(II)V
    .registers 4
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->mTarget:Landroid/widget/AbsListView;

    invoke-virtual {v0, p2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 883
    return-void
.end method
