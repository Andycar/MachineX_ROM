.class public abstract Landroid/os/storage/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"

# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountService"

.field static final TRANSACTION_changeEncryptionPassword:I = 0x1d

.field static final TRANSACTION_changeEncryptionPassword2:I = 0xcb

.field static final TRANSACTION_clearPassword:I = 0x26

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_cryptoMount:I = 0xcc

.field static final TRANSACTION_decryptStorage:I = 0x1b

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_disableStorageEncryption:I = 0xca

.field static final TRANSACTION_encryptStorage:I = 0x1c

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_fixPermissionsSecureContainer:I = 0x22

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_getEncryptionState:I = 0x20

.field static final TRANSACTION_getField:I = 0x28

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getPassword:I = 0x25

.field static final TRANSACTION_getPasswordType:I = 0x24

.field static final TRANSACTION_getPropertyFromFooter:I = 0xd1

.field static final TRANSACTION_getSecureContainerFilesystemPath:I = 0x1f

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getVolumeList:I = 0x1e

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_isEncryptedWithForceEncrypt:I = 0xd2

.field static final TRANSACTION_isExternalStorageEmulated:I = 0x1a

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isStorageFullyEncrypted:I = 0xce

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_mkdirs:I = 0x23

.field static final TRANSACTION_modifyVolumeLocked:I = 0x6a

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_moveDumpstates:I = 0xcf

.field static final TRANSACTION_prepareDecryptOnRecovery:I = 0xc9

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_resizeSecureContainer:I = 0x29

.field static final TRANSACTION_sectrimSecureKeys:I = 0x6b

.field static final TRANSACTION_setField:I = 0x27

.field static final TRANSACTION_setNullSDCardPassword:I = 0xcd

