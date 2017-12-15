.class Landroid/net/wifi/PppoeStateMachine$OnlineState;
.super Lcom/android/internal/util/State;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/PppoeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/PppoeStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/PppoeStateMachine;)V
    .registers 2

    .prologue
    .line 370
    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 372
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 375
    .local v4, "mDnsProp":[Ljava/lang/String;
    const/4 v0, 0x0

    const-string/jumbo v1, "net.ppp3.dns1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 376
    const-string/jumbo v0, "net.ppp3.dns2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 377
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string/jumbo v1, "net.ppp3.local-ip"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/net/wifi/PppoeStateMachine;->mLocalProp:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->access$2002(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 378
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string/jumbo v1, "net.ppp3.remote-ip"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/net/wifi/PppoeStateMachine;->mGateWayProp:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->access$702(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mGateWayProp:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/PppoeStateMachine;->access$700(Landroid/net/wifi/PppoeStateMachine;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    .line 381
    .local v7, "mGateWay":Ljava/net/InetAddress;
    new-instance v3, Landroid/net/RouteInfo;

    const-string/jumbo v0, "ppp3"

    invoke-direct {v3, v5, v7, v0, v2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 383
    .local v3, "mRouteinfo":Landroid/net/RouteInfo;
    const-string v0, "PppoeStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/PppoeStateMachine$OnlineState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    # invokes: Landroid/net/wifi/PppoeStateMachine;->setPppoeInfo(Landroid/net/wifi/PPPOEInfo$Status;)V
    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->access$300(Landroid/net/wifi/PppoeStateMachine;Landroid/net/wifi/PPPOEInfo$Status;)V

    .line 394
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string v1, "PPPOE_STATE_CONNECTED"

    # invokes: Landroid/net/wifi/PppoeStateMachine;->setPppoeState(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->access$1300(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    # setter for: Landroid/net/wifi/PppoeStateMachine;->mPppoeRunningTime:J
    invoke-static {v0, v8, v9}, Landroid/net/wifi/PppoeStateMachine;->access$2102(Landroid/net/wifi/PppoeStateMachine;J)J

    .line 396
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string v1, "SUCCESS"

    # invokes: Landroid/net/wifi/PppoeStateMachine;->sendPppoeCompletedBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v5}, Landroid/net/wifi/PppoeStateMachine;->access$1800(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string/jumbo v1, "ppp3"

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mLocalProp:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/wifi/PppoeStateMachine;->access$2000(Landroid/net/wifi/PppoeStateMachine;)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x3e9

    # invokes: Landroid/net/wifi/PppoeStateMachine;->updateNetworkInfo(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;[Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v0 .. v6}, Landroid/net/wifi/PppoeStateMachine;->access$2200(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;[Ljava/lang/String;Ljava/lang/String;I)V

    .line 399
    return-void
.end method

.method public exit()V
    .registers 5

    .prologue
    .line 425
    const-string v0, "PppoeStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/PppoeStateMachine$OnlineState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-wide/16 v2, 0x0

    # setter for: Landroid/net/wifi/PppoeStateMachine;->mPppoeRunningTime:J
    invoke-static {v0, v2, v3}, Landroid/net/wifi/PppoeStateMachine;->access$2102(Landroid/net/wifi/PppoeStateMachine;J)J

    .line 427
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string v1, "PPPOE_STATE_DISCONNECTED"

    # invokes: Landroid/net/wifi/PppoeStateMachine;->setPppoeState(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->access$1300(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 404
    .local v0, "ret":Z
    const-string v1, "PppoeStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/PppoeStateMachine$OnlineState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_40

    .line 417
    :pswitch_2a
    const/4 v0, 0x0

    .line 421
    :goto_2b
    return v0

    .line 407
    :pswitch_2c
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string v2, "ALREADY_ONLINE"

    const/4 v3, 0x0

    # invokes: Landroid/net/wifi/PppoeStateMachine;->sendPppoeCompletedBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Landroid/net/wifi/PppoeStateMachine;->access$1800(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const/4 v0, 0x1

    .line 409
    goto :goto_2b

    .line 412
    :pswitch_36
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string v2, "PPPOE_STATE_DISCONNECTING"

    # invokes: Landroid/net/wifi/PppoeStateMachine;->setPppoeState(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/PppoeStateMachine;->access$1300(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)V

    .line 413
    const/4 v0, 0x0

    .line 414
    goto :goto_2b

    .line 405
    nop

    :pswitch_data_40
    .packed-switch 0x70001
        :pswitch_2c
        :pswitch_2a
        :pswitch_2a
        :pswitch_36
    .end packed-switch
.end method
