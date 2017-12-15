.class Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
.super Lcom/samsung/android/contextaware/manager/IContextAwareCallback$Stub;
.source "ContextAwareManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/ContextAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

.field final synthetic this$0:Lcom/samsung/android/contextaware/ContextAwareManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/ContextAwareManager;Lcom/samsung/android/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V
    .registers 6
    .param p2, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->this$0:Lcom/samsung/android/contextaware/ContextAwareManager;

    .line 1003
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/IContextAwareCallback$Stub;-><init>()V

    .line 1004
    iput-object p2, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    .line 1006
    const/4 v0, 0x0

    .line 1007
    .local v0, "looper":Landroid/os/Looper;
    if-nez p3, :cond_16

    .line 1008
    # getter for: Lcom/samsung/android/contextaware/ContextAwareManager;->mMainLooper:Landroid/os/Looper;
    invoke-static {p1}, Lcom/samsung/android/contextaware/ContextAwareManager;->access$000(Lcom/samsung/android/contextaware/ContextAwareManager;)Landroid/os/Looper;

    move-result-object v0

    .line 1013
    :goto_e
    new-instance v1, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate$1;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/contextaware/ContextAwareManager;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 1025
    return-void

    .line 1010
    :cond_16
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_e
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;)Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    .prologue
    .line 985
    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized caCallback(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1046
    monitor-enter p0

    if-nez p2, :cond_e

    .line 1047
    :try_start_3
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_23

    .line 1058
    :goto_c
    monitor-exit p0

    return-void

    .line 1052
    :cond_e
    :try_start_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1053
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1054
    invoke-virtual {p2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1055
    iget-object v1, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1057
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_23

    goto :goto_c

    .line 1046
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getListener()Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .registers 2

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    if-nez v0, :cond_6

    .line 1069
    const/4 v0, 0x0

    .line 1071
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method
