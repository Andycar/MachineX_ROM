.class Landroid/service/trust/TrustAgentService$1;
.super Landroid/os/Handler;
.source "TrustAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/TrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/trust/TrustAgentService;


# direct methods
.method constructor <init>(Landroid/service/trust/TrustAgentService;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 111
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_46

    .line 131
    :goto_5
    return-void

    .line 113
    :pswitch_6
    iget-object v5, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    :goto_d
    invoke-virtual {v5, v4}, Landroid/service/trust/TrustAgentService;->onUnlockAttempt(Z)V

    goto :goto_5

    :cond_11
    const/4 v4, 0x0

    goto :goto_d

    .line 116
    :pswitch_13
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v1

    .line 117
    .local v1, "features":Landroid/os/Bundle;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    .line 118
    .local v3, "token":Landroid/os/IBinder;
    iget-object v4, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v4, v1}, Landroid/service/trust/TrustAgentService;->onSetTrustAgentFeaturesEnabled(Landroid/os/Bundle;)Z

    move-result v2

    .line 120
    .local v2, "result":Z
    :try_start_21
    iget-object v4, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Landroid/service/trust/TrustAgentService;->access$000(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_36

    .line 121
    :try_start_28
    iget-object v4, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    invoke-static {v4}, Landroid/service/trust/TrustAgentService;->access$100(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Landroid/service/trust/ITrustAgentServiceCallback;->onSetTrustAgentFeaturesEnabledCompleted(ZLandroid/os/IBinder;)V

    .line 122
    monitor-exit v5

    goto :goto_5

    :catchall_33
    move-exception v4

    monitor-exit v5
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_33

    :try_start_35
    throw v4
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_36} :catch_36

    .line 123
    :catch_36
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    const-string v5, "calling onSetTrustAgentFeaturesEnabledCompleted()"

    # invokes: Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/service/trust/TrustAgentService;->access$200(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V

    goto :goto_5

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "features":Landroid/os/Bundle;
    .end local v2    # "result":Z
    .end local v3    # "token":Landroid/os/IBinder;
    :pswitch_3f
    iget-object v4, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v4}, Landroid/service/trust/TrustAgentService;->onTrustTimeout()V

    goto :goto_5

    .line 111
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_6
        :pswitch_13
        :pswitch_3f
    .end packed-switch
.end method
