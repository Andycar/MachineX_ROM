.class public abstract Landroid/bluetooth/IBluetoothGatt$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGatt"

.field static final TRANSACTION_addCharacteristic:I = 0x1d

.field static final TRANSACTION_addDescriptor:I = 0x1e

.field static final TRANSACTION_addIncludedService:I = 0x1c

.field static final TRANSACTION_beginReliableWrite:I = 0x12

.field static final TRANSACTION_beginServiceDeclaration:I = 0x1b

.field static final TRANSACTION_clearServices:I = 0x21

.field static final TRANSACTION_clientConnect:I = 0x9

.field static final TRANSACTION_clientDisconnect:I = 0xa

.field static final TRANSACTION_configureMTU:I = 0x15

.field static final TRANSACTION_connectionParameterUpdate:I = 0x16

.field static final TRANSACTION_discoverServices:I = 0xc

.field static final TRANSACTION_endReliableWrite:I = 0x13

.field static final TRANSACTION_endServiceDeclaration:I = 0x1f

.field static final TRANSACTION_flushPendingBatchResults:I = 0x4

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x1

.field static final TRANSACTION_monitorRssi:I = 0x24

.field static final TRANSACTION_readCharacteristic:I = 0xd

.field static final TRANSACTION_readDescriptor:I = 0xf

.field static final TRANSACTION_readRemoteRssi:I = 0x14

.field static final TRANSACTION_refreshDevice:I = 0xb

.field static final TRANSACTION_registerClient:I = 0x7

.field static final TRANSACTION_registerForNotification:I = 0x11

.field static final TRANSACTION_registerServer:I = 0x17

.field static final TRANSACTION_removeService:I = 0x20

.field static final TRANSACTION_sendNotification:I = 0x23

.field static final TRANSACTION_sendResponse:I = 0x22

.field static final TRANSACTION_serverConnect:I = 0x19

.field static final TRANSACTION_serverDisconnect:I = 0x1a

.field static final TRANSACTION_startMultiAdvertising:I = 0x5

.field static final TRANSACTION_startScan:I = 0x2

.field static final TRANSACTION_stopMultiAdvertising:I = 0x6

.field static final TRANSACTION_stopScan:I = 0x3

.field static final TRANSACTION_unregisterClient:I = 0x8

.field static final TRANSACTION_unregisterServer:I = 0x18

.field static final TRANSACTION_updateConnParams:I = 0x25

.field static final TRANSACTION_writeCharacteristic:I = 0xe

