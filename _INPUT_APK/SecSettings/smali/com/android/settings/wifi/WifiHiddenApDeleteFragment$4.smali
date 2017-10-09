.class Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$4;
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
    .line 132
    iput-object p1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 135
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x2

    .local v1, "mSelectionstatus":I
    move-object v2, p2

    .line 136
    check-cast v2, Landroid/widget/TextView;

    .line 137
    .local v2, "menuText":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    const v5, 0x7f0a0cba

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    const/4 v1, 0x0

    .line 145
    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 165
    :goto_1
    return-void

    .line 140
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    const v5, 0x7f0a002d

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    const/4 v1, 0x1

    goto :goto_0

    .line 147
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$200(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 148
    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$300(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 151
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$400(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V

    .line 152
    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$100(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_1

    .line 155
    .end local v0    # "index":I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$200(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 156
    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$300(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 159
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$400(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V

    .line 160
    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$4;->this$0:Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->access$100(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/ListPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_1

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
