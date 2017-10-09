.class Lcom/android/settings/wifi/WifiShareProfile$3;
.super Ljava/lang/Object;
.source "WifiShareProfile.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiShareProfile;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiShareProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiShareProfile;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfile$3;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 2
    .param p1, "peerList"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile$3;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareProfile;->access$1100(Lcom/android/settings/wifi/WifiShareProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 260
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile$3;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareProfile;->access$1100(Lcom/android/settings/wifi/WifiShareProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile$3;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareProfile;->access$1200(Lcom/android/settings/wifi/WifiShareProfile;)V

    .line 262
    return-void
.end method
