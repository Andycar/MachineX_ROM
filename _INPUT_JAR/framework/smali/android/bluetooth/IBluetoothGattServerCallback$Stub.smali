.class public abstract Landroid/bluetooth/IBluetoothGattServerCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGattServerCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattServerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGattServerCallback"

.field static final TRANSACTION_onCharacteristicReadRequest:I = 0x5

.field static final TRANSACTION_onCharacteristicWriteRequest:I = 0x7

.field static final TRANSACTION_onDescriptorReadRequest:I = 0x6

.field static final TRANSACTION_onDescriptorWriteRequest:I = 0x8

.field static final TRANSACTION_onExecuteWrite:I = 0x9

.field static final TRANSACTION_onMtuChanged:I = 0xb

.field static final TRANSACTION_onNotificationSent:I = 0xa

.field static final TRANSACTION_onScanResult:I = 0x2

.field static final TRANSACTION_onServerConnectionState:I = 0x3

.field static final TRANSACTION_onServerRegistered:I = 0x1

.field static final TRANSACTION_onServiceAdded:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;
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
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 20
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
    sparse-switch p1, :sswitch_data_262

    .line 299
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_7
    return v1

    .line 46
    :sswitch_8
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x1

    goto :goto_7

    .line 51
    :sswitch_11
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServerRegistered(II)V

    .line 57
    const/4 v1, 0x1

    goto :goto_7

    .line 61
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_25
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 67
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 68
    .local v4, "_arg2":[B
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onScanResult(Ljava/lang/String;I[B)V

    .line 69
    const/4 v1, 0x1

    goto :goto_7

    .line 73
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    :sswitch_3d
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 77
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 79
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5c

    const/4 v4, 0x1

    .line 81
    .local v4, "_arg2":Z
    :goto_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServerConnectionState(IIZLjava/lang/String;)V

    .line 83
    const/4 v1, 0x1

    goto :goto_7

    .line 79
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Ljava/lang/String;
    :cond_5c
    const/4 v4, 0x0

    goto :goto_53

    .line 87
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_5e
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 91
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 93
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 95
    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_86

    .line 96
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 101
    .local v5, "_arg3":Landroid/os/ParcelUuid;
    :goto_81
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServiceAdded(IIILandroid/os/ParcelUuid;)V

    .line 102
    const/4 v1, 0x1

    goto :goto_7

    .line 99
    .end local v5    # "_arg3":Landroid/os/ParcelUuid;
    :cond_86
    const/4 v5, 0x0

    .restart local v5    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_81

    .line 106
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/ParcelUuid;
    :sswitch_88
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 112
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 114
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d5

    const/4 v5, 0x1

    .line 116
    .local v5, "_arg3":Z
    :goto_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 118
    .local v6, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 120
    .local v7, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d7

    .line 121
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .line 127
    .local v8, "_arg6":Landroid/os/ParcelUuid;
    :goto_ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 129
    .local v9, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d9

    .line 130
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelUuid;

    .local v10, "_arg8":Landroid/os/ParcelUuid;
    :goto_ce
    move-object v1, p0

    .line 135
    invoke-virtual/range {v1 .. v10}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onCharacteristicReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    .line 136
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 114
    .end local v5    # "_arg3":Z
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":Landroid/os/ParcelUuid;
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/os/ParcelUuid;
    :cond_d5
    const/4 v5, 0x0

    goto :goto_a2

    .line 124
    .restart local v5    # "_arg3":Z
    .restart local v6    # "_arg4":I
    .restart local v7    # "_arg5":I
    :cond_d7
    const/4 v8, 0x0

    .restart local v8    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_ba

    .line 133
    .restart local v9    # "_arg7":I
    :cond_d9
    const/4 v10, 0x0

    .restart local v10    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_ce

    .line 140
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":Landroid/os/ParcelUuid;
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_db
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 146
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 148
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_138

    const/4 v5, 0x1

    .line 150
    .restart local v5    # "_arg3":Z
    :goto_f5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 152
    .restart local v6    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 154
    .restart local v7    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13a

    .line 155
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .line 161
    .restart local v8    # "_arg6":Landroid/os/ParcelUuid;
    :goto_10d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 163
    .restart local v9    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13c

    .line 164
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelUuid;

    .line 170
    .restart local v10    # "_arg8":Landroid/os/ParcelUuid;
    :goto_121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13e

    .line 171
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/ParcelUuid;

    .local v11, "_arg9":Landroid/os/ParcelUuid;
    :goto_131
    move-object v1, p0

    .line 176
    invoke-virtual/range {v1 .. v11}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onDescriptorReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V

    .line 177
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 148
    .end local v5    # "_arg3":Z
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":Landroid/os/ParcelUuid;
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/os/ParcelUuid;
    .end local v11    # "_arg9":Landroid/os/ParcelUuid;
    :cond_138
    const/4 v5, 0x0

    goto :goto_f5

    .line 158
    .restart local v5    # "_arg3":Z
    .restart local v6    # "_arg4":I
    .restart local v7    # "_arg5":I
    :cond_13a
    const/4 v8, 0x0

    .restart local v8    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_10d

    .line 167
    .restart local v9    # "_arg7":I
    :cond_13c
    const/4 v10, 0x0

    .restart local v10    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_121

    .line 174
    :cond_13e
    const/4 v11, 0x0

    .restart local v11    # "_arg9":Landroid/os/ParcelUuid;
    goto :goto_131

    .line 181
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":Landroid/os/ParcelUuid;
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/os/ParcelUuid;
    .end local v11    # "_arg9":Landroid/os/ParcelUuid;
    :sswitch_140
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 187
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 189
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 191
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19c

    const/4 v6, 0x1

    .line 193
    .local v6, "_arg4":Z
    :goto_15e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19e

    const/4 v7, 0x1

    .line 195
    .local v7, "_arg5":Z
    :goto_165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 197
    .local v8, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 199
    .restart local v9    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a0

    .line 200
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelUuid;

    .line 206
    .restart local v10    # "_arg8":Landroid/os/ParcelUuid;
    :goto_17d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 208
    .local v11, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a2

    .line 209
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/ParcelUuid;

    .line 215
    .local v12, "_arg10":Landroid/os/ParcelUuid;
    :goto_191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .local v13, "_arg11":[B
    move-object v1, p0

    .line 216
    invoke-virtual/range {v1 .. v13}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onCharacteristicWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    .line 217
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 191
    .end local v6    # "_arg4":Z
    .end local v7    # "_arg5":Z
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/os/ParcelUuid;
    .end local v11    # "_arg9":I
    .end local v12    # "_arg10":Landroid/os/ParcelUuid;
    .end local v13    # "_arg11":[B
    :cond_19c
    const/4 v6, 0x0

    goto :goto_15e

    .line 193
    .restart local v6    # "_arg4":Z
    :cond_19e
    const/4 v7, 0x0

    goto :goto_165

    .line 203
    .restart local v7    # "_arg5":Z
    .restart local v8    # "_arg6":I
    .restart local v9    # "_arg7":I
    :cond_1a0
    const/4 v10, 0x0

    .restart local v10    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_17d

    .line 212
    .restart local v11    # "_arg9":I
    :cond_1a2
    const/4 v12, 0x0

    .restart local v12    # "_arg10":Landroid/os/ParcelUuid;
    goto :goto_191

    .line 221
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Z
    .end local v7    # "_arg5":Z
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/os/ParcelUuid;
    .end local v11    # "_arg9":I
    .end local v12    # "_arg10":Landroid/os/ParcelUuid;
    :sswitch_1a4
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 225
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 227
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 229
    .restart local v4    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 231
    .restart local v5    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_210

    const/4 v6, 0x1

    .line 233
    .restart local v6    # "_arg4":Z
    :goto_1c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_212

    const/4 v7, 0x1

    .line 235
    .restart local v7    # "_arg5":Z
    :goto_1c9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 237
    .restart local v8    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 239
    .restart local v9    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_214

    .line 240
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelUuid;

    .line 246
    .restart local v10    # "_arg8":Landroid/os/ParcelUuid;
    :goto_1e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 248
    .restart local v11    # "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_216

    .line 249
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/ParcelUuid;

    .line 255
    .restart local v12    # "_arg10":Landroid/os/ParcelUuid;
    :goto_1f5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_218

    .line 256
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/ParcelUuid;

    .line 262
    .local v13, "_arg11":Landroid/os/ParcelUuid;
    :goto_205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .local v14, "_arg12":[B
    move-object v1, p0

    .line 263
    invoke-virtual/range {v1 .. v14}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onDescriptorWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V

    .line 264
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 231
    .end local v6    # "_arg4":Z
    .end local v7    # "_arg5":Z
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/os/ParcelUuid;
    .end local v11    # "_arg9":I
    .end local v12    # "_arg10":Landroid/os/ParcelUuid;
    .end local v13    # "_arg11":Landroid/os/ParcelUuid;
    .end local v14    # "_arg12":[B
    :cond_210
    const/4 v6, 0x0

    goto :goto_1c2

    .line 233
    .restart local v6    # "_arg4":Z
    :cond_212
    const/4 v7, 0x0

    goto :goto_1c9

    .line 243
    .restart local v7    # "_arg5":Z
    .restart local v8    # "_arg6":I
    .restart local v9    # "_arg7":I
    :cond_214
    const/4 v10, 0x0

    .restart local v10    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_1e1

    .line 252
    .restart local v11    # "_arg9":I
    :cond_216
    const/4 v12, 0x0

    .restart local v12    # "_arg10":Landroid/os/ParcelUuid;
    goto :goto_1f5

    .line 259
    :cond_218
    const/4 v13, 0x0

    .restart local v13    # "_arg11":Landroid/os/ParcelUuid;
    goto :goto_205

    .line 268
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Z
    .end local v7    # "_arg5":Z
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":Landroid/os/ParcelUuid;
    .end local v11    # "_arg9":I
    .end local v12    # "_arg10":Landroid/os/ParcelUuid;
    .end local v13    # "_arg11":Landroid/os/ParcelUuid;
    :sswitch_21a
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 274
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_236

    const/4 v4, 0x1

    .line 275
    .local v4, "_arg2":Z
    :goto_230
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onExecuteWrite(Ljava/lang/String;IZ)V

    .line 276
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 274
    .end local v4    # "_arg2":Z
    :cond_236
    const/4 v4, 0x0

    goto :goto_230

    .line 280
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :sswitch_238
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 284
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 285
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onNotificationSent(Ljava/lang/String;I)V

    .line 286
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 290
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :sswitch_24d
    const-string v1, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 294
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 295
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onMtuChanged(Ljava/lang/String;I)V

    .line 296
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 42
    :sswitch_data_262
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_25
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_5e
        0x5 -> :sswitch_88
        0x6 -> :sswitch_db
        0x7 -> :sswitch_140
        0x8 -> :sswitch_1a4
        0x9 -> :sswitch_21a
        0xa -> :sswitch_238
        0xb -> :sswitch_24d
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
