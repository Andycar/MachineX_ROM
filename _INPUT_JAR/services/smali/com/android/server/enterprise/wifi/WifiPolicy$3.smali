.class Lcom/android/server/enterprise/wifi/WifiPolicy$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V
    .registers 2

    .prologue
    .line 3107
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$3;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    .line 3110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "edm.intent.action.lock"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 3111
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$3;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    new-instance v8, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getTlsCertificateSecurityLevel(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    if-ne v7, v10, :cond_2b

    .line 3112
    new-instance v1, Ljava/lang/Thread;

    new-instance v7, Lcom/android/server/enterprise/wifi/WifiPolicy$3$1;

    invoke-direct {v7, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$3$1;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy$3;)V

    invoke-direct {v1, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3117
    .local v1, "lockKeystore":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3153
    .end local v1    # "lockKeystore":Ljava/lang/Thread;
    :cond_2b
    :goto_2b
    return-void

    .line 3119
    :cond_2c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 3120
    const-string/jumbo v7, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3122
    .local v2, "state":I
    const/4 v7, 0x3

    if-ne v2, v7, :cond_2b

    .line 3127
    new-instance v4, Lcom/android/server/enterprise/wifi/WifiPolicy$3$2;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$3$2;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy$3;)V

    .line 3132
    .local v4, "taskToupdateConfiguredNetworks":Ljava/lang/Runnable;
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3134
    .local v5, "threadToUpdateConfiguredNetworks":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_2b

    .line 3136
    .end local v2    # "state":I
    .end local v4    # "taskToupdateConfiguredNetworks":Ljava/lang/Runnable;
    .end local v5    # "threadToUpdateConfiguredNetworks":Ljava/lang/Thread;
    :cond_51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 3137
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 3139
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v10, :cond_2b

    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$3;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    # invokes: Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$200(Lcom/android/server/enterprise/wifi/WifiPolicy;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->hasAnyActiveAdmin()Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 3142
    new-instance v3, Lcom/android/server/enterprise/wifi/WifiPolicy$3$3;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$3$3;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy$3;)V

    .line 3147
    .local v3, "taskToWpsBlockedNetworks":Ljava/lang/Runnable;
    new-instance v6, Ljava/lang/Thread;

    invoke-direct {v6, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3148
    .local v6, "threadToUpdateWpsBlockedNetworks":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_2b

    .line 3150
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "taskToWpsBlockedNetworks":Ljava/lang/Runnable;
    .end local v6    # "threadToUpdateWpsBlockedNetworks":Ljava/lang/Thread;
    :cond_8d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 3151
    # setter for: Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z
    invoke-static {v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$402(Z)Z

    goto :goto_2b
.end method
