.class Landroid/telecom/InCallService$1;
.super Landroid/os/Handler;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/InCallService;


# direct methods
.method constructor <init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 62
    iput-object p1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 65
    iget-object v4, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v4}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    if-nez v4, :cond_e

    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v3, :cond_e

    .line 105
    :goto_d
    return-void

    .line 69
    :cond_e
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_9e

    goto :goto_d

    .line 71
    :pswitch_14
    iget-object v4, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    new-instance v5, Landroid/telecom/Phone;

    new-instance v6, Landroid/telecom/InCallAdapter;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telecom/IInCallAdapter;

    invoke-direct {v6, v3}, Landroid/telecom/InCallAdapter;-><init>(Lcom/android/internal/telecom/IInCallAdapter;)V

    invoke-direct {v5, v6}, Landroid/telecom/Phone;-><init>(Landroid/telecom/InCallAdapter;)V

    # setter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v4, v5}, Landroid/telecom/InCallService;->access$002(Landroid/telecom/InCallService;Landroid/telecom/Phone;)Landroid/telecom/Phone;

    .line 72
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    iget-object v4, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v4}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telecom/InCallService;->onPhoneCreated(Landroid/telecom/Phone;)V

    goto :goto_d

    .line 75
    :pswitch_33
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/ParcelableCall;

    invoke-virtual {v4, v3}, Landroid/telecom/Phone;->internalAddCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_d

    .line 78
    :pswitch_41
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/ParcelableCall;

    invoke-virtual {v4, v3}, Landroid/telecom/Phone;->internalUpdateCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_d

    .line 81
    :pswitch_4f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 83
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_53
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 84
    .local v1, "callId":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 85
    .local v2, "remaining":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/telecom/Phone;->internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_53 .. :try_end_64} :catchall_68

    .line 87
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_d

    .end local v1    # "callId":Ljava/lang/String;
    .end local v2    # "remaining":Ljava/lang/String;
    :catchall_68
    move-exception v3

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v3

    .line 92
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6d
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/AudioState;

    invoke-virtual {v4, v3}, Landroid/telecom/Phone;->internalAudioStateChanged(Landroid/telecom/AudioState;)V

    goto :goto_d

    .line 95
    :pswitch_7b
    iget-object v4, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v4}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_89

    :goto_85
    invoke-virtual {v4, v3}, Landroid/telecom/Phone;->internalBringToForeground(Z)V

    goto :goto_d

    :cond_89
    const/4 v3, 0x0

    goto :goto_85

    .line 99
    :pswitch_8b
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/telecom/Phone;->internalChangeInContent(I)V

    goto/16 :goto_d

    .line 69
    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_33
        :pswitch_41
        :pswitch_4f
        :pswitch_6d
        :pswitch_7b
        :pswitch_8b
    .end packed-switch
.end method
