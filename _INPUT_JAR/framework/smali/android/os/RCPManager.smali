.class public Landroid/os/RCPManager;
.super Ljava/lang/Object;
.source "RCPManager.java"


# static fields
.field public static final ERROR:I = -0x14d

.field private static final TAG:Ljava/lang/String; = "RCPManager"


# instance fields
.field mService:Landroid/os/IRCPManager;


# direct methods
.method public constructor <init>(Landroid/os/IRCPManager;)V
    .registers 2
    .param p1, "service"    # Landroid/os/IRCPManager;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    .line 136
    return-void
.end method


# virtual methods
.method public cancelCopyChunks(J)V
    .registers 4
    .param p1, "sessionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_9

    .line 345
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->cancelCopyChunks(J)V

    .line 347
    :cond_9
    return-void
.end method

.method public changePermissionMigration(Ljava/lang/String;III)I
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_b

    .line 307
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IRCPManager;->changePermissionMigration(Ljava/lang/String;III)I

    move-result v0

    .line 309
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public checkSAccount(Ljava/lang/String;Landroid/content/ISAccountCallback;)V
    .registers 6
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/ISAccountCallback;

    .prologue
    .line 230
    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IRCPManager;->checkSAccount(Ljava/lang/String;Landroid/content/ISAccountCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 235
    :goto_5
    return-void

    .line 231
    :catch_6
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to checkSAccount."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public checkSAccountPassword(Ljava/lang/String;Landroid/content/ISAccountCallback;)V
    .registers 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/ISAccountCallback;

    .prologue
    .line 239
    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IRCPManager;->checkSAccountPassword(Ljava/lang/String;Landroid/content/ISAccountCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 244
    :goto_5
    return-void

    .line 240
    :catch_6
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to checkSAccountPassword."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .registers 22
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .param p5, "offset"    # J
    .param p7, "length"    # I
    .param p8, "sessionId"    # J
    .param p10, "deleteSrc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_17

    .line 337
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Landroid/os/IRCPManager;->copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I

    move-result v0

    .line 340
    :goto_16
    return v0

    :cond_17
    const/16 v0, -0x14d

    goto :goto_16
.end method

.method public copyClipboardFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "permissions"    # I

    .prologue
    .line 195
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_16

    .line 197
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IRCPManager;->copyClipboardFile(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 203
    :goto_a
    return v1

    .line 198
    :catch_b
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to save clipboard sandbox."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .registers 8
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_41

    .line 417
    const-string v0, "RCPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFile: srcContainerId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " srcFilePath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " destContainerId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " destFilePath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IRCPManager;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 421
    :goto_40
    return v0

    :cond_41
    const/4 v0, -0x1

    goto :goto_40
.end method

.method public copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I
    .registers 6
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_b

    .line 289
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IRCPManager;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 291
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public deleteClipboardFile(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_9

    .line 209
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->deleteClipboardFile(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 215
    :cond_9
    :goto_9
    return-void

    .line 210
    :catch_a
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to deleteClipboardFile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_b

    .line 355
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->deleteFile(Ljava/lang/String;I)Z

    move-result v0

    .line 357
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 370
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_f

    .line 372
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, v0, p2, p3}, Landroid/os/IRCPManager;->exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 375
    .end local v0    # "pkgName":Ljava/lang/String;
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public executeCommandForPersona(Landroid/app/Command;)V
    .registers 5
    .param p1, "command"    # Landroid/app/Command;

    .prologue
    .line 184
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_9

    .line 186
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->executeCommandForPersona(Landroid/app/Command;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 192
    :cond_9
    :goto_9
    return-void

    .line 187
    :catch_a
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to switch persona."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    .registers 5
    .param p1, "contactRefUriAsString"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_16

    .line 274
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 280
    :goto_a
    return-object v1

    .line 275
    :catch_b
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to get getCallerInfo(). "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 280
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_b

    .line 329
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 331
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_b

    .line 322
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 324
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .registers 4

    .prologue
    .line 260
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_16

    .line 262
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1}, Landroid/os/IRCPManager;->getRCPInterface()Landroid/content/IRCPInterface;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 268
    :goto_a
    return-object v1

    .line 263
    :catch_b
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to get RCPInterface from getRCPInterface()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 268
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRCPProxy()Landroid/content/IRCPGlobalContactsDir;
    .registers 4

    .prologue
    .line 247
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_16

    .line 249
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1}, Landroid/os/IRCPManager;->getRCPProxy()Landroid/content/IRCPGlobalContactsDir;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 255
    :goto_a
    return-object v1

    .line 250
    :catch_b
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to get IRCPGlobalContactsDir from getRCPProxy()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 255
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getUsersToSyncFrom(Ljava/lang/String;)[I
    .registers 5
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_16

    .line 152
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->getUsersToSyncFrom(Ljava/lang/String;)[I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 158
    :goto_a
    return-object v1

    .line 153
    :catch_b
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to set up the sandbox."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 158
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageLabel"    # Ljava/lang/String;
    .param p4, "shortcutIcon"    # Landroid/graphics/Bitmap;
    .param p5, "shortcutIntentUri"    # Ljava/lang/String;
    .param p6, "createOrRemove"    # Ljava/lang/String;

    .prologue
    .line 389
    const-string v0, "RCPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " in createShortcut() for packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_31

    .line 392
    :try_start_26
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/IRCPManager;->handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_31} :catch_32

    .line 399
    :cond_31
    :goto_31
    return-void

    .line 394
    :catch_32
    move-exception v7

    .line 395
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "RCPManager"

    const-string v1, "RemoteException trying to get createShortcut(). "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_31
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_b

    .line 315
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->isFileExist(Ljava/lang/String;I)Z

    move-result v0

    .line 317
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .registers 6
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_b

    .line 297
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IRCPManager;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 299
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public moveFilesForApp(ILjava/util/List;Ljava/util/List;)J
    .registers 6
    .param p1, "requestApp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 435
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_b

    .line 436
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IRCPManager;->moveFilesForApp(ILjava/util/List;Ljava/util/List;)J

    move-result-wide v0

    .line 438
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method public queryAllProviders(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 17
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/CustomCursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_36

    .line 55
    :try_start_4
    const-string v0, "RCPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "My Context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/os/IRCPManager;->queryAllProviders(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_29} :catch_2b

    move-result-object v0

    .line 63
    :goto_2a
    return-object v0

    .line 58
    :catch_2b
    move-exception v8

    .line 59
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "RCPManager"

    const-string v1, "RemoteException trying to query provider  queryAllProviders()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 63
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_36
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;
    .registers 17
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_36

    .line 39
    :try_start_4
    const-string v0, "RCPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "My Context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/os/IRCPManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_29} :catch_2b

    move-result-object v0

    .line 47
    :goto_2a
    return-object v0

    .line 42
    :catch_2b
    move-exception v8

    .line 43
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "RCPManager"

    const-string v1, "RemoteException trying to query provider  queryProvider"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 47
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_36
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public refreshClipboard()V
    .registers 4

    .prologue
    .line 218
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_9

    .line 220
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1}, Landroid/os/IRCPManager;->refreshClipboard()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 226
    :cond_9
    :goto_9
    return-void

    .line 221
    :catch_a
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to refresh clipboard."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public registerCommandExe(Landroid/content/ICommandExeCallBack;)V
    .registers 6
    .param p1, "callback"    # Landroid/content/ICommandExeCallBack;

    .prologue
    .line 92
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_23

    .line 94
    :try_start_4
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-eqz p1, :cond_24

    .line 96
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->registerCommandExe(Landroid/content/ICommandExeCallBack;)V

    .line 106
    :cond_23
    :goto_23
    return-void

    .line 98
    :cond_24
    const-string v1, "RCPManager"

    const-string/jumbo v2, "registerCommandExe callback object is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2c} :catch_2d

    goto :goto_23

    .line 100
    :catch_2d
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to register command executor callback registerSync"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_23
.end method

.method public registerExchangeData(Landroid/content/Context;Landroid/os/IRunnableCallback;)Z
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "cb"    # Landroid/os/IRunnableCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 361
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_f

    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, v0, p2}, Landroid/os/IRCPManager;->registerExchangeData(Ljava/lang/String;Landroid/os/IRunnableCallback;)Z

    move-result v1

    .line 366
    .end local v0    # "pkgName":Ljava/lang/String;
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public registerMonitorCb(Landroid/content/Context;Landroid/os/IRunnableCallback;)Z
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "cb"    # Landroid/os/IRunnableCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_f

    .line 381
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, v0, p2}, Landroid/os/IRCPManager;->registerMonitorCb(Ljava/lang/String;Landroid/os/IRunnableCallback;)Z

    move-result v1

    .line 384
    .end local v0    # "pkgName":Ljava/lang/String;
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x1

    goto :goto_e
.end method

.method public registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;)V
    .registers 7
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "mProvider"    # Landroid/content/IProviderCallBack;

    .prologue
    .line 67
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_21

    .line 69
    :try_start_4
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IRCPManager;->registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_22

    .line 76
    :cond_21
    :goto_21
    return-void

    .line 71
    :catch_22
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to register provider callback registerProvider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_21
.end method

