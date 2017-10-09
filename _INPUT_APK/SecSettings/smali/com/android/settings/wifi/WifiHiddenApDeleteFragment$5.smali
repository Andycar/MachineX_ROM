.class Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$5;
.super Ljava/lang/Object;
.source "WifiHiddenApDeleteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 183
    iput-object p1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$5;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 185
    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$5;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$500(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    .line 186
    .local v1, "isChecked":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$5;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$500(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 190
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$5;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$200(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$5;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$300(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "index":I
    .end local v1    # "isChecked":Z
    :cond_0
    move v1, v4

    .line 185
    goto :goto_0

    .line 194
    .restart local v0    # "index":I
    .restart local v1    # "isChecked":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 195
    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$5;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$600(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 199
    :goto_2
    return-void

    .line 197
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$5;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$600(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method
