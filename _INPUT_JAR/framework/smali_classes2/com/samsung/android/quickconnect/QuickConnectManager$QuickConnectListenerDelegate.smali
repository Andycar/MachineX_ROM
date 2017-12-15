.class Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
.super Lcom/samsung/android/quickconnect/IQuickConnectCallback$Stub;
.source "QuickConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/quickconnect/QuickConnectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuickConnectListenerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate$ListenerHandler;
    }
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;Landroid/os/Handler;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/samsung/android/quickconnect/IQuickConnectCallback$Stub;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    .line 189
    if-nez p2, :cond_19

    # getter for: Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/samsung/android/quickconnect/QuickConnectManager;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 192
    .local v0, "looper":Landroid/os/Looper;
    :goto_f
    new-instance v1, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate$ListenerHandler;

    iget-object v2, p0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate$ListenerHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;)V

    iput-object v1, p0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 193
    return-void

    .line 189
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_19
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_f
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

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
    .line 211
    iget-object v0, p0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onQuickConnectCallback()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 207
    return-void
.end method
