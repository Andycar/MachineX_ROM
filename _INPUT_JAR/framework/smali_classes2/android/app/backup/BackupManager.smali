.class public Landroid/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupManager"

.field private static sService:Landroid/app/backup/IBackupManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method private static checkServiceBinder()V
    .registers 1

    .prologue
    .line 66
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_10

    .line 67
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    sput-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    .line 70
    :cond_10
    return-void
.end method

.method public static dataChanged(Ljava/lang/String;)V
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 114
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_c

    .line 116
    :try_start_7
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p0}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 121
    :cond_c
    :goto_c
    return-void

    .line 117
    :catch_d
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged(pkg) couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method


# virtual methods
.method public backupNow()V
    .registers 4

    .prologue
    .line 333
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 334
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_c

    .line 336
    :try_start_7
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->backupNow()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 341
    :cond_c
    :goto_c
    return-void

    .line 337
    :catch_d
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "backupNow() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public beginRestoreSession()Landroid/app/backup/RestoreSession;
    .registers 8

    .prologue
    .line 173
    const/4 v2, 0x0

    .line 174
    .local v2, "session":Landroid/app/backup/RestoreSession;
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 175
    sget-object v4, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v4, :cond_1a

    .line 178
    :try_start_8
    sget-object v4, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    .line 179
    .local v0, "binder":Landroid/app/backup/IRestoreSession;
    if-eqz v0, :cond_1a

    .line 180
    new-instance v3, Landroid/app/backup/RestoreSession;

    iget-object v4, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_19} :catch_1b

    .end local v2    # "session":Landroid/app/backup/RestoreSession;
    .local v3, "session":Landroid/app/backup/RestoreSession;
    move-object v2, v3

    .line 186
    .end local v0    # "binder":Landroid/app/backup/IRestoreSession;
    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    .restart local v2    # "session":Landroid/app/backup/RestoreSession;
    :cond_1a
    :goto_1a
    return-object v2

    .line 182
    :catch_1b
    move-exception v1

    .line 183
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "BackupManager"

    const-string v5, "beginRestoreSession() couldn\'t connect"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public dataChanged()V
    .registers 4

    .prologue
    .line 91
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 92
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_12

    .line 94
    :try_start_7
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    .line 99
    :cond_12
    :goto_12
    return-void

    .line 95
    :catch_13
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "dataChanged() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 4

    .prologue
    .line 264
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 265
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_16

    .line 267
    :try_start_7
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result-object v1

    .line 272
    :goto_d
    return-object v1

    .line 268
    :catch_e
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "getCurrentTransport() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isBackupEnabled()Z
    .registers 4

    .prologue
    .line 221
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 222
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_16

    .line 224
    :try_start_7
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    .line 229
    :goto_d
    return v1

    .line 225
    :catch_e
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "isBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 283
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 284
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_16

    .line 286
    :try_start_7
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->listAllTransports()[Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result-object v1

    .line 291
    :goto_d
    return-object v1

    .line 287
    :catch_e
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string v2, "listAllTransports() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public requestRestore(Landroid/app/backup/RestoreObserver;)I
    .registers 10
    .param p1, "observer"    # Landroid/app/backup/RestoreObserver;

    .prologue
    .line 142
    const/4 v2, -0x1

    .line 143
    .local v2, "result":I
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 144
    sget-object v5, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v5, :cond_2f

    .line 145
    const/4 v3, 0x0

    .line 147
    .local v3, "session":Landroid/app/backup/RestoreSession;
    :try_start_9
    sget-object v5, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v6, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    .line 149
    .local v0, "binder":Landroid/app/backup/IRestoreSession;
    if-eqz v0, :cond_2a

    .line 150
    new-instance v4, Landroid/app/backup/RestoreSession;

    iget-object v5, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1f} :catch_30
    .catchall {:try_start_9 .. :try_end_1f} :catchall_3f

    .line 151
    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    .local v4, "session":Landroid/app/backup/RestoreSession;
    :try_start_1f
    iget-object v5, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Landroid/app/backup/RestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_49
    .catchall {:try_start_1f .. :try_end_28} :catchall_46

    move-result v2

    move-object v3, v4

    .line 156
    .end local v4    # "session":Landroid/app/backup/RestoreSession;
    .restart local v3    # "session":Landroid/app/backup/RestoreSession;
    :cond_2a
    if-eqz v3, :cond_2f

    .line 157
    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    .line 161
    .end local v0    # "binder":Landroid/app/backup/IRestoreSession;
    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    :cond_2f
    :goto_2f
    return v2

    .line 153
    .restart local v3    # "session":Landroid/app/backup/RestoreSession;
    :catch_30
    move-exception v1

    .line 154
    .local v1, "e":Landroid/os/RemoteException;
    :goto_31
    :try_start_31
    const-string v5, "BackupManager"

    const-string/jumbo v6, "restoreSelf() unable to contact service"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_3f

    .line 156
    if-eqz v3, :cond_2f

    .line 157
    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    goto :goto_2f

    .line 156
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_3f
    move-exception v5

    :goto_40
    if-eqz v3, :cond_45

    .line 157
    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    :cond_45
    throw v5

    .line 156
    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    .restart local v0    # "binder":Landroid/app/backup/IRestoreSession;
    .restart local v4    # "session":Landroid/app/backup/RestoreSession;
    :catchall_46
    move-exception v5

    move-object v3, v4

    .end local v4    # "session":Landroid/app/backup/RestoreSession;
    .restart local v3    # "session":Landroid/app/backup/RestoreSession;
    goto :goto_40

    .line 153
    .end local v3    # "session":Landroid/app/backup/RestoreSession;
    .restart local v4    # "session":Landroid/app/backup/RestoreSession;
    :catch_49
    move-exception v1

    move-object v3, v4

    .end local v4    # "session":Landroid/app/backup/RestoreSession;
    .restart local v3    # "session":Landroid/app/backup/RestoreSession;
    goto :goto_31
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 309
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_17

    .line 311
    :try_start_7
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result-object v1

    .line 316
    :goto_d
    return-object v1

    .line 312
    :catch_e
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "selectBackupTransport() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public setAutoRestore(Z)V
    .registers 5
    .param p1, "isEnabled"    # Z

    .prologue
    .line 244
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 245
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_c

    .line 247
    :try_start_7
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 252
    :cond_c
    :goto_c
    return-void

    .line 248
    :catch_d
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "setAutoRestore() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public setBackupEnabled(Z)V
    .registers 5
    .param p1, "isEnabled"    # Z

    .prologue
    .line 202
    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    .line 203
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_c

    .line 205
    :try_start_7
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 210
    :cond_c
    :goto_c
    return-void

    .line 206
    :catch_d
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManager"

    const-string/jumbo v2, "setBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method
