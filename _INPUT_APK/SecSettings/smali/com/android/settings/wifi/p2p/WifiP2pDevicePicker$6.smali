.class Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$6;
.super Ljava/lang/Object;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 461
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V

    goto :goto_0

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 467
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v0, v2, v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    goto :goto_0

    .line 468
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$6;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v0, v1, v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    goto :goto_0
.end method
