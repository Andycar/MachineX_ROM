.class final Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;
.super Ljava/lang/Object;
.source "RemoteDisplayProviderProxy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/RemoteDisplayProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Connection"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

.field private final mProvider:Landroid/media/IRemoteDisplayProvider;

.field final synthetic this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/IRemoteDisplayProvider;)V
    .registers 4
    .param p2, "provider"    # Landroid/media/IRemoteDisplayProvider;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    .line 330
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    invoke-direct {v0, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V

    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    .line 331
    return-void
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;I)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "volume"    # I

    .prologue
    .line 389
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {v1, p1, p2}, Landroid/media/IRemoteDisplayProvider;->adjustVolume(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 393
    :goto_5
    return-void

    .line 390
    :catch_6
    move-exception v0

    .line 391
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "RemoteDisplayProvider"

    const-string v2, "Failed to deliver request to adjust display volume."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public binderDied()V
    .registers 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    # getter for: Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->access$400(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$2;

    invoke-direct {v1, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$2;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 403
    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {v1, p1}, Landroid/media/IRemoteDisplayProvider;->connect(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 369
    :goto_5
    return-void

    .line 366
    :catch_6
    move-exception v0

    .line 367
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "RemoteDisplayProvider"

    const-string v2, "Failed to deliver request to connect to display."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public disconnect(Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {v1, p1}, Landroid/media/IRemoteDisplayProvider;->disconnect(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 377
    :goto_5
    return-void

    .line 374
    :catch_6
    move-exception v0

    .line 375
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "RemoteDisplayProvider"

    const-string v2, "Failed to deliver request to disconnect from display."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public dispose()V
    .registers 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {v0}, Landroid/media/IRemoteDisplayProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 352
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    invoke-virtual {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;->dispose()V

    .line 353
    return-void
.end method

.method postStateChanged(Landroid/media/RemoteDisplayState;)V
    .registers 4
    .param p1, "state"    # Landroid/media/RemoteDisplayState;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    # getter for: Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->access$400(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$3;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;Landroid/media/RemoteDisplayState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 412
    return-void
.end method

.method public register()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 335
    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {v2}, Landroid/media/IRemoteDisplayProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 336
    iget-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    iget-object v3, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    invoke-interface {v2, v3}, Landroid/media/IRemoteDisplayProvider;->setCallback(Landroid/media/IRemoteDisplayCallback;)V

    .line 337
    iget-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    # getter for: Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->access$400(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$1;

    invoke-direct {v3, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$1;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_20} :catch_22

    .line 343
    const/4 v1, 0x1

    .line 347
    :goto_21
    return v1

    .line 344
    :catch_22
    move-exception v0

    .line 345
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->binderDied()V

    goto :goto_21
.end method

.method public setDiscoveryMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {v1, p1}, Landroid/media/IRemoteDisplayProvider;->setDiscoveryMode(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 361
    :goto_5
    return-void

    .line 358
    :catch_6
    move-exception v0

    .line 359
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "RemoteDisplayProvider"

    const-string v2, "Failed to deliver request to set discovery mode."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setVolume(Ljava/lang/String;I)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "volume"    # I

    .prologue
    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {v1, p1, p2}, Landroid/media/IRemoteDisplayProvider;->setVolume(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 385
    :goto_5
    return-void

    .line 382
    :catch_6
    move-exception v0

    .line 383
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "RemoteDisplayProvider"

    const-string v2, "Failed to deliver request to set display volume."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
