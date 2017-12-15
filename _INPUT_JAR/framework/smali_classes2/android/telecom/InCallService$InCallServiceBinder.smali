.class final Landroid/telecom/InCallService$InCallServiceBinder;
.super Lcom/android/internal/telecom/IInCallService$Stub;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InCallServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/InCallService;


# direct methods
.method private constructor <init>(Landroid/telecom/InCallService;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0}, Lcom/android/internal/telecom/IInCallService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/InCallService;Landroid/telecom/InCallService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/telecom/InCallService;
    .param p2, "x1"    # Landroid/telecom/InCallService$1;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/telecom/InCallService$InCallServiceBinder;-><init>(Landroid/telecom/InCallService;)V

    return-void
.end method


# virtual methods
.method public addCall(Landroid/telecom/ParcelableCall;)V
    .registers 4
    .param p1, "call"    # Landroid/telecom/ParcelableCall;

    .prologue
    .line 117
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/InCallService;->access$100(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 118
    return-void
.end method

.method public bringToForeground(Z)V
    .registers 6
    .param p1, "showDialpad"    # Z

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/InCallService;->access$100(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 153
    return-void

    :cond_13
    move v0, v1

    .line 152
    goto :goto_b
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .registers 4
    .param p1, "audioState"    # Landroid/telecom/AudioState;

    .prologue
    .line 140
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/InCallService;->access$100(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 141
    return-void
.end method

.method public onChangeInContent(I)V
    .registers 5
    .param p1, "contentObserver"    # I

    .prologue
    .line 146
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/InCallService;->access$100(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void
.end method

.method public setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V
    .registers 4
    .param p1, "inCallAdapter"    # Lcom/android/internal/telecom/IInCallAdapter;

    .prologue
    .line 112
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/InCallService;->access$100(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    return-void
.end method

.method public setPostDial(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .prologue
    .line 128
    return-void
.end method

.method public setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 133
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 134
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/InCallService;->access$100(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 136
    return-void
.end method

.method public updateCall(Landroid/telecom/ParcelableCall;)V
    .registers 4
    .param p1, "call"    # Landroid/telecom/ParcelableCall;

    .prologue
    .line 122
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/InCallService;->access$100(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 123
    return-void
.end method
