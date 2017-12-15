.class Landroid/ktuca/IKtUcaIF$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKtUcaIF.java"

# interfaces
.implements Landroid/ktuca/IKtUcaIF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ktuca/IKtUcaIF$Stub;
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
    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    iput-object p1, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 653
    return-void
.end method


# virtual methods
.method public KUCA_CHInit(B[B[I)J
    .registers 11
    .param p1, "ucatag"    # B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1202
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1205
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1207
    if-nez p2, :cond_38

    .line 1208
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    :goto_16
    if-nez p3, :cond_45

    .line 1214
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    :goto_1c
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x13

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1220
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1221
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1222
    .local v2, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1223
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_3d

    .line 1226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1229
    return-wide v2

    .line 1211
    .end local v2    # "_result":J
    :cond_38
    :try_start_38
    array-length v4, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3d

    goto :goto_16

    .line 1226
    :catchall_3d
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 1217
    :cond_45
    :try_start_45
    array-length v4, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_3d

    goto :goto_1c
.end method

.method public KUCA_Close([BB)J
    .registers 10
    .param p1, "handle"    # [B
    .param p2, "channel"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1126
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1129
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1131
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1132
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1133
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1134
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_29

    move-result-wide v2

    .line 1137
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1140
    return-wide v2

    .line 1137
    .end local v2    # "_result":J
    :catchall_29
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public KUCA_CloseT([BB)J
    .registers 10
    .param p1, "appId"    # [B
    .param p2, "channel"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1354
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1357
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1359
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1360
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x19

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1361
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1362
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_29

    move-result-wide v2

    .line 1365
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1368
    return-wide v2

    .line 1365
    .end local v2    # "_result":J
    :catchall_29
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public KUCA_KUH_Establish(B)J
    .registers 9
    .param p1, "ucatag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1252
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1255
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1256
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1257
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x15

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1258
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1259
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    move-result-wide v2

    .line 1262
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1265
    return-wide v2

    .line 1262
    .end local v2    # "_result":J
    :catchall_26
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public KUCA_KUH_Release(B)J
    .registers 9
    .param p1, "ucatag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1270
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1273
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1275
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x16

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1276
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1277
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    move-result-wide v2

    .line 1280
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1283
    return-wide v2

    .line 1280
    .end local v2    # "_result":J
    :catchall_26
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public KUCA_KUH_Transmit(B[BI[B[I)J
    .registers 13
    .param p1, "ucatag"    # B
    .param p2, "pbSendBuffer"    # [B
    .param p3, "cbSendLength"    # I
    .param p4, "pbRecvBuffer"    # [B
    .param p5, "pcbRecvLength"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1288
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1291
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1293
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1294
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1295
    if-nez p4, :cond_3e

    .line 1296
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1301
    :goto_1c
    if-nez p5, :cond_4b

    .line 1302
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1307
    :goto_22
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x17

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1308
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1309
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1310
    .local v2, "_result":J
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1311
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_43

    .line 1314
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1317
    return-wide v2

    .line 1299
    .end local v2    # "_result":J
    :cond_3e
    :try_start_3e
    array-length v4, p4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_43

    goto :goto_1c

    .line 1314
    :catchall_43
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 1305
    :cond_4b
    :try_start_4b
    array-length v4, p5

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_43

    goto :goto_22
.end method

.method public KUCA_Open([B[B[I)J
    .registers 11
    .param p1, "handle"    # [B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1060
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1063
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1065
    if-nez p2, :cond_38

    .line 1066
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1071
    :goto_16
    if-nez p3, :cond_45

    .line 1072
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1077
    :goto_1c
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1078
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1079
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1080
    .local v2, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1081
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_3d

    .line 1084
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1087
    return-wide v2

    .line 1069
    .end local v2    # "_result":J
    :cond_38
    :try_start_38
    array-length v4, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3d

    goto :goto_16

    .line 1084
    :catchall_3d
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 1075
    :cond_45
    :try_start_45
    array-length v4, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_3d

    goto :goto_1c
.end method

.method public KUCA_OpenT([B[B[I)J
    .registers 11
    .param p1, "appId"    # [B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1322
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1325
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1327
    if-nez p2, :cond_38

    .line 1328
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1333
    :goto_16
    if-nez p3, :cond_45

    .line 1334
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1339
    :goto_1c
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1340
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1341
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1342
    .local v2, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1343
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_3d

    .line 1346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1349
    return-wide v2

    .line 1331
    .end local v2    # "_result":J
    :cond_38
    :try_start_38
    array-length v4, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3d

    goto :goto_16

    .line 1346
    :catchall_3d
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 1337
    :cond_45
    :try_start_45
    array-length v4, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_3d

    goto :goto_1c
.end method

.method public KUCA_Transmit([B[BI[B[I)J
    .registers 13
    .param p1, "handle"    # [B
    .param p2, "input"    # [B
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1091
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1092
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1095
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1097
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1098
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1099
    if-nez p4, :cond_3e

    .line 1100
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    :goto_1c
    if-nez p5, :cond_4b

    .line 1106
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    :goto_22
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1112
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1113
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1114
    .local v2, "_result":J
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1115
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_43

    .line 1118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1121
    return-wide v2

    .line 1103
    .end local v2    # "_result":J
    :cond_3e
    :try_start_3e
    array-length v4, p4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_43

    goto :goto_1c

    .line 1118
    :catchall_43
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 1109
    :cond_4b
    :try_start_4b
    array-length v4, p5

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_43

    goto :goto_22
.end method

.method public KUCA_UCAVersion([B[B[I)J
    .registers 11
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1170
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1173
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1175
    if-nez p2, :cond_38

    .line 1176
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    :goto_16
    if-nez p3, :cond_45

    .line 1182
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    :goto_1c
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x12

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1188
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1189
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1190
    .local v2, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1191
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_3d

    .line 1194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1197
    return-wide v2

    .line 1179
    .end local v2    # "_result":J
    :cond_38
    :try_start_38
    array-length v4, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3d

    goto :goto_16

    .line 1194
    :catchall_3d
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 1185
    :cond_45
    :try_start_45
    array-length v4, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_3d

    goto :goto_1c
.end method

.method public KUCA_getHandle([B[B[B[B[I)J
    .registers 13
    .param p1, "callerId"    # [B
    .param p2, "preKey"    # [B
    .param p3, "appId"    # [B
    .param p4, "handle"    # [B
    .param p5, "handleLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 699
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 702
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 704
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 705
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 706
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 707
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 708
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 709
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 710
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 711
    .local v2, "_result":J
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 712
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_37

    .line 715
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 718
    return-wide v2

    .line 715
    .end local v2    # "_result":J
    :catchall_37
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public KUCA_getICCID([B[B[II[B)J
    .registers 13
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 791
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 794
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 795
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 796
    if-nez p2, :cond_3d

    .line 797
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    :goto_16
    if-nez p3, :cond_4a

    .line 803
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    :goto_1c
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 810
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 811
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 812
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 813
    .local v2, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 814
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_42

    .line 817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 820
    return-wide v2

    .line 800
    .end local v2    # "_result":J
    :cond_3d
    :try_start_3d
    array-length v4, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_42

    goto :goto_16

    .line 817
    :catchall_42
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 806
    :cond_4a
    :try_start_4a
    array-length v4, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_42

    goto :goto_1c
.end method

.method public KUCA_getIMSI([B[B[II[B)J
    .registers 13
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 757
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 760
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 761
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 762
    if-nez p2, :cond_3d

    .line 763
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    :goto_16
    if-nez p3, :cond_4a

    .line 769
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    :goto_1c
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 776
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 777
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 778
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 779
    .local v2, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 780
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_42

    .line 783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 786
    return-wide v2

    .line 766
    .end local v2    # "_result":J
    :cond_3d
    :try_start_3d
    array-length v4, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_42

    goto :goto_16

    .line 783
    :catchall_42
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 772
    :cond_4a
    :try_start_4a
    array-length v4, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_42

    goto :goto_1c
.end method

.method public KUCA_getMDN([B[B[II[B)J
    .registers 13
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 859
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 862
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 863
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 864
    if-nez p2, :cond_3e

    .line 865
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    :goto_16
    if-nez p3, :cond_4b

    .line 871
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    :goto_1c
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 878
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 879
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 880
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 881
    .local v2, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 882
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_43

    .line 885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 888
    return-wide v2

    .line 868
    .end local v2    # "_result":J
    :cond_3e
    :try_start_3e
    array-length v4, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_43

    goto :goto_16

    .line 885
    :catchall_43
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 874
    :cond_4b
    :try_start_4b
    array-length v4, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_43

    goto :goto_1c
.end method

.method public KUCA_getMODEL([B[B[II[B)J
    .registers 13
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 892
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 893
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 896
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 897
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 898
    if-nez p2, :cond_3e

    .line 899
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    :goto_16
    if-nez p3, :cond_4b

    .line 905
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    :goto_1c
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 912
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 913
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 914
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 915
    .local v2, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 916
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_43

    .line 919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 922
    return-wide v2

    .line 902
    .end local v2    # "_result":J
    :cond_3e
    :try_start_3e
    array-length v4, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_43

    goto :goto_16

    .line 919
    :catchall_43
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 908
    :cond_4b
    :try_start_4b
    array-length v4, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_43

    goto :goto_1c
.end method

.method public KUCA_getMSISDN([B[B[II[B)J
    .registers 13
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 723
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 726
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 727
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 728
    if-nez p2, :cond_3d

    .line 729
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    :goto_16
    if-nez p3, :cond_4a

    .line 735
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    :goto_1c
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 742
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 743
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 744
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 745
    .local v2, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 746
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_42

    .line 749
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 752
    return-wide v2

    .line 732
    .end local v2    # "_result":J
    :cond_3d
    :try_start_3d
    array-length v4, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_42

    goto :goto_16

    .line 749
    :catchall_42
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 738
    :cond_4a
    :try_start_4a
    array-length v4, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_42

    goto :goto_1c
.end method

.method public KUCA_getPUID([B[B[II[B)J
    .registers 13
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 825
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 828
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 830
    if-nez p2, :cond_3d

    .line 831
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    :goto_16
    if-nez p3, :cond_4a

    .line 837
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    :goto_1c
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 844
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 845
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 846
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 847
    .local v2, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 848
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_42

    .line 851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 854
    return-wide v2

    .line 834
    .end local v2    # "_result":J
    :cond_3d
    :try_start_3d
    array-length v4, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_42

    goto :goto_16

    .line 851
    :catchall_42
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 840
    :cond_4a
    :try_start_4a
    array-length v4, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_42

    goto :goto_1c
.end method

.method public KUCA_getPinStatus([BI[B[I)J
    .registers 12
    .param p1, "handle"    # [B
    .param p2, "pinId"    # I
    .param p3, "output"    # [B
    .param p4, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 993
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 996
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 998
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 999
    if-nez p3, :cond_3b

    .line 1000
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    :goto_19
    if-nez p4, :cond_48

    .line 1006
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1011
    :goto_1f
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1012
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1013
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1014
    .local v2, "_result":J
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1015
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_40

    .line 1018
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1021
    return-wide v2

    .line 1003
    .end local v2    # "_result":J
    :cond_3b
    :try_start_3b
    array-length v4, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_40

    goto :goto_19

    .line 1018
    :catchall_40
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 1009
    :cond_48
    :try_start_48
    array-length v4, p4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_40

    goto :goto_1f
.end method

.method public KUCA_getSIMInfo([B[B[I)J
    .registers 11
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 927
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 930
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 932
    if-nez p2, :cond_38

    .line 933
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 938
    :goto_16
    if-nez p3, :cond_45

    .line 939
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 944
    :goto_1c
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 945
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 946
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 947
    .local v2, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 948
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_3d

    .line 951
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 954
    return-wide v2

    .line 936
    .end local v2    # "_result":J
    :cond_38
    :try_start_38
    array-length v4, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3d

    goto :goto_16

    .line 951
    :catchall_3d
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 942
    :cond_45
    :try_start_45
    array-length v4, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_3d

    goto :goto_1c
.end method

.method public KUCA_getSimStatus([B[B)J
    .registers 10
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1145
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1148
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1150
    if-nez p2, :cond_2f

    .line 1151
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1156
    :goto_16
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x11

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1157
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1158
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1159
    .local v2, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_34

    .line 1162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1165
    return-wide v2

    .line 1154
    .end local v2    # "_result":J
    :cond_2f
    :try_start_2f
    array-length v4, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_34

    goto :goto_16

    .line 1162
    :catchall_34
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public KUCA_printCHInfo(B)J
    .registers 9
    .param p1, "ucatag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1234
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1239
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1241
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    move-result-wide v2

    .line 1244
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1247
    return-wide v2

    .line 1244
    .end local v2    # "_result":J
    :catchall_26
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public KUCA_usimAUTH([B[B[B[B[I)J
    .registers 13
    .param p1, "handle"    # [B
    .param p2, "rand"    # [B
    .param p3, "autn"    # [B
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 958
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 959
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 962
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 963
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 964
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 965
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 966
    if-nez p4, :cond_3e

    .line 967
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    :goto_1c
    if-nez p5, :cond_4b

    .line 973
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 978
    :goto_22
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 979
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 980
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 981
    .local v2, "_result":J
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 982
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_43

    .line 985
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 988
    return-wide v2

    .line 970
    .end local v2    # "_result":J
    :cond_3e
    :try_start_3e
    array-length v4, p4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_43

    goto :goto_1c

    .line 985
    :catchall_43
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 976
    :cond_4b
    :try_start_4b
    array-length v4, p5

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_43

    goto :goto_22
.end method

.method public KUCA_verifyPin([BILjava/lang/String;[B[I)J
    .registers 13
    .param p1, "handle"    # [B
    .param p2, "pinId"    # I
    .param p3, "pinCode"    # Ljava/lang/String;
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1026
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1029
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1031
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1033
    if-nez p4, :cond_3e

    .line 1034
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    :goto_1c
    if-nez p5, :cond_4b

    .line 1040
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    :goto_22
    iget-object v4, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1046
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1047
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1048
    .local v2, "_result":J
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1049
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_43

    .line 1052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1055
    return-wide v2

    .line 1037
    .end local v2    # "_result":J
    :cond_3e
    :try_start_3e
    array-length v4, p4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_43

    goto :goto_1c

    .line 1052
    :catchall_43
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4

    .line 1043
    :cond_4b
    :try_start_4b
    array-length v4, p5

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_43

    goto :goto_22
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 656
    iget-object v0, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 660
    const-string v0, "android.ktuca.IKtUcaIF"

    return-object v0
.end method

.method public getResource()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 665
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 668
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 669
    iget-object v3, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 670
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 671
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    move-result v2

    .line 674
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 677
    return v2

    .line 674
    .end local v2    # "_result":I
    :catchall_22
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public releaseResource()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 682
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 685
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 686
    iget-object v3, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 687
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 688
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    move-result v2

    .line 691
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 694
    return v2

    .line 691
    .end local v2    # "_result":I
    :catchall_22
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
