.class Lcom/android/settings/wifi/WifiOffloadDialog$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiOffloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiOffloadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiOffloadDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiOffloadDialog;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x8

    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 196
    .local v0, "currentWifiState":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 197
    const-string v1, "WifiOffloadDialog"

    const-string v2, "Wifi is turned OFF, close dialog"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiOffloadDialog;->finish()V

    .line 208
    .end local v0    # "currentWifiState":I
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiOffloadDialog;->access$200(Lcom/android/settings/wifi/WifiOffloadDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 203
    const-string v1, "WifiOffloadDialog"

    const-string v2, "remove scanning animation"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiOffloadDialog;->access$200(Lcom/android/settings/wifi/WifiOffloadDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog$3;->this$0:Lcom/android/settings/wifi/WifiOffloadDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiOffloadDialog;->access$300(Lcom/android/settings/wifi/WifiOffloadDialog;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
