.class final Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoCallBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 548
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 552
    const-string v5, "VZW-CDMA"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8e

    if-eqz p2, :cond_8e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.PRECISE_CALL_STATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 554
    const-string/jumbo v5, "ringing_state"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 555
    .local v3, "ringingCallState":I
    const-string v5, "foreground_state"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 556
    .local v1, "foregroundCallState":I
    const-string v5, "background_state"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 557
    .local v0, "backgroundCallState":I
    const-string/jumbo v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 558
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string/jumbo v5, "video"

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v2

    .line 559
    .local v2, "hasVideoCall":Z
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VideoCallBroadcastReceiver - ringingCallState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", foregroundCallState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", backgroundCallState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hasVideoCall: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z
    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v5

    if-eq v5, v2, :cond_8e

    .line 562
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z
    invoke-static {v5, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$002(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 563
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z
    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 565
    const-string v5, "NetworkPolicy"

    const-string v6, "Video call start."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    .end local v0    # "backgroundCallState":I
    .end local v1    # "foregroundCallState":I
    .end local v2    # "hasVideoCall":Z
    .end local v3    # "ringingCallState":I
    .end local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_8e
    :goto_8e
    return-void

    .line 567
    .restart local v0    # "backgroundCallState":I
    .restart local v1    # "foregroundCallState":I
    .restart local v2    # "hasVideoCall":Z
    .restart local v3    # "ringingCallState":I
    .restart local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_8f
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z
    invoke-static {v5, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->access$102(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 569
    const-string v5, "NetworkPolicy"

    const-string v6, "Video call end."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 571
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 572
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 573
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    goto :goto_8e
.end method
