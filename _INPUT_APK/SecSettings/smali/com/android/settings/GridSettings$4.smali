.class Lcom/android/settings/GridSettings$4;
.super Ljava/lang/Object;
.source "GridSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GridSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GridSettings;

.field final synthetic val$lv:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/settings/GridSettings;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/settings/GridSettings$4;->this$0:Lcom/android/settings/GridSettings;

    iput-object p2, p0, Lcom/android/settings/GridSettings$4;->val$lv:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 724
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/settings/GridSettings$4;->this$0:Lcom/android/settings/GridSettings;

    iget-object v3, p0, Lcom/android/settings/GridSettings$4;->val$lv:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/GridSettings;->access$502(Lcom/android/settings/GridSettings;I)I

    .line 725
    iget-object v2, p0, Lcom/android/settings/GridSettings$4;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v2}, Lcom/android/settings/GridSettings;->access$500(Lcom/android/settings/GridSettings;)I

    move-result v2

    sub-int v1, p3, v2

    .line 727
    .local v1, "pos":I
    if-gez v1, :cond_0

    .line 731
    :goto_0
    return-void

    .line 729
    :cond_0
    iget-object v2, p0, Lcom/android/settings/GridSettings$4;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v2}, Lcom/android/settings/GridSettings;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 730
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    iget-object v2, p0, Lcom/android/settings/GridSettings$4;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/GridSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method
