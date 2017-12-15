.class Landroid/net/wifi/PppoeStateMachine$2;
.super Landroid/content/BroadcastReceiver;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/PppoeStateMachine;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/PppoeStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/PppoeStateMachine;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine$2;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 118
    const-string/jumbo v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 120
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    sget-object v2, Landroid/net/wifi/PppoeStateMachine$3;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_44

    .line 134
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_24
    :goto_24
    return-void

    .line 123
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :pswitch_25
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine$2;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const/4 v3, 0x0

    # setter for: Landroid/net/wifi/PppoeStateMachine;->mWifiConnected:Z
    invoke-static {v2, v3}, Landroid/net/wifi/PppoeStateMachine;->access$102(Landroid/net/wifi/PppoeStateMachine;Z)Z

    .line 124
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine$2;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const v3, 0x70004

    invoke-virtual {v2, v3}, Landroid/net/wifi/PppoeStateMachine;->sendMessage(I)V

    goto :goto_24

    .line 127
    :pswitch_34
    const-string v2, "PppoeStateMachine"

    const-string/jumbo v3, "onreceive: connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine$2;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const/4 v3, 0x1

    # setter for: Landroid/net/wifi/PppoeStateMachine;->mWifiConnected:Z
    invoke-static {v2, v3}, Landroid/net/wifi/PppoeStateMachine;->access$102(Landroid/net/wifi/PppoeStateMachine;Z)Z

    goto :goto_24

    .line 120
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_25
        :pswitch_34
    .end packed-switch
.end method
