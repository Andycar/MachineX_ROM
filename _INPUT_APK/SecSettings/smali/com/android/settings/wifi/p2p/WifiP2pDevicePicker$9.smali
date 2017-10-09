.class Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;
.super Ljava/lang/Object;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->onCreate(Landroid/os/Bundle;)V
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
    .line 598
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 6
    .param p1, "motionEvent"    # Landroid/hardware/motion/MREvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 600
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    .line 601
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string v2, "power"

    invoke-static {v1, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$3200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 602
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 603
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$500()Z

    move-result v1

    if-nez v1, :cond_1

    .line 604
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v1, v5, v4}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    .line 608
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    :goto_0
    return-void

    .line 605
    .restart local v0    # "pm":Landroid/os/PowerManager;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v1, v5}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$3300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V

    goto :goto_0
.end method
