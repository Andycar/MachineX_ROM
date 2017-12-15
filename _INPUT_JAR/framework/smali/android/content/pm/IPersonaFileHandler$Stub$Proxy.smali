.class Landroid/content/pm/IPersonaFileHandler$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPersonaFileHandler.java"

# interfaces
.implements Landroid/content/pm/IPersonaFileHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPersonaFileHandler$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Landroid/content/pm/IPersonaFileHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 157
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Landroid/content/pm/IPersonaFileHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public changeEncryptionKey(ILjava/lang/String;Ljava/lang/String;ZI)Z
    .registers 13
    .param p1, "personaId"    # I
    .param p2, "oldKey"    # Ljava/lang/String;
    .param p3, "newKey"    # Ljava/lang/String;
    .param p4, "isSecureStorageEnabled"    # Z
    .param p5, "timaEcrytfsIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 271
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 274
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.content.pm.IPersonaFileHandler"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    if-eqz p4, :cond_38

    move v4, v2

    :goto_1b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-object v4, p0, Landroid/content/pm/IPersonaFileHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 281
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 282
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_3c

    move-result v4

    if-eqz v4, :cond_3a

    .line 285
    .local v2, "_result":Z
    :goto_31
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 288
    return v2

    .end local v2    # "_result":Z
    :cond_38
    move v4, v3

    .line 278
    goto :goto_1b

    :cond_3a
    move v2, v3

    .line 282
    goto :goto_31

    .line 285
    :catchall_3c
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public createPartition(ILjava/lang/String;ZI)Z
    .registers 12
    .param p1, "personaId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "isSecureStorageEnabled"    # Z
    .param p4, "timaEcrytfsIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 169
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 172
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.content.pm.IPersonaFileHandler"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    if-eqz p3, :cond_35

    move v4, v2

    :goto_18
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v4, p0, Landroid/content/pm/IPersonaFileHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 178
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_39

    move-result v4

    if-eqz v4, :cond_37

    .line 182
    .local v2, "_result":Z
    :goto_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    return v2

    .end local v2    # "_result":Z
    :cond_35
    move v4, v3

    .line 175
    goto :goto_18

    :cond_37
    move v2, v3

    .line 179
    goto :goto_2e

    .line 182
    :catchall_39
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    const-string v0, "android.content.pm.IPersonaFileHandler"

    return-object v0
.end method

.method public isEncrypted(I)Z
    .registers 8
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 293
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 296
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.content.pm.IPersonaFileHandler"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-object v3, p0, Landroid/content/pm/IPersonaFileHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 300
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_29

    move-result v3

    if-eqz v3, :cond_22

    const/4 v2, 0x1

    .line 303
    .local v2, "_result":Z
    :cond_22
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 306
    return v2

    .line 303
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public mount(ILjava/lang/String;ZI)Z
    .registers 12
    .param p1, "personaId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "isSecureStorageEnabled"    # Z
    .param p4, "timaEcrytfsIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 209
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 212
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.content.pm.IPersonaFileHandler"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    if-eqz p3, :cond_35

    move v4, v2

    :goto_18
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-object v4, p0, Landroid/content/pm/IPersonaFileHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_39

    move-result v4

    if-eqz v4, :cond_37

    .line 222
    .local v2, "_result":Z
    :goto_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    return v2

    .end local v2    # "_result":Z
    :cond_35
    move v4, v3

    .line 215
    goto :goto_18

    :cond_37
    move v2, v3

    .line 219
    goto :goto_2e

    .line 222
    :catchall_39
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public mountFS(ILjava/lang/String;ZIZ)Z
    .registers 13
    .param p1, "personaId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "isSecureStorageEnabled"    # Z
    .param p4, "timaEcrytfsIndex"    # I
    .param p5, "sdpEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 231
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 234
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.content.pm.IPersonaFileHandler"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    if-eqz p3, :cond_3b

    move v4, v2

    :goto_18
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    if-eqz p5, :cond_3d

    move v4, v2

    :goto_21
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-object v4, p0, Landroid/content/pm/IPersonaFileHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 242
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_41

    move-result v4

    if-eqz v4, :cond_3f

    .line 245
    .local v2, "_result":Z
    :goto_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 248
    return v2

    .end local v2    # "_result":Z
    :cond_3b
    move v4, v3

    .line 237
    goto :goto_18

    :cond_3d
    move v4, v3

    .line 239
    goto :goto_21

    :cond_3f
    move v2, v3

    .line 242
    goto :goto_34

    .line 245
    :catchall_41
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public removePartition(IZ)Z
    .registers 10
    .param p1, "personaId"    # I
    .param p2, "isSecureStorageEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 190
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 193
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.content.pm.IPersonaFileHandler"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    if-eqz p2, :cond_2f

    move v4, v2

    :goto_15
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object v4, p0, Landroid/content/pm/IPersonaFileHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 197
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 198
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_33

    move-result v4

    if-eqz v4, :cond_31

    .line 201
    .local v2, "_result":Z
    :goto_28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 204
    return v2

    .end local v2    # "_result":Z
    :cond_2f
    move v4, v3

    .line 195
    goto :goto_15

    :cond_31
    move v2, v3

    .line 198
    goto :goto_28

    .line 201
    :catchall_33
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public unmount(I)Z
    .registers 8
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 256
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.content.pm.IPersonaFileHandler"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-object v3, p0, Landroid/content/pm/IPersonaFileHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 259
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_29

    move-result v3

    if-eqz v3, :cond_22

    const/4 v2, 0x1

    .line 263
    .local v2, "_result":Z
    :cond_22
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    return v2

    .line 263
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
