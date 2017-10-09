.class Lcom/android/settings/wifi/mobileap/WifiApSettings$5;
.super Landroid/telephony/PhoneStateListener;
.source "WifiApSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "networktype"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 527
    const-string v0, "MTR"

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    const/16 v0, 0xd

    if-ne p2, v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$702(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    .line 530
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 531
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 540
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$702(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    .line 534
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_0

    .line 538
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    goto :goto_0
.end method
