.class Landroid/net/wifi/PppoeStateMachine$ConnectState;
.super Lcom/android/internal/util/State;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/PppoeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectState"
.end annotation


# instance fields
.field success:I

.field final synthetic this$0:Landroid/net/wifi/PppoeStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/PppoeStateMachine;)V
    .registers 2

    .prologue
    .line 291
    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 295
    const/4 v0, 0x1

    .line 297
    .local v0, "ret":Z
    const-string v1, "PppoeStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/PppoeStateMachine$ConnectState;->getName()Ljava/lang/String;

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

    .line 298
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_42

    .line 306
    const/4 v0, 0x0

    .line 309
    :cond_2b
    :goto_2b
    return v0

    .line 300
    :pswitch_2c
    invoke-static {}, Landroid/net/NetworkUtils;->stopPppoe()I

    move-result v1

    iput v1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectState;->success:I

    .line 301
    iget v1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectState;->success:I

    if-nez v1, :cond_2b

    .line 302
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    iget-object v2, p0, Landroid/net/wifi/PppoeStateMachine$ConnectState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mDisconnectingStateState:Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;
    invoke-static {v2}, Landroid/net/wifi/PppoeStateMachine;->access$1100(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PppoeStateMachine$DisconnectingStateState;

    move-result-object v2

    # invokes: Landroid/net/wifi/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/PppoeStateMachine;->access$1200(Landroid/net/wifi/PppoeStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2b

    .line 298
    :pswitch_data_42
    .packed-switch 0x70004
        :pswitch_2c
    .end packed-switch
.end method