.method public registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;)V
    .registers 6
    .param p1, "globalContactsDir"    # Landroid/content/IRCPGlobalContactsDir;

    .prologue
    .line 109
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_21

    .line 111
    :try_start_4
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_22

    .line 118
    :cond_21
    :goto_21
    return-void

    .line 113
    :catch_22
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to register globalContactsDir"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_21
.end method

.method public registerRCPInterface(Landroid/content/IRCPInterface;)V
    .registers 6
    .param p1, "rcpInterface"    # Landroid/content/IRCPInterface;

    .prologue
    .line 122
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_22

    .line 124
    :try_start_4
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerRCPInterface(): My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->registerRCPInterface(Landroid/content/IRCPInterface;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_22} :catch_23

    .line 131
    :cond_22
    :goto_22
    return-void

    .line 126
    :catch_23
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string/jumbo v2, "registerRCPInterface: RemoteException trying to register rcpInterface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_22
.end method

.method public registerSync(Landroid/content/ISyncCallBack;)V
    .registers 6
    .param p1, "callback"    # Landroid/content/ISyncCallBack;

    .prologue
    .line 80
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_21

    .line 82
    :try_start_4
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->registerSync(Landroid/content/ISyncCallBack;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_22

    .line 89
    :cond_21
    :goto_21
    return-void

    .line 84
    :catch_22
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to register sync callback registerSync"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_21
.end method

.method public saveSharedSandbox(I)V
    .registers 5
    .param p1, "toUser"    # I

    .prologue
    .line 173
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_9

    .line 175
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->saveSharedSandbox(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 181
    :cond_9
    :goto_9
    return-void

    .line 176
    :catch_a
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to save clipboard sandbox."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public setupClipbardSandbox()V
    .registers 4

    .prologue
    .line 162
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_9

    .line 164
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1}, Landroid/os/IRCPManager;->setupClipbardSandbox()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 170
    :cond_9
    :goto_9
    return-void

    .line 165
    :catch_a
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to set up the sandbox."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public switchPersona(I)V
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 139
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_9

    .line 141
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->switchPersona(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 147
    :cond_9
    :goto_9
    return-void

    .line 142
    :catch_a
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to switch persona."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method
