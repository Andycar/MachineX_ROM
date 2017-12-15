.class Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;
.super Landroid/widget/AdapterView$AdapterDataSetObserver;
.source "AbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">.AdapterDataSetObserver;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .registers 2

    .prologue
    .line 7644
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0, p1}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 7647
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 7648
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$4600(Landroid/widget/AbsHorizontalListView;)Landroid/widget/HorizontalFastScroller;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 7649
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$4600(Landroid/widget/AbsHorizontalListView;)Landroid/widget/HorizontalFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalFastScroller;->onSectionsChanged()V

    .line 7651
    :cond_14
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 7655
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 7656
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$4600(Landroid/widget/AbsHorizontalListView;)Landroid/widget/HorizontalFastScroller;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 7657
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$AdapterDataSetObserver;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mFastScroller:Landroid/widget/HorizontalFastScroller;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$4600(Landroid/widget/AbsHorizontalListView;)Landroid/widget/HorizontalFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalFastScroller;->onSectionsChanged()V

    .line 7659
    :cond_14
    return-void
.end method