.field static final TRANSACTION_writeDescriptor:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "android.bluetooth.IBluetoothGatt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/bluetooth/IBluetoothGatt;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 28
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
    .line 42
    sparse-switch p1, :sswitch_data_6dc

    .line 732
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 46
    :sswitch_8
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v2, 0x1

    goto :goto_7

    .line 51
    :sswitch_11
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 54
    .local v3, "_arg0":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v21

    .line 55
    .local v21, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 57
    const/4 v2, 0x1

    goto :goto_7

    .line 61
    .end local v3    # "_arg0":[I
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_2e
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 65
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_72

    const/4 v4, 0x1

    .line 67
    .local v4, "_arg1":Z
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_74

    .line 68
    sget-object v2, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/le/ScanSettings;

    .line 74
    .local v5, "_arg2":Landroid/bluetooth/le/ScanSettings;
    :goto_50
    sget-object v2, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .line 76
    .local v6, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v22

    .line 77
    .local v22, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v7

    .local v7, "_arg4":Ljava/util/List;
    move-object/from16 v2, p0

    .line 78
    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/IBluetoothGatt$Stub;->startScan(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;)V

    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    const/4 v2, 0x1

    goto :goto_7

    .line 65
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":Landroid/bluetooth/le/ScanSettings;
    .end local v6    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local v7    # "_arg4":Ljava/util/List;
    .end local v22    # "cl":Ljava/lang/ClassLoader;
    :cond_72
    const/4 v4, 0x0

    goto :goto_40

    .line 71
    .restart local v4    # "_arg1":Z
    :cond_74
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/bluetooth/le/ScanSettings;
    goto :goto_50

    .line 84
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":Landroid/bluetooth/le/ScanSettings;
    :sswitch_76
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 88
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_93

    const/4 v4, 0x1

    .line 89
    .restart local v4    # "_arg1":Z
    :goto_88
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopScan(IZ)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 88
    .end local v4    # "_arg1":Z
    :cond_93
    const/4 v4, 0x0

    goto :goto_88

    .line 95
    .end local v3    # "_arg0":I
    :sswitch_95
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 99
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b2

    const/4 v4, 0x1

    .line 100
    .restart local v4    # "_arg1":Z
    :goto_a7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->flushPendingBatchResults(IZ)V

    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 99
    .end local v4    # "_arg1":Z
    :cond_b2
    const/4 v4, 0x0

    goto :goto_a7

    .line 106
    .end local v3    # "_arg0":I
    :sswitch_b4
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 110
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_fa

    .line 111
    sget-object v2, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/le/AdvertiseData;

    .line 117
    .local v4, "_arg1":Landroid/bluetooth/le/AdvertiseData;
    :goto_cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_fc

    .line 118
    sget-object v2, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/le/AdvertiseData;

    .line 124
    .local v5, "_arg2":Landroid/bluetooth/le/AdvertiseData;
    :goto_df
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_fe

    .line 125
    sget-object v2, Landroid/bluetooth/le/AdvertiseSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/le/AdvertiseSettings;

    .line 130
    .local v12, "_arg3":Landroid/bluetooth/le/AdvertiseSettings;
    :goto_ef
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v12}, Landroid/bluetooth/IBluetoothGatt$Stub;->startMultiAdvertising(ILandroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V

    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 114
    .end local v4    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    .end local v5    # "_arg2":Landroid/bluetooth/le/AdvertiseData;
    .end local v12    # "_arg3":Landroid/bluetooth/le/AdvertiseSettings;
    :cond_fa
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    goto :goto_cf

    .line 121
    :cond_fc
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/bluetooth/le/AdvertiseData;
    goto :goto_df

    .line 128
    :cond_fe
    const/4 v12, 0x0

    .restart local v12    # "_arg3":Landroid/bluetooth/le/AdvertiseSettings;
    goto :goto_ef

    .line 136
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/bluetooth/le/AdvertiseData;
    .end local v5    # "_arg2":Landroid/bluetooth/le/AdvertiseData;
    .end local v12    # "_arg3":Landroid/bluetooth/le/AdvertiseSettings;
    :sswitch_100
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 139
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopMultiAdvertising(I)V

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 145
    .end local v3    # "_arg0":I
    :sswitch_116
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_140

    .line 148
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 154
    .local v3, "_arg0":Landroid/os/ParcelUuid;
    :goto_12d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;

    move-result-object v4

    .line 155
    .local v4, "_arg1":Landroid/bluetooth/IBluetoothGattCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    .line 156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 151
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    .end local v4    # "_arg1":Landroid/bluetooth/IBluetoothGattCallback;
    :cond_140
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_12d

    .line 161
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    :sswitch_142
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterClient(I)V

    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 170
    .end local v3    # "_arg0":I
    :sswitch_158
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 174
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18c

    const/4 v5, 0x1

    .line 178
    .local v5, "_arg2":Z
    :goto_16e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 180
    .local v12, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18e

    const/4 v7, 0x1

    .line 182
    .local v7, "_arg4":Z
    :goto_179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg5":I
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    move v11, v5

    move v13, v7

    .line 183
    invoke-virtual/range {v8 .. v14}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientConnect(ILjava/lang/String;ZIZI)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 176
    .end local v5    # "_arg2":Z
    .end local v7    # "_arg4":Z
    .end local v12    # "_arg3":I
    .end local v14    # "_arg5":I
    :cond_18c
    const/4 v5, 0x0

    goto :goto_16e

    .line 180
    .restart local v5    # "_arg2":Z
    .restart local v12    # "_arg3":I
    :cond_18e
    const/4 v7, 0x0

    goto :goto_179

    .line 189
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Z
    .end local v12    # "_arg3":I
    :sswitch_190
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 193
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 194
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientDisconnect(ILjava/lang/String;)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 200
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_1aa
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 204
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 205
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->refreshDevice(ILjava/lang/String;)V

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 211
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_1c4
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 215
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 216
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->discoverServices(ILjava/lang/String;)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 222
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_1de
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 226
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 228
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 230
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 232
    .restart local v12    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22c

    .line 233
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 239
    .local v7, "_arg4":Landroid/os/ParcelUuid;
    :goto_205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 241
    .restart local v14    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22e

    .line 242
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/ParcelUuid;

    .line 248
    .local v15, "_arg6":Landroid/os/ParcelUuid;
    :goto_219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, "_arg7":I
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    move v11, v5

    move-object v13, v7

    .line 249
    invoke-virtual/range {v8 .. v16}, Landroid/bluetooth/IBluetoothGatt$Stub;->readCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 236
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v14    # "_arg5":I
    .end local v15    # "_arg6":Landroid/os/ParcelUuid;
    .end local v16    # "_arg7":I
    :cond_22c
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_205

    .line 245
    .restart local v14    # "_arg5":I
    :cond_22e
    const/4 v15, 0x0

    .restart local v15    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_219

    .line 255
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v12    # "_arg3":I
    .end local v14    # "_arg5":I
    .end local v15    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_230
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 259
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 261
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 263
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 265
    .restart local v12    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_286

    .line 266
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 272
    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    :goto_257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 274
    .restart local v14    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_288

    .line 275
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/ParcelUuid;

    .line 281
    .restart local v15    # "_arg6":Landroid/os/ParcelUuid;
    :goto_26b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 283
    .restart local v16    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 285
    .local v17, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .local v18, "_arg9":[B
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    move v11, v5

    move-object v13, v7

    .line 286
    invoke-virtual/range {v8 .. v18}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V

    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 269
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v14    # "_arg5":I
    .end local v15    # "_arg6":Landroid/os/ParcelUuid;
    .end local v16    # "_arg7":I
    .end local v17    # "_arg8":I
    .end local v18    # "_arg9":[B
    :cond_286
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_257

    .line 278
    .restart local v14    # "_arg5":I
    :cond_288
    const/4 v15, 0x0

    .restart local v15    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_26b

    .line 292
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v12    # "_arg3":I
    .end local v14    # "_arg5":I
    .end local v15    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_28a
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 296
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 298
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 300
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 302
    .restart local v12    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2ec

    .line 303
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 309
    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    :goto_2b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 311
    .restart local v14    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2ee

    .line 312
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/ParcelUuid;

    .line 318
    .restart local v15    # "_arg6":Landroid/os/ParcelUuid;
    :goto_2c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 320
    .restart local v16    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2f0

    .line 321
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/ParcelUuid;

    .line 327
    .local v17, "_arg8":Landroid/os/ParcelUuid;
    :goto_2d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "_arg9":I
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    move v11, v5

    move-object v13, v7

    .line 328
    invoke-virtual/range {v8 .. v18}, Landroid/bluetooth/IBluetoothGatt$Stub;->readDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 306
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v14    # "_arg5":I
    .end local v15    # "_arg6":Landroid/os/ParcelUuid;
    .end local v16    # "_arg7":I
    .end local v17    # "_arg8":Landroid/os/ParcelUuid;
    .end local v18    # "_arg9":I
    :cond_2ec
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_2b1

    .line 315
    .restart local v14    # "_arg5":I
    :cond_2ee
    const/4 v15, 0x0

    .restart local v15    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_2c5

    .line 324
    .restart local v16    # "_arg7":I
    :cond_2f0
    const/16 v17, 0x0

    .restart local v17    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_2d9

    .line 334
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v12    # "_arg3":I
    .end local v14    # "_arg5":I
    .end local v15    # "_arg6":Landroid/os/ParcelUuid;
    .end local v16    # "_arg7":I
    .end local v17    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_2f3
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 338
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 340
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 342
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 344
    .restart local v12    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_35d

    .line 345
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 351
    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    :goto_31a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 353
    .restart local v14    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_35f

    .line 354
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/ParcelUuid;

    .line 360
    .restart local v15    # "_arg6":Landroid/os/ParcelUuid;
    :goto_32e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 362
    .restart local v16    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_361

    .line 363
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/ParcelUuid;

    .line 369
    .restart local v17    # "_arg8":Landroid/os/ParcelUuid;
    :goto_342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 371
    .restart local v18    # "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 373
    .local v19, "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v20

    .local v20, "_arg11":[B
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    move v11, v5

    move-object v13, v7

    .line 374
    invoke-virtual/range {v8 .. v20}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V

    .line 375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 348
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v14    # "_arg5":I
    .end local v15    # "_arg6":Landroid/os/ParcelUuid;
    .end local v16    # "_arg7":I
    .end local v17    # "_arg8":Landroid/os/ParcelUuid;
    .end local v18    # "_arg9":I
    .end local v19    # "_arg10":I
    .end local v20    # "_arg11":[B
    :cond_35d
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_31a

    .line 357
    .restart local v14    # "_arg5":I
    :cond_35f
    const/4 v15, 0x0

    .restart local v15    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_32e

    .line 366
    .restart local v16    # "_arg7":I
    :cond_361
    const/16 v17, 0x0

    .restart local v17    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_342

    .line 380
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v12    # "_arg3":I
    .end local v14    # "_arg5":I
    .end local v15    # "_arg6":Landroid/os/ParcelUuid;
    .end local v16    # "_arg7":I
    .end local v17    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_364
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 384
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 386
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 388
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 390
    .restart local v12    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3b6

    .line 391
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 397
    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    :goto_38b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 399
    .restart local v14    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3b8

    .line 400
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/ParcelUuid;

    .line 406
    .restart local v15    # "_arg6":Landroid/os/ParcelUuid;
    :goto_39f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3ba

    const/16 v16, 0x1

    .local v16, "_arg7":Z
    :goto_3a7
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    move v11, v5

    move-object v13, v7

    .line 407
    invoke-virtual/range {v8 .. v16}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerForNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z)V

    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 394
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v14    # "_arg5":I
    .end local v15    # "_arg6":Landroid/os/ParcelUuid;
    .end local v16    # "_arg7":Z
    :cond_3b6
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_38b

    .line 403
    .restart local v14    # "_arg5":I
    :cond_3b8
    const/4 v15, 0x0

    .restart local v15    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_39f

    .line 406
    :cond_3ba
    const/16 v16, 0x0

    goto :goto_3a7

    .line 413
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v12    # "_arg3":I
    .end local v14    # "_arg5":I
    .end local v15    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_3bd
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 417
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 418
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->beginReliableWrite(ILjava/lang/String;)V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 424
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_3d7
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 428
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 430
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3f8

    const/4 v5, 0x1

    .line 431
    .local v5, "_arg2":Z
    :goto_3ed
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->endReliableWrite(ILjava/lang/String;Z)V

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 430
    .end local v5    # "_arg2":Z
    :cond_3f8
    const/4 v5, 0x0

    goto :goto_3ed

    .line 437
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_3fa
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 441
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 442
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->readRemoteRssi(ILjava/lang/String;)V

    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 448
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_414
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 452
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 454
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 455
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->configureMTU(ILjava/lang/String;I)V

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 461
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :sswitch_432
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 465
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 467
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 468
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->connectionParameterUpdate(ILjava/lang/String;I)V

    .line 469
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 474
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :sswitch_450
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_47a

    .line 477
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 483
    .local v3, "_arg0":Landroid/os/ParcelUuid;
    :goto_467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v4

    .line 484
    .local v4, "_arg1":Landroid/bluetooth/IBluetoothGattServerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 480
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    .end local v4    # "_arg1":Landroid/bluetooth/IBluetoothGattServerCallback;
    :cond_47a
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_467

    .line 490
    .end local v3    # "_arg0":Landroid/os/ParcelUuid;
    :sswitch_47c
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 493
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterServer(I)V

    .line 494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 499
    .end local v3    # "_arg0":I
    :sswitch_492
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 503
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 505
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4b7

    const/4 v5, 0x1

    .line 507
    .local v5, "_arg2":Z
    :goto_4a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 508
    .restart local v12    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v12}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverConnect(ILjava/lang/String;ZI)V

    .line 509
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 505
    .end local v5    # "_arg2":Z
    .end local v12    # "_arg3":I
    :cond_4b7
    const/4 v5, 0x0

    goto :goto_4a8

    .line 514
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_4b9
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 518
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 519
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverDisconnect(ILjava/lang/String;)V

    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 525
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_4d3
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 529
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 531
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 533
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 535
    .restart local v12    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_510

    .line 536
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 542
    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    :goto_4fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_512

    const/4 v14, 0x1

    .local v14, "_arg5":Z
    :goto_501
    move-object/from16 v8, p0

    move v9, v3

    move v10, v4

    move v11, v5

    move-object v13, v7

    .line 543
    invoke-virtual/range {v8 .. v14}, Landroid/bluetooth/IBluetoothGatt$Stub;->beginServiceDeclaration(IIIILandroid/os/ParcelUuid;Z)V

    .line 544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 539
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v14    # "_arg5":Z
    :cond_510
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_4fa

    .line 542
    :cond_512
    const/4 v14, 0x0

    goto :goto_501

    .line 549
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v12    # "_arg3":I
    :sswitch_514
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 553
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 555
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 557
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_542

    .line 558
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/ParcelUuid;

    .line 563
    .local v12, "_arg3":Landroid/os/ParcelUuid;
    :goto_537
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v12}, Landroid/bluetooth/IBluetoothGatt$Stub;->addIncludedService(IIILandroid/os/ParcelUuid;)V

    .line 564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 561
    .end local v12    # "_arg3":Landroid/os/ParcelUuid;
    :cond_542
    const/4 v12, 0x0

    .restart local v12    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_537

    .line 569
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v12    # "_arg3":Landroid/os/ParcelUuid;
    :sswitch_544
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 573
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_572

    .line 574
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 580
    .local v4, "_arg1":Landroid/os/ParcelUuid;
    :goto_55f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 582
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 583
    .local v12, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v12}, Landroid/bluetooth/IBluetoothGatt$Stub;->addCharacteristic(ILandroid/os/ParcelUuid;II)V

    .line 584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 577
    .end local v4    # "_arg1":Landroid/os/ParcelUuid;
    .end local v5    # "_arg2":I
    .end local v12    # "_arg3":I
    :cond_572
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_55f

    .line 589
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_574
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 593
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_59e

    .line 594
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 600
    .restart local v4    # "_arg1":Landroid/os/ParcelUuid;
    :goto_58f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 601
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->addDescriptor(ILandroid/os/ParcelUuid;I)V

    .line 602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 597
    .end local v4    # "_arg1":Landroid/os/ParcelUuid;
    .end local v5    # "_arg2":I
    :cond_59e
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/ParcelUuid;
    goto :goto_58f

    .line 607
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/ParcelUuid;
    :sswitch_5a0
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 610
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->endServiceDeclaration(I)V

    .line 611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 616
    .end local v3    # "_arg0":I
    :sswitch_5b6
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 620
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 622
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 624
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5e4

    .line 625
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/ParcelUuid;

    .line 630
    .local v12, "_arg3":Landroid/os/ParcelUuid;
    :goto_5d9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v12}, Landroid/bluetooth/IBluetoothGatt$Stub;->removeService(IIILandroid/os/ParcelUuid;)V

    .line 631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 628
    .end local v12    # "_arg3":Landroid/os/ParcelUuid;
    :cond_5e4
    const/4 v12, 0x0

    .restart local v12    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_5d9

    .line 636
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v12    # "_arg3":Landroid/os/ParcelUuid;
    :sswitch_5e6
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 639
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->clearServices(I)V

    .line 640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 645
    .end local v3    # "_arg0":I
    :sswitch_5fc
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 649
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 651
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 653
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 655
    .local v12, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 657
    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .local v14, "_arg5":[B
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    move v11, v5

    move v13, v7

    .line 658
    invoke-virtual/range {v8 .. v14}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendResponse(ILjava/lang/String;III[B)V

    .line 659
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 664
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v7    # "_arg4":I
    .end local v12    # "_arg3":I
    .end local v14    # "_arg5":[B
    :sswitch_62a
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 668
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 670
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 672
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 674
    .restart local v12    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_680

    .line 675
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 681
    .local v7, "_arg4":Landroid/os/ParcelUuid;
    :goto_651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 683
    .local v14, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_682

    .line 684
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/ParcelUuid;

    .line 690
    .restart local v15    # "_arg6":Landroid/os/ParcelUuid;
    :goto_665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_684

    const/16 v16, 0x1

    .line 692
    .restart local v16    # "_arg7":Z
    :goto_66d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .local v17, "_arg8":[B
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    move v11, v5

    move-object v13, v7

    .line 693
    invoke-virtual/range {v8 .. v17}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z[B)V

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 678
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v14    # "_arg5":I
    .end local v15    # "_arg6":Landroid/os/ParcelUuid;
    .end local v16    # "_arg7":Z
    .end local v17    # "_arg8":[B
    :cond_680
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_651

    .line 687
    .restart local v14    # "_arg5":I
    :cond_682
    const/4 v15, 0x0

    .restart local v15    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_665

    .line 690
    :cond_684
    const/16 v16, 0x0

    goto :goto_66d

    .line 699
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v7    # "_arg4":Landroid/os/ParcelUuid;
    .end local v12    # "_arg3":I
    .end local v14    # "_arg5":I
    .end local v15    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_687
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 703
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 705
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 707
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 709
    .restart local v12    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg4":I
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    move v11, v5

    move v13, v7

    .line 710
    invoke-virtual/range {v8 .. v13}, Landroid/bluetooth/IBluetoothGatt$Stub;->monitorRssi(ILjava/lang/String;III)V

    .line 711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 716
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v7    # "_arg4":I
    .end local v12    # "_arg3":I
    :sswitch_6b1
    const-string v2, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 720
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 722
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 724
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 726
    .restart local v12    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg4":I
    move-object/from16 v8, p0

    move-object v9, v3

    move v10, v4

    move v11, v5

    move v13, v7

    .line 727
    invoke-virtual/range {v8 .. v13}, Landroid/bluetooth/IBluetoothGatt$Stub;->updateConnParams(Ljava/lang/String;IIII)V

    .line 728
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 42
    nop

    :sswitch_data_6dc
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_76
        0x4 -> :sswitch_95
        0x5 -> :sswitch_b4
        0x6 -> :sswitch_100
        0x7 -> :sswitch_116
        0x8 -> :sswitch_142
        0x9 -> :sswitch_158
        0xa -> :sswitch_190
        0xb -> :sswitch_1aa
        0xc -> :sswitch_1c4
        0xd -> :sswitch_1de
        0xe -> :sswitch_230
        0xf -> :sswitch_28a
        0x10 -> :sswitch_2f3
        0x11 -> :sswitch_364
        0x12 -> :sswitch_3bd
        0x13 -> :sswitch_3d7
        0x14 -> :sswitch_3fa
        0x15 -> :sswitch_414
        0x16 -> :sswitch_432
        0x17 -> :sswitch_450
        0x18 -> :sswitch_47c
        0x19 -> :sswitch_492
        0x1a -> :sswitch_4b9
        0x1b -> :sswitch_4d3
        0x1c -> :sswitch_514
        0x1d -> :sswitch_544
        0x1e -> :sswitch_574
        0x1f -> :sswitch_5a0
        0x20 -> :sswitch_5b6
        0x21 -> :sswitch_5e6
        0x22 -> :sswitch_5fc
        0x23 -> :sswitch_62a
        0x24 -> :sswitch_687
        0x25 -> :sswitch_6b1
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
