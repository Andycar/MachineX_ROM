.class Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .registers 2

    .prologue
    .line 7682
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .registers 2

    .prologue
    .line 7690
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 7710
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 7695
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    invoke-interface {v1, p1, p2}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 7697
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsHorizontalListView;->setLongClickable(Z)V

    .line 7698
    const/4 v0, 0x1

    .line 7700
    :cond_f
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x1

    .line 7715
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 7716
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/AbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 7719
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView;->clearChoices()V

    .line 7721
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    iput-boolean v2, v0, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    .line 7722
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView;->rememberSyncState()V

    .line 7723
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView;->requestLayout()V

    .line 7725
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsHorizontalListView;->setLongClickable(Z)V

    .line 7726
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .registers 13
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 7731
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 7734
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AbsHorizontalListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mTwCustomMultiChoiceMode:Z
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$4700(Landroid/widget/AbsHorizontalListView;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 7735
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 7737
    :cond_1c
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 7705
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;)V
    .registers 2
    .param p1, "wrapped"    # Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    .prologue
    .line 7686
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/AbsHorizontalListView$MultiChoiceModeListener;

    .line 7687
    return-void
.end method
