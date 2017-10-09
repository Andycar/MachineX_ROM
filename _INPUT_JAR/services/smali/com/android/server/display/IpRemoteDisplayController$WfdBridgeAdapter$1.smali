.class Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Lcom/android/server/display/WfdBridgeBase$BridgeListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)V
    .registers 2

    .prologue
    .line 913
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBridgeConnected()I
    .registers 3

    .prologue
    .line 916
    const-string v0, "WfdBridgeAdapter"

    const-string v1, "Bridge is connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v0, 0x0

    return v0
.end method

.method public onConnRequest(IILjava/net/InetAddress;)V
    .registers 5
    .param p1, "dev"    # I
    .param p2, "type"    # I
    .param p3, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->startWFDEngine(IILjava/net/InetAddress;)V

    .line 943
    return-void
.end method

.method public onError(I)V
    .registers 7
    .param p1, "errorCode"    # I

    .prologue
    const/16 v4, 0x130

    const/4 v3, -0x1

    .line 947
    const-string v0, "WfdBridgeAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2100(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v0

    if-ltz v0, :cond_24

    .line 952
    :cond_24
    if-ne p1, v4, :cond_43

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->getBridgeConnType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_43

    .line 953
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    iget-object v1, v1, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingType:I
    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2200(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->requestSink(Landroid/net/wifi/p2p/WifiP2pDevice;I)I

    .line 962
    :cond_42
    :goto_42
    return-void

    .line 955
    :cond_43
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # setter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2102(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;I)I

    .line 956
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # setter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingType:I
    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2202(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;I)I

    .line 958
    if-eq p1, v4, :cond_42

    .line 959
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    iget-object v0, v0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->notifyBridgeStatus(I)V

    goto :goto_42
.end method

.method public onGetStatus()I
    .registers 5

    .prologue
    .line 922
    const-string v1, "WfdBridgeAdapter"

    const-string/jumbo v2, "onGetStatus"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/16 v0, 0xc8

    .line 926
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mScreenState:I
    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2000(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v1

    if-nez v1, :cond_14

    .line 927
    const/16 v0, 0x12d

    .line 929
    :cond_14
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 930
    const/16 v0, 0x12e

    .line 932
    :cond_1e
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2100(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v1

    if-ltz v1, :cond_28

    .line 933
    const/16 v0, 0x130

    .line 936
    :cond_28
    const-string v1, "WfdBridgeAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onGetStatus return :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return v0
.end method

.method public onOK(Ljava/net/InetAddress;)V
    .registers 6
    .param p1, "addr"    # Ljava/net/InetAddress;

    .prologue
    const/4 v3, -0x1

    .line 966
    const-string v0, "WfdBridgeAdapter"

    const-string/jumbo v1, "onOK"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    iget-object v0, v0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->notifyBridgeStatus(I)V

    .line 969
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2100(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v0

    if-ltz v0, :cond_35

    .line 970
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2100(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingType:I
    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2200(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->startWFDEngine(IILjava/net/InetAddress;)V

    .line 971
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # setter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2102(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;I)I

    .line 972
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # setter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingType:I
    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2202(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;I)I

    .line 974
    :cond_35
    return-void
.end method
