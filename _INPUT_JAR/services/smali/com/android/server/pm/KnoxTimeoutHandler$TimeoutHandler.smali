.class Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;
.super Landroid/os/Handler;
.source "KnoxTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxTimeoutHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;
    .param p2, "x1"    # Lcom/android/server/pm/KnoxTimeoutHandler$1;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    .line 104
    const-string v0, "KnoxTimeoutHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown msg type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_23
    return-void

    .line 88
    :pswitch_24
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/pm/KnoxTimeoutHandler;->resetLockTimer(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$100(Lcom/android/server/pm/KnoxTimeoutHandler;I)V

    goto :goto_23

    .line 92
    :pswitch_2c
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/pm/KnoxTimeoutHandler;->handleActiveUserChange(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$200(Lcom/android/server/pm/KnoxTimeoutHandler;I)V

    goto :goto_23

    .line 96
    :pswitch_34
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/pm/KnoxTimeoutHandler;->cancelLockTimer(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$300(Lcom/android/server/pm/KnoxTimeoutHandler;I)V

    goto :goto_23

    .line 100
    :pswitch_3c
    iget-object v0, p0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/pm/KnoxTimeoutHandler;->handleHomeShow(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$400(Lcom/android/server/pm/KnoxTimeoutHandler;I)V

    goto :goto_23

    .line 86
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_24
        :pswitch_34
        :pswitch_3c
    .end packed-switch
.end method
