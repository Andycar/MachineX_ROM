.class abstract Landroid/location/LocalListenerHelper;
.super Ljava/lang/Object;
.source "LocalListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocalListenerHelper$ListenerOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<TT",
            "Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    .local p0, "this":Landroid/location/LocalListenerHelper;, "Landroid/location/LocalListenerHelper<TTListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    .line 39
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/location/LocalListenerHelper;, "Landroid/location/LocalListenerHelper<TTListener;>;"
    .local p1, "listener":Ljava/lang/Object;, "TTListener;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v4, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    monitor-enter v4

    .line 49
    :try_start_8
    iget-object v5, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_29

    move-result v5

    if-eqz v5, :cond_2c

    .line 52
    :try_start_10
    invoke-virtual {p0}, Landroid/location/LocalListenerHelper;->registerWithServer()Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_1f
    .catchall {:try_start_10 .. :try_end_13} :catchall_29

    move-result v1

    .line 57
    .local v1, "registeredWithService":Z
    if-nez v1, :cond_2c

    .line 58
    :try_start_16
    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    const-string v5, "Unable to register listener transport."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    monitor-exit v4

    .line 68
    .end local v1    # "registeredWithService":Z
    :goto_1e
    return v2

    .line 53
    :catch_1f
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    const-string v5, "Error handling first listener."

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    monitor-exit v4

    goto :goto_1e

    .line 67
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_29
    move-exception v2

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_29

    throw v2

    .line 63
    :cond_2c
    :try_start_2c
    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 64
    monitor-exit v4

    move v2, v3

    goto :goto_1e

    .line 66
    :cond_37
    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_29

    move v2, v3

    .line 68
    goto :goto_1e
.end method

.method protected foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V
    .registers 8
    .param p1, "operation"    # Landroid/location/LocalListenerHelper$ListenerOperation;

    .prologue
    .line 96
    .local p0, "this":Landroid/location/LocalListenerHelper;, "Landroid/location/LocalListenerHelper<TTListener;>;"
    iget-object v5, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    monitor-enter v5

    .line 97
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    .local v3, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<TTListener;>;"
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_26

    .line 100
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 102
    .local v2, "listener":Ljava/lang/Object;, "TTListener;"
    :try_start_19
    invoke-interface {p1, v2}, Landroid/location/LocalListenerHelper$ListenerOperation;->execute(Ljava/lang/Object;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_f

    .line 103
    :catch_1d
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/location/LocalListenerHelper;->mTag:Ljava/lang/String;

    const-string v5, "Error in monitored listener."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 98
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Ljava/lang/Object;, "TTListener;"
    .end local v3    # "listeners":Ljava/util/Collection;, "Ljava/util/Collection<TTListener;>;"
    :catchall_26
    move-exception v4

    :try_start_27
    monitor-exit v5
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v4

    .line 108
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "listeners":Ljava/util/Collection;, "Ljava/util/Collection<TTListener;>;"
    :cond_29
    return-void
.end method

.method protected abstract registerWithServer()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Landroid/location/LocalListenerHelper;, "Landroid/location/LocalListenerHelper<TTListener;>;"
    .local p1, "listener":Ljava/lang/Object;, "TTListener;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v3, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    .line 75
    :try_start_6
    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 76
    .local v1, "removed":Z
    if-eqz v1, :cond_1e

    iget-object v2, p0, Landroid/location/LocalListenerHelper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_20

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v0, 0x1

    .line 77
    .local v0, "isLastRemoved":Z
    :goto_17
    if-eqz v0, :cond_1c

    .line 79
    :try_start_19
    invoke-virtual {p0}, Landroid/location/LocalListenerHelper;->unregisterFromServer()V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_23
    .catchall {:try_start_19 .. :try_end_1c} :catchall_20

    .line 84
    :cond_1c
    :goto_1c
    :try_start_1c
    monitor-exit v3

    .line 85
    return-void

    .line 76
    .end local v0    # "isLastRemoved":Z
    :cond_1e
    const/4 v0, 0x0

    goto :goto_17

    .line 84
    .end local v1    # "removed":Z
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_20

    throw v2

    .line 80
    .restart local v0    # "isLastRemoved":Z
    .restart local v1    # "removed":Z
    :catch_23
    move-exception v2

    goto :goto_1c
.end method

.method protected abstract unregisterFromServer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
