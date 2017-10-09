.class final Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiAccessPointController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/WifiAccessPointController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;Lcom/android/systemui/statusbar/policy/WifiAccessPointController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/WifiAccessPointController;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/WifiAccessPointController$1;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 197
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->access$200(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->access$302(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;Z)Z

    .line 201
    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 174
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;->mRegistered:Z

    if-nez v1, :cond_1

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->access$100(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;->mRegistered:Z

    .line 192
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->access$100(Lcom/android/systemui/statusbar/policy/WifiAccessPointController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/WifiAccessPointController$Receiver;->mRegistered:Z

    goto :goto_0
.end method