.field static final TRANSACTION_setPropertyIntoFooter:I = 0xd0

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_setVolumeState:I = 0x69

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_verifyEncryptionPassword:I = 0x21


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1234
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1235
    const-string v0, "IMountService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1236
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 1223
    if-nez p0, :cond_4

    .line 1224
    const/4 v0, 0x0

    .line 1230
    :goto_3
    return-object v0

    .line 1226
    :cond_4
    const-string v1, "IMountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1227
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/storage/IMountService;

    if-eqz v1, :cond_13

    .line 1228
    check-cast v0, Landroid/os/storage/IMountService;

    goto :goto_3

    .line 1230
    :cond_13
    new-instance v0, Landroid/os/storage/IMountService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/storage/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 1239
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 55
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1245
    sparse-switch p1, :sswitch_data_6f8

    .line 1761
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_7
    return v5

    .line 1247
    :sswitch_8
    const-string v5, "IMountService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1248
    const/4 v5, 0x1

    goto :goto_7

    .line 1251
    :sswitch_11
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v28

    .line 1254
    .local v28, "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1256
    const/4 v5, 0x1

    goto :goto_7

    .line 1259
    .end local v28    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_2c
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v28

    .line 1262
    .restart local v28    # "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    const/4 v5, 0x1

    goto :goto_7

    .line 1267
    .end local v28    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_47
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    move-result v43

    .line 1269
    .local v43, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    if-eqz v43, :cond_5f

    const/4 v5, 0x1

    :goto_58
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1271
    const/4 v5, 0x1

    goto :goto_7

    .line 1270
    :cond_5f
    const/4 v5, 0x0

    goto :goto_58

    .line 1274
    .end local v43    # "result":Z
    :sswitch_61
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7c

    const/16 v22, 0x1

    .line 1277
    .local v22, "enable":Z
    :goto_70
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    .line 1278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    const/4 v5, 0x1

    goto :goto_7

    .line 1276
    .end local v22    # "enable":Z
    :cond_7c
    const/16 v22, 0x0

    goto :goto_70

    .line 1282
    :sswitch_7f
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    move-result v43

    .line 1284
    .restart local v43    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    if-eqz v43, :cond_98

    const/4 v5, 0x1

    :goto_90
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1286
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1285
    :cond_98
    const/4 v5, 0x0

    goto :goto_90

    .line 1289
    .end local v43    # "result":Z
    :sswitch_9a
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1292
    .local v29, "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v44

    .line 1293
    .local v44, "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1295
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1298
    .end local v29    # "mountPoint":Ljava/lang/String;
    .end local v44    # "resultCode":I
    :sswitch_ba
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1301
    .restart local v29    # "mountPoint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e6

    const/16 v25, 0x1

    .line 1302
    .local v25, "force":Z
    :goto_cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e9

    const/16 v42, 0x1

    .line 1303
    .local v42, "removeEncrypt":Z
    :goto_d5
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v25

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 1304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1301
    .end local v25    # "force":Z
    .end local v42    # "removeEncrypt":Z
    :cond_e6
    const/16 v25, 0x0

    goto :goto_cd

    .line 1302
    .restart local v25    # "force":Z
    :cond_e9
    const/16 v42, 0x0

    goto :goto_d5

    .line 1308
    .end local v25    # "force":Z
    .end local v29    # "mountPoint":Ljava/lang/String;
    :sswitch_ec
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1311
    .restart local v29    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v43

    .line 1312
    .local v43, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1314
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1317
    .end local v29    # "mountPoint":Ljava/lang/String;
    .end local v43    # "result":I
    :sswitch_10c
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .line 1320
    .local v38, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v39

    .line 1321
    .local v39, "pids":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1323
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1326
    .end local v38    # "path":Ljava/lang/String;
    .end local v39    # "pids":[I
    :sswitch_12c
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1329
    .restart local v29    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1330
    .local v45, "state":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    move-object/from16 v0, p3

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1332
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1335
    .end local v29    # "mountPoint":Ljava/lang/String;
    .end local v45    # "state":Ljava/lang/String;
    :sswitch_14c
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1339
    .local v6, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1341
    .local v7, "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1343
    .local v8, "fstype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1345
    .local v9, "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1347
    .local v10, "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_181

    const/4 v11, 0x1

    .local v11, "external":Z
    :goto_16e
    move-object/from16 v5, p0

    .line 1348
    invoke-virtual/range {v5 .. v11}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v44

    .line 1350
    .restart local v44    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1352
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1347
    .end local v11    # "external":Z
    .end local v44    # "resultCode":I
    :cond_181
    const/4 v11, 0x0

    goto :goto_16e

    .line 1355
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "sizeMb":I
    .end local v8    # "fstype":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "ownerUid":I
    :sswitch_183
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1358
    .restart local v6    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v44

    .line 1359
    .restart local v44    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1361
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1364
    .end local v6    # "id":Ljava/lang/String;
    .end local v44    # "resultCode":I
    :sswitch_1a1
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1368
    .restart local v6    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c9

    const/16 v25, 0x1

    .line 1369
    .restart local v25    # "force":Z
    :goto_1b4
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v44

    .line 1370
    .restart local v44    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1371
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1372
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1368
    .end local v25    # "force":Z
    .end local v44    # "resultCode":I
    :cond_1c9
    const/16 v25, 0x0

    goto :goto_1b4

    .line 1375
    .end local v6    # "id":Ljava/lang/String;
    :sswitch_1cc
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1379
    .restart local v6    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1381
    .restart local v9    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1383
    .restart local v10    # "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1fc

    const/16 v40, 0x1

    .line 1384
    .local v40, "readOnly":Z
    :goto_1e7
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v6, v9, v10, v1}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v44

    .line 1385
    .restart local v44    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1386
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1387
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1383
    .end local v40    # "readOnly":Z
    .end local v44    # "resultCode":I
    :cond_1fc
    const/16 v40, 0x0

    goto :goto_1e7

    .line 1390
    .end local v6    # "id":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "ownerUid":I
    :sswitch_1ff
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1394
    .restart local v6    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_227

    const/16 v25, 0x1

    .line 1395
    .restart local v25    # "force":Z
    :goto_212
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v44

    .line 1396
    .restart local v44    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1397
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1398
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1394
    .end local v25    # "force":Z
    .end local v44    # "resultCode":I
    :cond_227
    const/16 v25, 0x0

    goto :goto_212

    .line 1401
    .end local v6    # "id":Ljava/lang/String;
    :sswitch_22a
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1404
    .restart local v6    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v46

    .line 1405
    .local v46, "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1406
    if-eqz v46, :cond_249

    const/4 v5, 0x1

    :goto_241
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1407
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1406
    :cond_249
    const/4 v5, 0x0

    goto :goto_241

    .line 1410
    .end local v6    # "id":Ljava/lang/String;
    .end local v46    # "status":Z
    :sswitch_24b
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1414
    .local v35, "oldId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1415
    .local v33, "newId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v44

    .line 1416
    .restart local v44    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1417
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1418
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1421
    .end local v33    # "newId":Ljava/lang/String;
    .end local v35    # "oldId":Ljava/lang/String;
    .end local v44    # "resultCode":I
    :sswitch_271
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1424
    .local v24, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->sectrimSecureKeys(Ljava/lang/String;)I

    move-result v44

    .line 1425
    .restart local v44    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1426
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1427
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1430
    .end local v24    # "filename":Ljava/lang/String;
    .end local v44    # "resultCode":I
    :sswitch_291
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1433
    .restart local v6    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1434
    .restart local v38    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1435
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1436
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1439
    .end local v6    # "id":Ljava/lang/String;
    .end local v38    # "path":Ljava/lang/String;
    :sswitch_2af
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1440
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v27

    .line 1441
    .local v27, "ids":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1442
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1443
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1446
    .end local v27    # "ids":[Ljava/lang/String;
    :sswitch_2c7
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    move-result-object v16

    .line 1450
    .local v16, "observer":Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    .line 1451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1452
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1455
    .end local v16    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :sswitch_2e3
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    .line 1457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1461
    :sswitch_2f3
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1463
    .local v13, "rawPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1464
    .local v14, "canonicalPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1466
    .restart local v9    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v16

    .line 1468
    .local v16, "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "nonce":I
    move-object/from16 v12, p0

    move-object v15, v9

    .line 1469
    invoke-virtual/range {v12 .. v17}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    .line 1470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1474
    .end local v9    # "key":Ljava/lang/String;
    .end local v13    # "rawPath":Ljava/lang/String;
    .end local v14    # "canonicalPath":Ljava/lang/String;
    .end local v16    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v17    # "nonce":I
    :sswitch_31e
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1478
    .restart local v24    # "filename":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_350

    const/16 v25, 0x1

    .line 1480
    .restart local v25    # "force":Z
    :goto_331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v16

    .line 1482
    .restart local v16    # "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1483
    .restart local v17    # "nonce":I
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 1484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1485
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1478
    .end local v16    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v17    # "nonce":I
    .end local v25    # "force":Z
    :cond_350
    const/16 v25, 0x0

    goto :goto_331

    .line 1488
    .end local v24    # "filename":Ljava/lang/String;
    :sswitch_353
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1491
    .restart local v24    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v46

    .line 1492
    .restart local v46    # "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    if-eqz v46, :cond_374

    const/4 v5, 0x1

    :goto_36c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1494
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1493
    :cond_374
    const/4 v5, 0x0

    goto :goto_36c

    .line 1497
    .end local v24    # "filename":Ljava/lang/String;
    .end local v46    # "status":Z
    :sswitch_376
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1500
    .restart local v24    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1501
    .local v30, "mountedPath":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1502
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1503
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1506
    .end local v24    # "filename":Ljava/lang/String;
    .end local v30    # "mountedPath":Ljava/lang/String;
    :sswitch_396
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1507
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isExternalStorageEmulated()Z

    move-result v21

    .line 1508
    .local v21, "emulated":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1509
    if-eqz v21, :cond_3af

    const/4 v5, 0x1

    :goto_3a7
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1510
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1509
    :cond_3af
    const/4 v5, 0x0

    goto :goto_3a7

    .line 1513
    .end local v21    # "emulated":Z
    :sswitch_3b1
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1515
    .local v37, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->decryptStorage(Ljava/lang/String;)I

    move-result v43

    .line 1516
    .restart local v43    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1517
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1518
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1521
    .end local v37    # "password":Ljava/lang/String;
    .end local v43    # "result":I
    :sswitch_3d1
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v48

    .line 1523
    .local v48, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1524
    .restart local v37    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v48

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->encryptStorage(ILjava/lang/String;)I

    move-result v43

    .line 1525
    .restart local v43    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1526
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1527
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1530
    .end local v37    # "password":Ljava/lang/String;
    .end local v43    # "result":I
    .end local v48    # "type":I
    :sswitch_3f7
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v48

    .line 1532
    .restart local v48    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1533
    .restart local v37    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v48

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->changeEncryptionPassword(ILjava/lang/String;)I

    move-result v43

    .line 1534
    .restart local v43    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1535
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1536
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1539
    .end local v37    # "password":Ljava/lang/String;
    .end local v43    # "result":I
    .end local v48    # "type":I
    :sswitch_41d
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1540
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v43

    .line 1541
    .local v43, "result":[Landroid/os/storage/StorageVolume;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1542
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v43

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1543
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1546
    .end local v43    # "result":[Landroid/os/storage/StorageVolume;
    :sswitch_436
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1549
    .restart local v6    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/storage/IMountService$Stub;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1550
    .restart local v38    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1551
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1552
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1555
    .end local v6    # "id":Ljava/lang/String;
    .end local v38    # "path":Ljava/lang/String;
    :sswitch_454
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1556
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getEncryptionState()I

    move-result v43

    .line 1557
    .local v43, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1559
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1562
    .end local v43    # "result":I
    :sswitch_46c
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1566
    .restart local v6    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 1568
    .local v26, "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1569
    .restart local v24    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/storage/IMountService$Stub;->fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v44

    .line 1570
    .restart local v44    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1571
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1572
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1575
    .end local v6    # "id":Ljava/lang/String;
    .end local v24    # "filename":Ljava/lang/String;
    .end local v26    # "gid":I
    .end local v44    # "resultCode":I
    :sswitch_496
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1577
    .local v18, "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .line 1578
    .restart local v38    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->mkdirs(Ljava/lang/String;Ljava/lang/String;)I

    move-result v43

    .line 1579
    .restart local v43    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1580
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1581
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1585
    .end local v18    # "callingPkg":Ljava/lang/String;
    .end local v38    # "path":Ljava/lang/String;
    .end local v43    # "result":I
    :sswitch_4bc
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .line 1587
    .restart local v38    # "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    .line 1588
    .restart local v45    # "state":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1594
    .end local v38    # "path":Ljava/lang/String;
    .end local v45    # "state":Ljava/lang/String;
    :sswitch_4da
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .line 1598
    .restart local v38    # "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1600
    .local v20, "descriptionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_510

    const/16 v41, 0x1

    .line 1602
    .local v41, "removable":Z
    :goto_4f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 1603
    .local v47, "subsystem":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v20

    move/from16 v3, v41

    move-object/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->modifyVolumeLocked(Ljava/lang/String;IZLjava/lang/String;)I

    move-result v44

    .line 1604
    .restart local v44    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1605
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1606
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1600
    .end local v41    # "removable":Z
    .end local v44    # "resultCode":I
    .end local v47    # "subsystem":Ljava/lang/String;
    :cond_510
    const/16 v41, 0x0

    goto :goto_4f1

    .line 1610
    .end local v20    # "descriptionId":I
    .end local v38    # "path":Ljava/lang/String;
    :sswitch_513
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1611
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPasswordType()I

    move-result v43

    .line 1612
    .restart local v43    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1613
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1614
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1617
    .end local v43    # "result":I
    :sswitch_52b
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1618
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPassword()Ljava/lang/String;

    move-result-object v43

    .line 1619
    .local v43, "result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1620
    move-object/from16 v0, p3

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1621
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1624
    .end local v43    # "result":Ljava/lang/String;
    :sswitch_543
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1625
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->clearPassword()V

    .line 1626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1627
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1630
    :sswitch_553
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1632
    .local v23, "field":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1633
    .local v19, "contents":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1635
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1638
    .end local v19    # "contents":Ljava/lang/String;
    .end local v23    # "field":Ljava/lang/String;
    :sswitch_571
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1640
    .restart local v23    # "field":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1641
    .restart local v19    # "contents":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1642
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1643
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1646
    .end local v19    # "contents":Ljava/lang/String;
    .end local v23    # "field":Ljava/lang/String;
    :sswitch_591
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1650
    .restart local v6    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1652
    .restart local v7    # "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1653
    .restart local v9    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v9}, Landroid/os/storage/IMountService$Stub;->resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v44

    .line 1654
    .restart local v44    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1655
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1656
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1660
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "sizeMb":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v44    # "resultCode":I
    :sswitch_5b7
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v48

    .line 1663
    .restart local v48    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1664
    .restart local v37    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v48

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->prepareDecryptOnRecovery(ILjava/lang/String;)I

    move-result v44

    .line 1665
    .restart local v44    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1666
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1667
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1671
    .end local v37    # "password":Ljava/lang/String;
    .end local v44    # "resultCode":I
    .end local v48    # "type":I
    :sswitch_5dd
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1673
    .restart local v37    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->disableStorageEncryption(Ljava/lang/String;)I

    move-result v43

    .line 1674
    .local v43, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1675
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1676
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1680
    .end local v37    # "password":Ljava/lang/String;
    .end local v43    # "result":I
    :sswitch_5fd
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 1684
    .local v36, "passwd":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .line 1685
    .local v34, "newPasswd":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->changeEncryptionPassword2(Ljava/lang/String;Ljava/lang/String;)I

    move-result v44

    .line 1686
    .restart local v44    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1687
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1688
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1692
    .end local v34    # "newPasswd":Ljava/lang/String;
    .end local v36    # "passwd":Ljava/lang/String;
    .end local v44    # "resultCode":I
    :sswitch_623
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1694
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 1696
    .restart local v36    # "passwd":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1697
    .local v31, "mountpoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->cryptoMount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v44

    .line 1698
    .restart local v44    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1699
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1700
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1704
    .end local v31    # "mountpoint":Ljava/lang/String;
    .end local v36    # "passwd":Ljava/lang/String;
    .end local v44    # "resultCode":I
    :sswitch_649
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 1706
    .restart local v37    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setNullSDCardPassword(Ljava/lang/String;)I

    move-result v43

    .line 1707
    .restart local v43    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1708
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1709
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1713
    .end local v37    # "password":Ljava/lang/String;
    .end local v43    # "result":I
    :sswitch_669
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1714
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isStorageFullyEncrypted()I

    move-result v43

    .line 1715
    .restart local v43    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1716
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1717
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1721
    .end local v43    # "result":I
    :sswitch_681
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1722
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->moveDumpstates()I

    move-result v43

    .line 1723
    .restart local v43    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1724
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1725
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1729
    .end local v43    # "result":I
    :sswitch_699
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1733
    .local v32, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .line 1734
    .local v49, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v43

    .line 1735
    .restart local v43    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1736
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1737
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1742
    .end local v32    # "name":Ljava/lang/String;
    .end local v43    # "result":I
    .end local v49    # "value":Ljava/lang/String;
    :sswitch_6bf
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1745
    .restart local v32    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getPropertyFromFooter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1746
    .local v43, "result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1747
    move-object/from16 v0, p3

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1748
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1753
    .end local v32    # "name":Ljava/lang/String;
    .end local v43    # "result":Ljava/lang/String;
    :sswitch_6df
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1754
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isEncryptedWithForceEncrypt()I

    move-result v43

    .line 1755
    .local v43, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1757
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1245
    nop

    :sswitch_data_6f8
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_47
        0x4 -> :sswitch_61
        0x5 -> :sswitch_7f
        0x6 -> :sswitch_9a
        0x7 -> :sswitch_ba
        0x8 -> :sswitch_ec
        0x9 -> :sswitch_10c
        0xa -> :sswitch_12c
        0xb -> :sswitch_14c
        0xc -> :sswitch_183
        0xd -> :sswitch_1a1
        0xe -> :sswitch_1cc
        0xf -> :sswitch_1ff
        0x10 -> :sswitch_22a
        0x11 -> :sswitch_24b
        0x12 -> :sswitch_291
        0x13 -> :sswitch_2af
        0x14 -> :sswitch_2c7
        0x15 -> :sswitch_2e3
        0x16 -> :sswitch_2f3
        0x17 -> :sswitch_31e
        0x18 -> :sswitch_353
        0x19 -> :sswitch_376
        0x1a -> :sswitch_396
        0x1b -> :sswitch_3b1
        0x1c -> :sswitch_3d1
        0x1d -> :sswitch_3f7
        0x1e -> :sswitch_41d
        0x1f -> :sswitch_436
        0x20 -> :sswitch_454
        0x22 -> :sswitch_46c
        0x23 -> :sswitch_496
        0x24 -> :sswitch_513
        0x25 -> :sswitch_52b
        0x26 -> :sswitch_543
        0x27 -> :sswitch_553
        0x28 -> :sswitch_571
        0x29 -> :sswitch_591
        0x69 -> :sswitch_4bc
        0x6a -> :sswitch_4da
        0x6b -> :sswitch_271
        0xc9 -> :sswitch_5b7
        0xca -> :sswitch_5dd
        0xcb -> :sswitch_5fd
        0xcc -> :sswitch_623
        0xcd -> :sswitch_649
        0xce -> :sswitch_669
        0xcf -> :sswitch_681
        0xd0 -> :sswitch_699
        0xd1 -> :sswitch_6bf
        0xd2 -> :sswitch_6df
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
