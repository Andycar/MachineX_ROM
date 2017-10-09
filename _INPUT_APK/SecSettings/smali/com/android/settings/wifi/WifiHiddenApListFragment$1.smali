.class Lcom/android/settings/wifi/WifiHiddenApListFragment$1;
.super Ljava/lang/Object;
.source "WifiHiddenApListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiHiddenApListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiHiddenApListFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiHiddenApListFragment;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 193
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 194
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApListFragment;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->access$000(Lcom/android/settings/wifi/WifiHiddenApListFragment;)Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "ssid":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApListFragment;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->access$100(Lcom/android/settings/wifi/WifiHiddenApListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApListFragment;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->access$200(Lcom/android/settings/wifi/WifiHiddenApListFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a16c6

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 216
    .end local v0    # "ssid":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 201
    .restart local v0    # "ssid":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApListFragment;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->access$100(Lcom/android/settings/wifi/WifiHiddenApListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApListFragment;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->access$300(Lcom/android/settings/wifi/WifiHiddenApListFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 203
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApListFragment;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->access$400(Lcom/android/settings/wifi/WifiHiddenApListFragment;)V

    .line 204
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApListFragment;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->updateMenu()V

    .line 206
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment$1;->this$0:Lcom/android/settings/wifi/WifiHiddenApListFragment;

    const-string v4, "wifi"

    invoke-static {v3, v4}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->access$500(Lcom/android/settings/wifi/WifiHiddenApListFragment;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 207
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 209
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 212
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_0
.end method
