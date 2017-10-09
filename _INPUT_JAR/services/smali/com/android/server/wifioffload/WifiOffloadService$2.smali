.class Lcom/android/server/wifioffload/WifiOffloadService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifioffload/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifioffload/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/wifioffload/WifiOffloadService;)V
    .registers 2

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 620
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 622
    const-string/jumbo v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 626
    .local v1, "currentWifiState":I
    const-string v5, "WifiOffloadServiceNew"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wifi state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    const/4 v6, 0x2

    if-eq v1, v6, :cond_37

    const/4 v6, 0x3

    if-ne v1, v6, :cond_66

    :cond_37
    :goto_37
    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z
    invoke-static {v5, v3}, Lcom/android/server/wifioffload/WifiOffloadService;->access$302(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    .line 628
    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z
    invoke-static {v3}, Lcom/android/server/wifioffload/WifiOffloadService;->access$300(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 629
    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->isTimerRunning:Z
    invoke-static {v3, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->access$402(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    .line 631
    :cond_47
    const-string v3, "WifiOffloadServiceNew"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wi-Fi state change, Wi-Fi ON ? = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z
    invoke-static {v5}, Lcom/android/server/wifioffload/WifiOffloadService;->access$300(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    .end local v1    # "currentWifiState":I
    :cond_65
    :goto_65
    return-void

    .restart local v1    # "currentWifiState":I
    :cond_66
    move v3, v4

    .line 627
    goto :goto_37

    .line 632
    .end local v1    # "currentWifiState":I
    :cond_68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 634
    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mLatestWifiScanTime:J
    invoke-static {v3, v4, v5}, Lcom/android/server/wifioffload/WifiOffloadService;->access$502(Lcom/android/server/wifioffload/WifiOffloadService;J)J

    goto :goto_65

    .line 636
    :cond_7e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 638
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 641
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_a5

    .line 642
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 644
    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z
    invoke-static {v4, v3}, Lcom/android/server/wifioffload/WifiOffloadService;->access$602(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    .line 650
    :cond_a5
    :goto_a5
    const-string v3, "WifiOffloadServiceNew"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wi-Fi network state change, connected ? = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z
    invoke-static {v5}, Lcom/android/server/wifioffload/WifiOffloadService;->access$600(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 645
    :cond_c4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v5}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 647
    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z
    invoke-static {v3, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->access$602(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    goto :goto_a5

    .line 652
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_d6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 654
    const-string/jumbo v5, "wifi_state"

    const/16 v6, 0xe

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 657
    .local v0, "currentAPState":I
    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    const/16 v6, 0xc

    if-eq v0, v6, :cond_f5

    const/16 v6, 0xd

    if-ne v0, v6, :cond_f6

    :cond_f5
    move v4, v3

    :cond_f6
    # setter for: Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z
    invoke-static {v5, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->access$702(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    .line 658
    const-string v3, "WifiOffloadServiceNew"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mobile Hotspot setting changed, Enabled ? = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    # getter for: Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z
    invoke-static {v5}, Lcom/android/server/wifioffload/WifiOffloadService;->access$700(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_65
.end method
