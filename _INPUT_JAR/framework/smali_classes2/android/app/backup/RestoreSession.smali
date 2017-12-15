.class public Landroid/app/backup/RestoreSession;
.super Ljava/lang/Object;
.source "RestoreSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/RestoreSession$RestoreObserverWrapper;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field mBinder:Landroid/app/backup/IRestoreSession;

.field final mContext:Landroid/content/Context;

.field mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "binder"    # Landroid/app/backup/IRestoreSession;

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    .line 177
    iput-object p1, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    .line 179
    return-void
.end method


# virtual methods
.method public endRestoreSession()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 164
    :try_start_1
    iget-object v1, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    invoke-interface {v1}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_14

    .line 168
    iput-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    .line 170
    :goto_8
    return-void

    .line 165
    :catch_9
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_a
    const-string v1, "RestoreSession"

    const-string v2, "Can\'t contact server to get available sets"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_14

    .line 168
    iput-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    goto :goto_8

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_14
    move-exception v1

    iput-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    throw v1
.end method

.method public getAvailableRestoreSets(Landroid/app/backup/RestoreObserver;)I
    .registers 7
    .param p1, "observer"    # Landroid/app/backup/RestoreObserver;

    .prologue
    .line 53
    const/4 v1, -0x1

    .line 54
    .local v1, "err":I
    new-instance v2, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    .line 56
    .local v2, "obsWrapper":Landroid/app/backup/RestoreSession$RestoreObserverWrapper;
    :try_start_8
    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    invoke-interface {v3, v2}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v1

    .line 60
    :goto_e
    return v1

    .line 57
    :catch_f
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RestoreSession"

    const-string v4, "Can\'t contact server to get available sets"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public restoreAll(JLandroid/app/backup/RestoreObserver;)I
    .registers 9
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/RestoreObserver;

    .prologue
    .line 77
    const/4 v1, -0x1

    .line 78
    .local v1, "err":I
    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    if-eqz v2, :cond_f

    .line 79
    const-string v2, "RestoreSession"

    const-string/jumbo v3, "restoreAll() called during active restore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v2, -0x1

    .line 88
    :goto_e
    return v2

    .line 82
    :cond_f
    new-instance v2, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p3}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    iput-object v2, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    .line 84
    :try_start_18
    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    invoke-interface {v2, p1, p2, v3}, Landroid/app/backup/IRestoreSession;->restoreAll(JLandroid/app/backup/IRestoreObserver;)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_22

    move-result v1

    :goto_20
    move v2, v1

    .line 88
    goto :goto_e

    .line 85
    :catch_22
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RestoreSession"

    const-string v3, "Can\'t contact server to restore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/RestoreObserver;

    .prologue
    .line 141
    const/4 v1, -0x1

    .line 142
    .local v1, "err":I
    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    if-eqz v2, :cond_f

    .line 143
    const-string v2, "RestoreSession"

    const-string/jumbo v3, "restorePackage() called during active restore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v2, -0x1

    .line 152
    :goto_e
    return v2

    .line 146
    :cond_f
    new-instance v2, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p2}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    iput-object v2, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    .line 148
    :try_start_18
    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    invoke-interface {v2, p1, v3}, Landroid/app/backup/IRestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_22

    move-result v1

    :goto_20
    move v2, v1

    .line 152
    goto :goto_e

    .line 149
    :catch_22
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RestoreSession"

    const-string v3, "Can\'t contact server to restore package"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public restoreSome(JLandroid/app/backup/RestoreObserver;[Ljava/lang/String;)I
    .registers 10
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/RestoreObserver;
    .param p4, "packages"    # [Ljava/lang/String;

    .prologue
    .line 111
    const/4 v1, -0x1

    .line 112
    .local v1, "err":I
    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    if-eqz v2, :cond_f

    .line 113
    const-string v2, "RestoreSession"

    const-string/jumbo v3, "restoreAll() called during active restore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v2, -0x1

    .line 122
    :goto_e
    return v2

    .line 116
    :cond_f
    new-instance v2, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p3}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    iput-object v2, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    .line 118
    :try_start_18
    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    invoke-interface {v2, p1, p2, v3, p4}, Landroid/app/backup/IRestoreSession;->restoreSome(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_22

    move-result v1

    :goto_20
    move v2, v1

    .line 122
    goto :goto_e

    .line 119
    :catch_22
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RestoreSession"

    const-string v3, "Can\'t contact server to restore packages"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method
