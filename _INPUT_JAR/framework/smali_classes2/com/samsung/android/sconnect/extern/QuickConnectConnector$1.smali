.class Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;
.super Ljava/lang/Object;
.source "QuickConnectConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sconnect/extern/QuickConnectConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;


# direct methods
.method constructor <init>(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 178
    const-string v1, "QuickConnectConnector"

    const-string v2, "onServiceConnected:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    invoke-static {p2}, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sconnect/central/extern/ISconnectService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$3(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;Lcom/samsung/android/sconnect/central/extern/ISconnectService;)V

    .line 180
    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mServiceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;
    invoke-static {v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$0(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 181
    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mServiceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;
    invoke-static {v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$0(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;->onConnected()V

    .line 183
    :cond_21
    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mISconnect:Lcom/samsung/android/sconnect/central/extern/ISconnectService;
    invoke-static {v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$1(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/central/extern/ISconnectService;

    move-result-object v1

    if-nez v1, :cond_31

    .line 184
    const-string v1, "QuickConnectConnector"

    const-string v2, "onServiceConnected: mISconnect == null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_30
    return-void

    .line 188
    :cond_31
    :try_start_31
    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mISconnect:Lcom/samsung/android/sconnect/central/extern/ISconnectService;
    invoke-static {v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$1(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/central/extern/ISconnectService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mCallback:Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;
    invoke-static {v2}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$2(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sconnect/central/extern/ISconnectService;->registerCallback(Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_40} :catch_41

    goto :goto_30

    .line 189
    :catch_41
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QuickConnectConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onServiceConnected: RemoteException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_30
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 163
    const-string v1, "QuickConnectConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onServiceDisconnected:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mServiceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;
    invoke-static {v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$0(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 165
    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mServiceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;
    invoke-static {v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$0(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;->onDisconnected()V

    .line 169
    :cond_29
    :try_start_29
    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mISconnect:Lcom/samsung/android/sconnect/central/extern/ISconnectService;
    invoke-static {v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$1(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/central/extern/ISconnectService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;->this$0:Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    # getter for: Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mCallback:Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;
    invoke-static {v2}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->access$2(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sconnect/central/extern/ISconnectService;->unregisterCallback(Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_38} :catch_39

    .line 174
    :goto_38
    return-void

    .line 170
    :catch_39
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QuickConnectConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onServiceDisconnected: RemoteException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_38
.end method
