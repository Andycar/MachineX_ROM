.class Landroid/telecom/VideoCallbackServant$1;
.super Landroid/os/Handler;
.source "VideoCallbackServant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallbackServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/VideoCallbackServant;


# direct methods
.method constructor <init>(Landroid/telecom/VideoCallbackServant;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private internalHandleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_8e

    .line 104
    :goto_5
    return-void

    .line 57
    :pswitch_6
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    # getter for: Landroid/telecom/VideoCallbackServant;->mDelegate:Lcom/android/internal/telecom/IVideoCallback;
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_5

    .line 61
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 63
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_18
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    # getter for: Landroid/telecom/VideoCallbackServant;->mDelegate:Lcom/android/internal/telecom/IVideoCallback;
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    invoke-interface {v3, v4, v1, v2}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_2f

    .line 68
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_5

    :catchall_2f
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 73
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_34
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 75
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_38
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    # getter for: Landroid/telecom/VideoCallbackServant;->mDelegate:Lcom/android/internal/telecom/IVideoCallback;
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IVideoCallback;->handleCallSessionEvent(I)V
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_47

    .line 77
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_5

    :catchall_47
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 82
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 84
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_50
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    # getter for: Landroid/telecom/VideoCallbackServant;->mDelegate:Lcom/android/internal/telecom/IVideoCallback;
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IVideoCallback;->changePeerDimensions(II)V
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_61

    .line 86
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_5

    :catchall_61
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 91
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_66
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 93
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_6a
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    # getter for: Landroid/telecom/VideoCallbackServant;->mDelegate:Lcom/android/internal/telecom/IVideoCallback;
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IVideoCallback;->changeCallDataUsage(I)V
    :try_end_75
    .catchall {:try_start_6a .. :try_end_75} :catchall_79

    .line 95
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_5

    :catchall_79
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 100
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7e
    iget-object v1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    # getter for: Landroid/telecom/VideoCallbackServant;->mDelegate:Lcom/android/internal/telecom/IVideoCallback;
    invoke-static {v1}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/CameraCapabilities;

    invoke-interface {v2, v1}, Lcom/android/internal/telecom/IVideoCallback;->changeCameraCapabilities(Landroid/telecom/CameraCapabilities;)V

    goto/16 :goto_5

    .line 55
    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_14
        :pswitch_34
        :pswitch_4c
        :pswitch_66
        :pswitch_7e
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 48
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telecom/VideoCallbackServant$1;->internalHandleMessage(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 51
    :goto_3
    return-void

    .line 49
    :catch_4
    move-exception v0

    goto :goto_3
.end method
