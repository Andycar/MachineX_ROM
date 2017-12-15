.class Landroid/widget/AbsHorizontalListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSkippedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViewsById:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .registers 3

    .prologue
    .line 7833
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7847
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$4500(Landroid/widget/AbsHorizontalListView$RecycleBin;)Landroid/widget/AbsHorizontalListView$RecyclerListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView$RecycleBin;

    .prologue
    .line 7833
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$4502(Landroid/widget/AbsHorizontalListView$RecycleBin;Landroid/widget/AbsHorizontalListView$RecyclerListener;)Landroid/widget/AbsHorizontalListView$RecyclerListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView$RecycleBin;
    .param p1, "x1"    # Landroid/widget/AbsHorizontalListView$RecyclerListener;

    .prologue
    .line 7833
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    return-object p1
.end method

.method private pruneScrapViews()V
    .registers 14

    .prologue
    .line 8186
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v10

    .line 8187
    .local v3, "maxViews":I
    iget v9, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 8188
    .local v9, "viewTypeCount":I
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8189
    .local v5, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v9, :cond_2d

    .line 8190
    aget-object v4, v5, v1

    .line 8191
    .local v4, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 8192
    .local v6, "size":I
    sub-int v0, v6, v3

    .line 8193
    .local v0, "extras":I
    add-int/lit8 v6, v6, -0x1

    .line 8194
    const/4 v2, 0x0

    .local v2, "j":I
    move v7, v6

    .end local v6    # "size":I
    .local v7, "size":I
    :goto_16
    if-ge v2, v0, :cond_2a

    .line 8195
    iget-object v11, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    add-int/lit8 v6, v7, -0x1

    .end local v7    # "size":I
    .restart local v6    # "size":I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    const/4 v12, 0x0

    # invokes: Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v11, v10, v12}, Landroid/widget/AbsHorizontalListView;->access$5200(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 8194
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_16

    .line 8189
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 8199
    .end local v0    # "extras":I
    .end local v2    # "j":I
    .end local v4    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "size":I
    :cond_2d
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v10, :cond_52

    .line 8200
    const/4 v1, 0x0

    :goto_32
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v1, v10, :cond_52

    .line 8201
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 8202
    .local v8, "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    if-nez v10, :cond_4f

    .line 8203
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 8204
    add-int/lit8 v1, v1, -0x1

    .line 8200
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 8208
    .end local v8    # "v":Landroid/view/View;
    :cond_52
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v10, :cond_77

    .line 8209
    const/4 v1, 0x0

    :goto_57
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v10

    if-ge v1, v10, :cond_77

    .line 8210
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 8211
    .restart local v8    # "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    if-nez v10, :cond_74

    .line 8212
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 8213
    add-int/lit8 v1, v1, -0x1

    .line 8209
    :cond_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 8217
    .end local v8    # "v":Landroid/view/View;
    :cond_77
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;I)V
    .registers 9
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 8040
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 8041
    .local v0, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-nez v0, :cond_a

    .line 8105
    :cond_9
    :goto_9
    return-void

    .line 8045
    :cond_a
    iput p2, v0, Landroid/widget/AbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    .line 8049
    iget v2, v0, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    .line 8050
    .local v2, "viewType":I
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 8054
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 8060
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3, v4}, Landroid/widget/AbsHorizontalListView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 8064
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    .line 8065
    .local v1, "scrapHasTransientState":Z
    if-eqz v1, :cond_69

    .line 8066
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v3, v3, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_41

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v3, v3, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_41

    .line 8069
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v3, :cond_39

    .line 8070
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8072
    :cond_39
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Landroid/widget/AbsHorizontalListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_9

    .line 8073
    :cond_41
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v3, v3, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-nez v3, :cond_58

    .line 8076
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_52

    .line 8077
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 8079
    :cond_52
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    .line 8082
    :cond_58
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v3, :cond_63

    .line 8083
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    .line 8085
    :cond_63
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 8088
    :cond_69
    iget v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    if-ne v3, v4, :cond_89

    .line 8089
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8095
    :goto_72
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 8096
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 8099
    :cond_7b
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8101
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    if-eqz v3, :cond_9

    .line 8102
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    invoke-interface {v3, p1}, Landroid/widget/AbsHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_9

    .line 8091
    :cond_89
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_72
.end method

.method clear()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 7916
    iget v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    .line 7917
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7918
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7919
    .local v3, "scrapCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v3, :cond_44

    .line 7920
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    # invokes: Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Landroid/widget/AbsHorizontalListView;->access$4800(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 7919
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 7923
    .end local v0    # "i":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    :cond_20
    iget v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 7924
    .local v4, "typeCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_23
    if-ge v0, v4, :cond_44

    .line 7925
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 7926
    .restart local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7927
    .restart local v3    # "scrapCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2e
    if-ge v1, v3, :cond_41

    .line 7928
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    # invokes: Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Landroid/widget/AbsHorizontalListView;->access$4900(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 7927
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 7924
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 7932
    .end local v1    # "j":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    .end local v4    # "typeCount":I
    :cond_44
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v5, :cond_4d

    .line 7933
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 7935
    :cond_4d
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v5, :cond_56

    .line 7936
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->clear()V

    .line 7938
    :cond_56
    return-void
