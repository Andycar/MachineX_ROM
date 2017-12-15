.class Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
.super Landroid/hardware/scontext/ISContextCallback$Stub;
.source "SContextManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SContextListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/scontext/SContextListener;

.field final synthetic this$0:Landroid/hardware/scontext/SContextManager;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Handler;)V
    .registers 6
    .param p2, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1162
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->this$0:Landroid/hardware/scontext/SContextManager;

    invoke-direct {p0}, Landroid/hardware/scontext/ISContextCallback$Stub;-><init>()V

    .line 1164
    iput-object p2, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    .line 1166
    if-eqz p3, :cond_15

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1168
    .local v0, "looper":Landroid/os/Looper;
    :goto_d
    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate$1;-><init>(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;Landroid/os/Looper;Landroid/hardware/scontext/SContextManager;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 1178
    return-void

    .line 1166
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_15
    iget-object v0, p1, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    goto :goto_d
.end method

.method static synthetic access$000(Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;)Landroid/hardware/scontext/SContextListener;
    .registers 2
    .param p0, "x0"    # Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .prologue
    .line 1149
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method


# virtual methods
.method public getListener()Landroid/hardware/scontext/SContextListener;
    .registers 2

    .prologue
    .line 1186
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 1213
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized scontextCallback(Landroid/hardware/scontext/SContextEvent;)V
    .registers 4
    .param p1, "scontextEvent"    # Landroid/hardware/scontext/SContextEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1198
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1199
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1200
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1201
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1203
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 1204
    monitor-exit p0

    return-void

    .line 1198
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method
