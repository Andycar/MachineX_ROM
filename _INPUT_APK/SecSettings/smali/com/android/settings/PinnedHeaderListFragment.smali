.class public Lcom/android/settings/PinnedHeaderListFragment;
.super Landroid/app/ListFragment;
.source "PinnedHeaderListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "pinnedHeaderView"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/settings/PinnedHeaderListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 39
    return-void
.end method
