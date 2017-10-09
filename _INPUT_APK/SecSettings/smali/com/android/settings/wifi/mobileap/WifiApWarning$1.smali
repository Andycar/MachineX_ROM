.class Lcom/android/settings/wifi/mobileap/WifiApWarning$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApWarning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$000(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v3

    if-ne v3, v1, :cond_0

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    const-string v4, "wifi_state"

    const/16 v5, 0xe

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$100(Lcom/android/settings/wifi/mobileap/WifiApWarning;I)V

    .line 125
    :cond_0
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    invoke-static {v3, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$202(Lcom/android/settings/wifi/mobileap/WifiApWarning;Z)Z

    .line 128
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 126
    goto :goto_0
.end method
