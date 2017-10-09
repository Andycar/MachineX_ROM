.class Lcom/android/systemui/qs/tiles/WiFiHotspotTile$17;
.super Ljava/lang/Object;
.source "WiFiHotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->showBatteryUsageWarningDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Z)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$17;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$17;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 705
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$17;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$2100(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 706
    .local v0, "mgr":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 707
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$17;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$17;->val$state:Z

    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$1900(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Z)V

    .line 722
    :goto_0
    return-void

    .line 709
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$17;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$100(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;I)V

    .line 712
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSetDefaultSSID:Z

    if-nez v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_UseRandom4digitCombinationAsSSID"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 713
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 714
    .local v1, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_2

    const-string v3, ""

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 715
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$17;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    invoke-static {v3, v0, v1}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$1500(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    .line 720
    .end local v1    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$17;->this$0:Lcom/android/systemui/qs/tiles/WiFiHotspotTile;

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/WiFiHotspotTile$17;->val$state:Z

    if-eqz v4, :cond_3

    :goto_1
    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/WiFiHotspotTile;->access$1300(Lcom/android/systemui/qs/tiles/WiFiHotspotTile;I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
