.class Landroid/net/wifi/PppoeStateMachine$ConnectingState;
.super Lcom/android/internal/util/State;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/PppoeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectingState"
.end annotation


# instance fields
.field pppoeState:Ljava/lang/String;

.field success:I

.field final synthetic this$0:Landroid/net/wifi/PppoeStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/PppoeStateMachine;)V
    .registers 2

    .prologue
    .line 313
    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .prologue
    .line 318
    const-string v0, "PppoeStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->CONNECTING:Landroid/net/wifi/PPPOEInfo$Status;

    # invokes: Landroid/net/wifi/PppoeStateMachine;->setPppoeInfo(Landroid/net/wifi/PPPOEInfo$Status;)V
    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->access$300(Landroid/net/wifi/PppoeStateMachine;Landroid/net/wifi/PPPOEInfo$Status;)V

    .line 321
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string v1, "PPPOE_STATE_CONNECTING"

    # invokes: Landroid/net/wifi/PppoeStateMachine;->setPppoeState(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->access$1300(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/PPPOEConfig;
    invoke-static {v0}, Landroid/net/wifi/PppoeStateMachine;->access$400(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 323
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/PPPOEConfig;
    invoke-static {v0}, Landroid/net/wifi/PppoeStateMachine;->access$400(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkUtils;->startPppoe(Landroid/net/wifi/PPPOEConfig;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->success:I

    .line 324
    iget v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->success:I

    if-nez v0, :cond_5f

    .line 325
    const-string v0, "PppoeStateMachine"

    const-string/jumbo v1, "starting pppoe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string/jumbo v1, "ppp3"

    const/16 v2, 0x3e9

    # invokes: Landroid/net/wifi/PppoeStateMachine;->createNetworkInfo(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/PppoeStateMachine;->access$1400(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;I)V

    .line 328
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const v1, 0x70007

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/PppoeStateMachine;->sendMessageDelayed(IJ)V

    .line 333
    :cond_5e
    :goto_5e
    return-void

    .line 330
    :cond_5f
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mOfflineState:Landroid/net/wifi/PppoeStateMachine$OfflineState;
    invoke-static {v1}, Landroid/net/wifi/PppoeStateMachine;->access$900(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PppoeStateMachine$OfflineState;

    move-result-object v1

    # invokes: Landroid/net/wifi/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->access$1500(Landroid/net/wifi/PppoeStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_5e
.end method

.method public exit()V
    .registers 4

    .prologue
    .line 365
    const-string v0, "PppoeStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const v1, 0x70007

    # invokes: Landroid/net/wifi/PppoeStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->access$1900(Landroid/net/wifi/PppoeStateMachine;I)V

    .line 367
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "ret":Z
    const-string v1, "PppoeStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->getName()Ljava/lang/String;

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

    .line 339
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_8a

    .line 361
    :goto_2a
    :pswitch_2a
    return v0

    .line 341
    :pswitch_2b
    const-string/jumbo v1, "net.pppoe.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->pppoeState:Ljava/lang/String;

    .line 342
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->pppoeState:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 343
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const v2, 0x70007

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v2, v4, v5}, Landroid/net/wifi/PppoeStateMachine;->sendMessageDelayed(IJ)V

    .line 350
    :cond_46
    :goto_46
    const/4 v0, 0x1

    .line 351
    goto :goto_2a

    .line 344
    :cond_48
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->pppoeState:Ljava/lang/String;

    const-string/jumbo v2, "online"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 345
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mOnlineState:Landroid/net/wifi/PppoeStateMachine$OnlineState;
    invoke-static {v2}, Landroid/net/wifi/PppoeStateMachine;->access$1600(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PppoeStateMachine$OnlineState;

    move-result-object v2

    # invokes: Landroid/net/wifi/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/PppoeStateMachine;->access$1700(Landroid/net/wifi/PppoeStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_46

    .line 346
    :cond_5f
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->pppoeState:Ljava/lang/String;

    const-string/jumbo v2, "offline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 347
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string v2, "FAILURE"

    iget v3, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->success:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/wifi/PppoeStateMachine;->sendPppoeCompletedBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Landroid/net/wifi/PppoeStateMachine;->access$1800(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const v2, 0x70004

    invoke-virtual {v1, v2}, Landroid/net/wifi/PppoeStateMachine;->sendMessage(I)V

    goto :goto_46

    .line 354
    :pswitch_80
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string v2, "PPPOE_STATE_DISCONNECTING"

    # invokes: Landroid/net/wifi/PppoeStateMachine;->setPppoeState(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/PppoeStateMachine;->access$1300(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)V

    .line 355
    const/4 v0, 0x0

    .line 356
    goto :goto_2a

    .line 339
    nop

    :pswitch_data_8a
    .packed-switch 0x70004
        :pswitch_80
        :pswitch_2a
        :pswitch_2a
        :pswitch_2b
    .end packed-switch
.end method
