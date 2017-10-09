.class Lcom/android/settings/SettingsActivity$13;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    .prologue
    .line 6713
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$13;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 6716
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6717
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$3000()I

    move-result v2

    .line 6719
    .local v2, "prevWifiSummaryId":I
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6720
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 6721
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6722
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/android/settings/SettingsActivity;->access$3002(I)I

    .line 6743
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$3000()I

    move-result v5

    if-eq v2, v5, :cond_1

    .line 6744
    iget-object v5, p0, Lcom/android/settings/SettingsActivity$13;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v5}, Lcom/android/settings/SettingsActivity;->invalidateHeaders()V

    .line 6746
    :cond_1
    return-void

    .line 6724
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/SettingsActivity$13;->this$0:Lcom/android/settings/SettingsActivity;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 6725
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6726
    invoke-static {v7}, Lcom/android/settings/SettingsActivity;->access$3002(I)I

    goto :goto_0

    .line 6728
    :cond_3
    invoke-static {v8}, Lcom/android/settings/SettingsActivity;->access$3002(I)I

    goto :goto_0

    .line 6731
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_4
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6732
    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 6733
    .local v3, "state":I
    if-eq v3, v7, :cond_5

    if-nez v3, :cond_6

    .line 6734
    :cond_5
    invoke-static {v8}, Lcom/android/settings/SettingsActivity;->access$3002(I)I

    .line 6735
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6736
    iget-object v5, p0, Lcom/android/settings/SettingsActivity$13;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v5}, Lcom/android/settings/SettingsActivity;->invalidateHeaders()V

    goto :goto_0

    .line 6738
    :cond_6
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 6739
    invoke-static {v7}, Lcom/android/settings/SettingsActivity;->access$3002(I)I

    goto :goto_0
.end method
