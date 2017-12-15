.class public Landroid/net/wifi/WifiOffloadManager;
.super Ljava/lang/Object;
.source "WifiOffloadManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiOffloadManager"


# instance fields
.field mService:Landroid/net/wifi/IWifiOffloadManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/IWifiOffloadManager;)V
    .registers 2
    .param p1, "service"    # Landroid/net/wifi/IWifiOffloadManager;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    .line 42
    return-void
.end method


# virtual methods
.method public checkAppForWiFiOffloading(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->checkAppForWiFiOffloading(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 84
    :goto_5
    return-void

    .line 81
    :catch_6
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in checkAppForWiFiOffloading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public checkAppNeedsMoveToFront(I)V
    .registers 6
    .param p1, "taskID"    # I

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->checkAppNeedsMoveToFront(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 58
    :goto_5
    return-void

    .line 55
    :catch_6
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in checkAppNeedsMoveToFront "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getLastPkgName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 62
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->getLastPkgName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 65
    :goto_6
    return-object v1

    .line 63
    :catch_7
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in getLastPkgName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getLatestWifiScanTime()J
    .registers 5

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->getLatestWifiScanTime()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v2

    .line 74
    :goto_6
    return-wide v2

    .line 72
    :catch_7
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in getLatestWifiScanTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-wide/16 v2, 0x0

    goto :goto_6
.end method

.method public startTimer()V
    .registers 5

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->startTimer()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 50
    :goto_5
    return-void

    .line 47
    :catch_6
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while startDontUseWiFiPressedTimer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method