.end method

.method clearTransientStateViews()V
    .registers 2

    .prologue
    .line 8007
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_9

    .line 8008
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 8010
    :cond_9
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_12

    .line 8011
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 8013
    :cond_12
    return-void
.end method

.method fillActiveViews(II)V
    .registers 9
    .param p1, "childCount"    # I
    .param p2, "firstActivePosition"    # I

    .prologue
    .line 7948
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_9

    .line 7949
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7951
    :cond_9
    iput p2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    .line 7954
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7955
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, p1, :cond_28

    .line 7956
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4, v2}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7957
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 7959
    .local v3, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-eqz v3, :cond_25

    iget v4, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_25

    .line 7962
    aput-object v1, v0, v2

    .line 7955
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 7965
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_28
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 7975
    iget v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 7976
    .local v1, "index":I
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7977
    .local v0, "activeViews":[Landroid/view/View;
    if-ltz v1, :cond_11

    array-length v4, v0

    if-ge v1, v4, :cond_11

    .line 7978
    aget-object v2, v0, v1

    .line 7979
    .local v2, "match":Landroid/view/View;
    aput-object v3, v0, v1

    .line 7982
    .end local v2    # "match":Landroid/view/View;
    :goto_10
    return-object v2

    :cond_11
    move-object v2, v3

    goto :goto_10
.end method

.method getScrapView(I)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 8019
    iget v1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 8020
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Landroid/widget/AbsHorizontalListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    .line 8027
    :goto_b
    return-object v1

    .line 8022
    :cond_c
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v1, v1, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 8023
    .local v0, "whichScrap":I
    if-ltz v0, :cond_24

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 8024
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Landroid/widget/AbsHorizontalListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_b

    .line 8027
    :cond_24
    const/4 v1, 0x0

    goto :goto_b
.end method

.method getTransientStateView(I)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 7986
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v4, v4, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_26

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v4, v4, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_26

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_26

    .line 7987
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v4, v4, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 7988
    .local v0, "id":J
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7989
    .local v3, "result":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 8000
    .end local v0    # "id":J
    .end local v3    # "result":Landroid/view/View;
    :goto_25
    return-object v3

    .line 7992
    :cond_26
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v4, :cond_40

    .line 7993
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 7994
    .local v2, "index":I
    if-ltz v2, :cond_40

    .line 7995
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7996
    .restart local v3    # "result":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_25

    .line 8000
    .end local v2    # "index":I
    .end local v3    # "result":Landroid/view/View;
    :cond_40
    const/4 v3, 0x0

    goto :goto_25
.end method

.method public markChildrenDirty()V
    .registers 9

    .prologue
    .line 7878
    iget v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1a

    .line 7879
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7880
    .local v3, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7881
    .local v4, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v4, :cond_39

    .line 7882
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7881
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 7885
    .end local v1    # "i":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    :cond_1a
    iget v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 7886
    .local v5, "typeCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1d
    if-ge v1, v5, :cond_39

    .line 7887
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v6, v1

    .line 7888
    .restart local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7889
    .restart local v4    # "scrapCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_28
    if-ge v2, v4, :cond_36

    .line 7890
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7889
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 7886
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 7894
    .end local v2    # "j":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    .end local v5    # "typeCount":I
    :cond_39
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v6, :cond_54

    .line 7895
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 7896
    .local v0, "count":I
    const/4 v1, 0x0

    :goto_44
    if-ge v1, v0, :cond_54

    .line 7897
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7896
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 7900
    .end local v0    # "count":I
    :cond_54
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v6, :cond_6f

    .line 7901
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 7902
    .restart local v0    # "count":I
    const/4 v1, 0x0

    :goto_5f
    if-ge v1, v0, :cond_6f

    .line 7903
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7902
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 7906
    .end local v0    # "count":I
    :cond_6f
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8223
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 8224
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8233
    :cond_a
    return-void

    .line 8226
    :cond_b
    iget v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 8227
    .local v3, "viewTypeCount":I
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8228
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v3, :cond_a

    .line 8229
    aget-object v1, v2, v0

    .line 8230
    .local v1, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8228
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method removeSkippedScrap()V
    .registers 6

    .prologue
    .line 8111
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 8119
    :goto_4
    return-void

    .line 8114
    :cond_5
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8115
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1f

    .line 8116
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v4, 0x0

    # invokes: Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v3, v2, v4}, Landroid/widget/AbsHorizontalListView;->access$5000(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 8115
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 8118
    :cond_1f
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_4
.end method

.method scrapActiveViews()V
    .registers 15

    .prologue
    .line 8125
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8126
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    if-eqz v12, :cond_66

    const/4 v2, 0x1

    .line 8127
    .local v2, "hasListener":Z
    :goto_7
    iget v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_68

    const/4 v7, 0x1

    .line 8129
    .local v7, "multipleScraps":Z
    :goto_d
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8130
    .local v9, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 8131
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_12
    if-ltz v3, :cond_9b

    .line 8132
    aget-object v10, v0, v3

    .line 8133
    .local v10, "victim":Landroid/view/View;
    if-eqz v10, :cond_63

    .line 8134
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 8136
    .local v6, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    iget v11, v6, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    .line 8138
    .local v11, "whichScrap":I
    const/4 v12, 0x0

    aput-object v12, v0, v3

    .line 8140
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    .line 8141
    .local v8, "scrapHasTransientState":Z
    invoke-virtual {p0, v11}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v12

    if-eqz v12, :cond_2f

    if-eqz v8, :cond_7e

    .line 8143
    :cond_2f
    const/4 v12, -0x2

    if-eq v11, v12, :cond_3a

    if-eqz v8, :cond_3a

    .line 8145
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v13, 0x0

    # invokes: Landroid/widget/AbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v12, v10, v13}, Landroid/widget/AbsHorizontalListView;->access$5100(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 8147
    :cond_3a
    if-eqz v8, :cond_63

    .line 8148
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v12, :cond_6a

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v12, v12, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v12, :cond_6a

    .line 8149
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v12, :cond_53

    .line 8150
    new-instance v12, Landroid/util/LongSparseArray;

    invoke-direct {v12}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8152
    :cond_53
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v13, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-interface {v12, v13}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 8153
    .local v4, "id":J
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4, v5, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 8131
    .end local v4    # "id":J
    .end local v6    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .end local v8    # "scrapHasTransientState":Z
    .end local v11    # "whichScrap":I
    :cond_63
    :goto_63
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    .line 8126
    .end local v1    # "count":I
    .end local v2    # "hasListener":Z
    .end local v3    # "i":I
    .end local v7    # "multipleScraps":Z
    .end local v9    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v10    # "victim":Landroid/view/View;
    :cond_66
    const/4 v2, 0x0

    goto :goto_7

    .line 8127
    .restart local v2    # "hasListener":Z
    :cond_68
    const/4 v7, 0x0

    goto :goto_d

    .line 8155
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .restart local v7    # "multipleScraps":Z
    .restart local v8    # "scrapHasTransientState":Z
    .restart local v9    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v10    # "victim":Landroid/view/View;
    .restart local v11    # "whichScrap":I
    :cond_6a
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v12, :cond_75

    .line 8156
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    iput-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 8158
    :cond_75
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v13, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-virtual {v12, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_63

    .line 8164
    :cond_7e
    if-eqz v7, :cond_84

    .line 8165
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v9, v12, v11

    .line 8167
    :cond_84
    invoke-virtual {v10}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 8168
    iget v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v12, v3

    iput v12, v6, Landroid/widget/AbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    .line 8169
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8171
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8172
    if-eqz v2, :cond_63

    .line 8173
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    invoke-interface {v12, v10}, Landroid/widget/AbsHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_63

    .line 8178
    .end local v6    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .end local v8    # "scrapHasTransientState":Z
    .end local v10    # "victim":Landroid/view/View;
    .end local v11    # "whichScrap":I
    :cond_9b
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView$RecycleBin;->pruneScrapViews()V

    .line 8179
    return-void
.end method

.method setCacheColorHint(I)V
    .registers 12
    .param p1, "color"    # I

    .prologue
    .line 8241
    iget v8, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1a

    .line 8242
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8243
    .local v4, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 8244
    .local v5, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v5, :cond_39

    .line 8245
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8244
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 8248
    .end local v2    # "i":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    :cond_1a
    iget v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 8249
    .local v6, "typeCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1d
    if-ge v2, v6, :cond_39

    .line 8250
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 8251
    .restart local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 8252
    .restart local v5    # "scrapCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_28
    if-ge v3, v5, :cond_36

    .line 8253
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8252
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 8249
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 8258
    .end local v3    # "j":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    .end local v6    # "typeCount":I
    :cond_39
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8259
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    .line 8260
    .local v1, "count":I
    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v1, :cond_49

    .line 8261
    aget-object v7, v0, v2

    .line 8262
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_46

    .line 8263
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8260
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 8266
    .end local v7    # "victim":Landroid/view/View;
    :cond_49
    return-void
.end method

.method public setViewTypeCount(I)V
    .registers 6
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 7864
    const/4 v2, 0x1

    if-ge p1, v2, :cond_b

    .line 7865
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7868
    :cond_b
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 7869
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, p1, :cond_1a

    .line 7870
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 7869
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 7872
    :cond_1a
    iput p1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 7873
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7874
    iput-object v1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 7875
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .registers 3
    .param p1, "viewType"    # I

    .prologue
    .line 7909
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
