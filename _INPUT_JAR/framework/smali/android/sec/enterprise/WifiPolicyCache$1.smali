.class Landroid/sec/enterprise/WifiPolicyCache$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiPolicyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sec/enterprise/WifiPolicyCache;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/enterprise/WifiPolicyCache;


# direct methods
.method constructor <init>(Landroid/sec/enterprise/WifiPolicyCache;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Landroid/sec/enterprise/WifiPolicyCache$1;->this$0:Landroid/sec/enterprise/WifiPolicyCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.app.enterprise.action.ACTION_WIFI_POLICY_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 110
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_24

    .line 111
    const-string v4, "android.app.enterprise.extra.WIFI_TYPE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "type":Ljava/lang/String;
    const-string v4, "android.app.enterprise.extra.EXTRA_USER_ID"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 113
    .local v3, "userId":I
    iget-object v4, p0, Landroid/sec/enterprise/WifiPolicyCache$1;->this$0:Landroid/sec/enterprise/WifiPolicyCache;

    # invokes: Landroid/sec/enterprise/WifiPolicyCache;->readVariables(Ljava/lang/String;I)V
    invoke-static {v4, v2, v3}, Landroid/sec/enterprise/WifiPolicyCache;->access$000(Landroid/sec/enterprise/WifiPolicyCache;Ljava/lang/String;I)V

    .line 118
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "userId":I
    :cond_23
    :goto_23
    return-void

    .line 115
    .restart local v1    # "extras":Landroid/os/Bundle;
    :cond_24
    iget-object v4, p0, Landroid/sec/enterprise/WifiPolicyCache$1;->this$0:Landroid/sec/enterprise/WifiPolicyCache;

    const/4 v5, 0x0

    const/4 v6, -0x1

    # invokes: Landroid/sec/enterprise/WifiPolicyCache;->readVariables(Ljava/lang/String;I)V
    invoke-static {v4, v5, v6}, Landroid/sec/enterprise/WifiPolicyCache;->access$000(Landroid/sec/enterprise/WifiPolicyCache;Ljava/lang/String;I)V

    goto :goto_23
.end method
