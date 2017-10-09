.class Lcom/android/server/am/VRApplicationPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "VRApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/VRApplicationPolicy;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/VRApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/VRApplicationPolicy;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/server/am/VRApplicationPolicy$1;->this$0:Lcom/android/server/am/VRApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 91
    .local v2, "extras":Landroid/os/Bundle;
    const/4 v1, -0x1

    .line 92
    .local v1, "dockState":I
    if-eqz v2, :cond_13

    .line 93
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 95
    :cond_13
    const/16 v4, 0xb

    if-ne v1, v4, :cond_1d

    .line 96
    iget-object v4, p0, Lcom/android/server/am/VRApplicationPolicy$1;->this$0:Lcom/android/server/am/VRApplicationPolicy;

    # setter for: Lcom/android/server/am/VRApplicationPolicy;->mHMTconnected:Z
    invoke-static {v4, v6}, Lcom/android/server/am/VRApplicationPolicy;->access$002(Lcom/android/server/am/VRApplicationPolicy;Z)Z

    .line 102
    :cond_1c
    :goto_1c
    return-void

    .line 97
    :cond_1d
    iget-object v4, p0, Lcom/android/server/am/VRApplicationPolicy$1;->this$0:Lcom/android/server/am/VRApplicationPolicy;

    # getter for: Lcom/android/server/am/VRApplicationPolicy;->mHMTconnected:Z
    invoke-static {v4}, Lcom/android/server/am/VRApplicationPolicy;->access$000(Lcom/android/server/am/VRApplicationPolicy;)Z

    move-result v4

    if-eqz v4, :cond_1c

    if-nez v1, :cond_1c

    .line 98
    iget-object v4, p0, Lcom/android/server/am/VRApplicationPolicy$1;->this$0:Lcom/android/server/am/VRApplicationPolicy;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/am/VRApplicationPolicy;->mHMTconnected:Z
    invoke-static {v4, v5}, Lcom/android/server/am/VRApplicationPolicy;->access$002(Lcom/android/server/am/VRApplicationPolicy;Z)Z

    .line 99
    iget-object v4, p0, Lcom/android/server/am/VRApplicationPolicy$1;->this$0:Lcom/android/server/am/VRApplicationPolicy;

    iget-object v4, v4, Lcom/android/server/am/VRApplicationPolicy;->mHandler:Lcom/android/server/am/VRApplicationPolicy$H;

    invoke-virtual {v4, v6}, Lcom/android/server/am/VRApplicationPolicy$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 100
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/am/VRApplicationPolicy$1;->this$0:Lcom/android/server/am/VRApplicationPolicy;

    iget-object v4, v4, Lcom/android/server/am/VRApplicationPolicy;->mHandler:Lcom/android/server/am/VRApplicationPolicy$H;

    invoke-virtual {v4, v3}, Lcom/android/server/am/VRApplicationPolicy$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1c
.end method
