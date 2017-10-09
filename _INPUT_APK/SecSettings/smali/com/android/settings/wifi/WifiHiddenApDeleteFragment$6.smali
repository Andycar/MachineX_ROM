.class Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;
.super Ljava/lang/Object;
.source "WifiHiddenApDeleteFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "selectedPos"    # I
    .param p4, "arg3"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$700(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$300(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$900(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$800(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$1000(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$400(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V

    .line 233
    :cond_0
    :goto_1
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$900(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$1100(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$1000(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$300(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$600(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 227
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$300(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$200(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$500(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$600(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 229
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$500(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$500(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1
.end method
