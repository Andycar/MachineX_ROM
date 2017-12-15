.class Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
.super Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsAdapterServiceConnection"
.end annotation


# instance fields
.field private mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RemoteViewsAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConnected:Z

.field private mIsConnecting:Z

.field private mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/widget/RemoteViewsAdapter;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub;-><init>()V

    .line 156
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 157
    return-void
.end method

.method static synthetic access$802(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$902(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized bind(Landroid/content/Context;ILandroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    monitor-enter p0

    :try_start_1
    iget-boolean v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4f

    if-nez v3, :cond_21

    .line 184
    :try_start_5
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 185
    .local v2, "mgr":Landroid/appwidget/AppWidgetManager;
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;

    .local v0, "adapter":Landroid/widget/RemoteViewsAdapter;
    if-eqz v0, :cond_23

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v3, p2, p3, v4}, Landroid/appwidget/AppWidgetManager;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 193
    :goto_1e
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_2b
    .catchall {:try_start_5 .. :try_end_21} :catchall_4f

    .line 200
    .end local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    .end local v2    # "mgr":Landroid/appwidget/AppWidgetManager;
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    .line 189
    .restart local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    .restart local v2    # "mgr":Landroid/appwidget/AppWidgetManager;
    :cond_23
    :try_start_23
    const-string v3, "RemoteViewsAdapter"

    const-string v4, "bind: adapter was null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_2b
    .catchall {:try_start_23 .. :try_end_2a} :catchall_4f

    goto :goto_1e

    .line 194
    .end local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    .end local v2    # "mgr":Landroid/appwidget/AppWidgetManager;
    :catch_2b
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2c
    const-string v3, "RemoteViewsAdapterServiceConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    .line 197
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z
    :try_end_4e
    .catchall {:try_start_2c .. :try_end_4e} :catchall_4f

    goto :goto_21

    .line 160
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_4f
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;
    .registers 2

    .prologue
    .line 328
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .registers 2

    .prologue
    .line 332
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 241
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    .line 244
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_20

    .line 245
    .local v0, "adapter":Landroid/widget/RemoteViewsAdapter;
    if-nez v0, :cond_13

    .line 302
    :goto_11
    monitor-exit p0

    return-void

    .line 248
    :cond_13
    :try_start_13
    # getter for: Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->access$1000(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;

    invoke-direct {v2, p0, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_20

    goto :goto_11

    .line 241
    .end local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onServiceDisconnected()V
    .registers 4

    .prologue
    .line 305
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z

    .line 306
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    .line 307
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    .line 310
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_23

    .line 311
    .local v0, "adapter":Landroid/widget/RemoteViewsAdapter;
    if-nez v0, :cond_16

    .line 325
    :goto_14
    monitor-exit p0

    return-void

    .line 313
    :cond_16
    :try_start_16
    # getter for: Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->access$600(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;

    invoke-direct {v2, p0, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_23

    goto :goto_14

    .line 305
    .end local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unbind(Landroid/content/Context;ILandroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 224
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 225
    .local v2, "mgr":Landroid/appwidget/AppWidgetManager;
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;

    .local v0, "adapter":Landroid/widget/RemoteViewsAdapter;
    if-eqz v0, :cond_1b

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2, p3}, Landroid/appwidget/AppWidgetManager;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V

    .line 232
    :goto_16
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_24
    .catchall {:try_start_1 .. :try_end_19} :catchall_49

    .line 238
    .end local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    .end local v2    # "mgr":Landroid/appwidget/AppWidgetManager;
    :goto_19
    monitor-exit p0

    return-void

    .line 228
    .restart local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    .restart local v2    # "mgr":Landroid/appwidget/AppWidgetManager;
    :cond_1b
    :try_start_1b
    const-string v3, "RemoteViewsAdapter"

    const-string/jumbo v4, "unbind: adapter was null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_23} :catch_24
    .catchall {:try_start_1b .. :try_end_23} :catchall_49

    goto :goto_16

    .line 233
    .end local v0    # "adapter":Landroid/widget/RemoteViewsAdapter;
    .end local v2    # "mgr":Landroid/appwidget/AppWidgetManager;
    :catch_24
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    :try_start_25
    const-string v3, "RemoteViewsAdapterServiceConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unbind(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnecting:Z

    .line 236
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->mIsConnected:Z
    :try_end_48
    .catchall {:try_start_25 .. :try_end_48} :catchall_49

    goto :goto_19

    .line 224
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_49
    move-exception v3

    monitor-exit p0

    throw v3
.end method
