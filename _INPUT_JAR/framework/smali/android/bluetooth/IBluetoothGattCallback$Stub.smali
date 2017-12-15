.class public abstract Landroid/bluetooth/IBluetoothGattCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGattCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGattCallback"

.field static final TRANSACTION_onBatchScanResults:I = 0x4

.field static final TRANSACTION_onCharacteristicRead:I = 0xa

.field static final TRANSACTION_onCharacteristicWrite:I = 0xb

.field static final TRANSACTION_onClientConnectionState:I = 0x2

.field static final TRANSACTION_onClientRegistered:I = 0x1

.field static final TRANSACTION_onConfigureMTU:I = 0x14

.field static final TRANSACTION_onDescriptorRead:I = 0xd

.field static final TRANSACTION_onDescriptorWrite:I = 0xe

.field static final TRANSACTION_onExecuteWrite:I = 0xc

.field static final TRANSACTION_onFoundOrLost:I = 0x15

.field static final TRANSACTION_onGetCharacteristic:I = 0x7

.field static final TRANSACTION_onGetDescriptor:I = 0x8

.field static final TRANSACTION_onGetIncludedService:I = 0x6

.field static final TRANSACTION_onGetService:I = 0x5

.field static final TRANSACTION_onMonitorRssi:I = 0x13

.field static final TRANSACTION_onMultiAdvertiseCallback:I = 0x11

.field static final TRANSACTION_onNotify:I = 0xf

.field static final TRANSACTION_onReadRemoteRssi:I = 0x10

.field static final TRANSACTION_onScanFailedCallback:I = 0x12

.field static final TRANSACTION_onScanResult:I = 0x3

.field static final TRANSACTION_onSearchComplete:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;
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
    const-string v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGattCallback;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 17
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
    sparse-switch p1, :sswitch_data_390

    .line 475
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 46
    :sswitch_8
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    goto :goto_7

    .line 51
    :sswitch_f
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 56
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onClientRegistered(II)V

    .line 57
    const/4 v0, 0x1

    goto :goto_7

    .line 61
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_21
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 67
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v3, 0x1

    .line 69
    .local v3, "_arg2":Z
    :goto_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onClientConnectionState(IIZLjava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    goto :goto_7

    .line 67
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Ljava/lang/String;
    :cond_3e
    const/4 v3, 0x0

    goto :goto_35

    .line 75
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_40
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_58

    .line 78
    sget-object v0, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanResult;

    .line 83
    .local v1, "_arg0":Landroid/bluetooth/le/ScanResult;
    :goto_53
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onScanResult(Landroid/bluetooth/le/ScanResult;)V

    .line 84
    const/4 v0, 0x1

    goto :goto_7

    .line 81
    .end local v1    # "_arg0":Landroid/bluetooth/le/ScanResult;
    :cond_58
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/le/ScanResult;
    goto :goto_53

    .line 88
    .end local v1    # "_arg0":Landroid/bluetooth/le/ScanResult;
    :sswitch_5a
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    sget-object v0, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    .line 91
    .local v11, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    invoke-virtual {p0, v11}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onBatchScanResults(Ljava/util/List;)V

    .line 92
    const/4 v0, 0x1

    goto :goto_7

    .line 96
    .end local v11    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    :sswitch_6a
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 102
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 104
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8f

    .line 105
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 110
    .local v4, "_arg3":Landroid/os/ParcelUuid;
    :goto_89
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V

    .line 111
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 108
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    :cond_8f
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_89

    .line 115
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    :sswitch_91
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 121
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 123
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_cd

    .line 124
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 130
    .restart local v4    # "_arg3":Landroid/os/ParcelUuid;
    :goto_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 132
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 134
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_cf

    .line 135
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .local v7, "_arg6":Landroid/os/ParcelUuid;
    :goto_c6
    move-object v0, p0

    .line 140
    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V

    .line 141
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 127
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    :cond_cd
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_b0

    .line 138
    .restart local v5    # "_arg4":I
    .restart local v6    # "_arg5":I
    :cond_cf
    const/4 v7, 0x0

    .restart local v7    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_c6

    .line 145
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_d1
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 153
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10d

    .line 154
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 160
    .restart local v4    # "_arg3":Landroid/os/ParcelUuid;
    :goto_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 162
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10f

    .line 163
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 169
    .local v6, "_arg5":Landroid/os/ParcelUuid;
    :goto_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg6":I
    move-object v0, p0

    .line 170
    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    .line 171
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 157
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/ParcelUuid;
    .end local v7    # "_arg6":I
    :cond_10d
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_f0

    .line 166
    .restart local v5    # "_arg4":I
    :cond_10f
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/os/ParcelUuid;
    goto :goto_102

    .line 175
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/ParcelUuid;
    :sswitch_111
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 181
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 183
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15b

    .line 184
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 190
    .restart local v4    # "_arg3":Landroid/os/ParcelUuid;
    :goto_130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 192
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15d

    .line 193
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 199
    .restart local v6    # "_arg5":Landroid/os/ParcelUuid;
    :goto_142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 201
    .restart local v7    # "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15f

    .line 202
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .local v8, "_arg7":Landroid/os/ParcelUuid;
    :goto_154
    move-object v0, p0

    .line 207
    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    .line 208
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 187
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/ParcelUuid;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Landroid/os/ParcelUuid;
    :cond_15b
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_130

    .line 196
    .restart local v5    # "_arg4":I
    :cond_15d
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/os/ParcelUuid;
    goto :goto_142

    .line 205
    .restart local v7    # "_arg6":I
    :cond_15f
    const/4 v8, 0x0

    .restart local v8    # "_arg7":Landroid/os/ParcelUuid;
    goto :goto_154

    .line 212
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/ParcelUuid;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Landroid/os/ParcelUuid;
    :sswitch_161
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 216
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 217
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onSearchComplete(Ljava/lang/String;I)V

    .line 218
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 222
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_174
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 226
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 228
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 230
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 232
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b4

    .line 233
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 239
    .local v5, "_arg4":Landroid/os/ParcelUuid;
    :goto_197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 241
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b6

    .line 242
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 248
    .local v7, "_arg6":Landroid/os/ParcelUuid;
    :goto_1a9
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .local v8, "_arg7":[B
    move-object v0, p0

    .line 249
    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    .line 250
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 236
    .end local v5    # "_arg4":Landroid/os/ParcelUuid;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    .end local v8    # "_arg7":[B
    :cond_1b4
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_197

    .line 245
    .restart local v6    # "_arg5":I
    :cond_1b6
    const/4 v7, 0x0

    .restart local v7    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_1a9

    .line 254
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/ParcelUuid;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_1b8
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 258
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 260
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 262
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 264
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f4

    .line 265
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 271
    .restart local v5    # "_arg4":Landroid/os/ParcelUuid;
    :goto_1db
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 273
    .restart local v6    # "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f6

    .line 274
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .restart local v7    # "_arg6":Landroid/os/ParcelUuid;
    :goto_1ed
    move-object v0, p0

    .line 279
    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    .line 280
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 268
    .end local v5    # "_arg4":Landroid/os/ParcelUuid;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    :cond_1f4
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_1db

    .line 277
    .restart local v6    # "_arg5":I
    :cond_1f6
    const/4 v7, 0x0

    .restart local v7    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_1ed

    .line 284
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/ParcelUuid;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    :sswitch_1f8
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 289
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onExecuteWrite(Ljava/lang/String;I)V

    .line 290
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 294
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_20b
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 298
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 300
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 304
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25d

    .line 305
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 311
    .restart local v5    # "_arg4":Landroid/os/ParcelUuid;
    :goto_22e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 313
    .restart local v6    # "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25f

    .line 314
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 320
    .restart local v7    # "_arg6":Landroid/os/ParcelUuid;
    :goto_240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 322
    .local v8, "_arg7":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_261

    .line 323
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelUuid;

    .line 329
    .local v9, "_arg8":Landroid/os/ParcelUuid;
    :goto_252
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .local v10, "_arg9":[B
    move-object v0, p0

    .line 330
    invoke-virtual/range {v0 .. v10}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    .line 331
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 308
    .end local v5    # "_arg4":Landroid/os/ParcelUuid;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/os/ParcelUuid;
    .end local v10    # "_arg9":[B
    :cond_25d
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_22e

    .line 317
    .restart local v6    # "_arg5":I
    :cond_25f
    const/4 v7, 0x0

    .restart local v7    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_240

    .line 326
    .restart local v8    # "_arg7":I
    :cond_261
    const/4 v9, 0x0

    .restart local v9    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_252

    .line 335
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/ParcelUuid;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_263
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 339
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 341
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 343
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 345
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b1

    .line 346
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 352
    .restart local v5    # "_arg4":Landroid/os/ParcelUuid;
    :goto_286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 354
    .restart local v6    # "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b3

    .line 355
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    .line 361
    .restart local v7    # "_arg6":Landroid/os/ParcelUuid;
    :goto_298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 363
    .restart local v8    # "_arg7":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b5

    .line 364
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelUuid;

    .restart local v9    # "_arg8":Landroid/os/ParcelUuid;
    :goto_2aa
    move-object v0, p0

    .line 369
    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    .line 370
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 349
    .end local v5    # "_arg4":Landroid/os/ParcelUuid;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/os/ParcelUuid;
    :cond_2b1
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/ParcelUuid;
    goto :goto_286

    .line 358
    .restart local v6    # "_arg5":I
    :cond_2b3
    const/4 v7, 0x0

    .restart local v7    # "_arg6":Landroid/os/ParcelUuid;
    goto :goto_298

    .line 367
    .restart local v8    # "_arg7":I
    :cond_2b5
    const/4 v9, 0x0

    .restart local v9    # "_arg8":Landroid/os/ParcelUuid;
    goto :goto_2aa

    .line 374
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/ParcelUuid;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/ParcelUuid;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/os/ParcelUuid;
    :sswitch_2b7
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 378
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 380
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 382
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f3

    .line 383
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    .line 389
    .local v4, "_arg3":Landroid/os/ParcelUuid;
    :goto_2d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 391
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f5

    .line 392
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 398
    .local v6, "_arg5":Landroid/os/ParcelUuid;
    :goto_2e8
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .local v7, "_arg6":[B
    move-object v0, p0

    .line 399
    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    .line 400
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 386
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/ParcelUuid;
    .end local v7    # "_arg6":[B
    :cond_2f3
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/ParcelUuid;
    goto :goto_2d6

    .line 395
    .restart local v5    # "_arg4":I
    :cond_2f5
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/os/ParcelUuid;
    goto :goto_2e8

    .line 404
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/ParcelUuid;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/os/ParcelUuid;
    :sswitch_2f7
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 408
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 410
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 411
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onReadRemoteRssi(Ljava/lang/String;II)V

    .line 412
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 416
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_30e
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 420
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_332

    const/4 v2, 0x1

    .line 422
    .local v2, "_arg1":Z
    :goto_31e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_334

    .line 423
    sget-object v0, Landroid/bluetooth/le/AdvertiseSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/AdvertiseSettings;

    .line 428
    .local v3, "_arg2":Landroid/bluetooth/le/AdvertiseSettings;
    :goto_32c
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V

    .line 429
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 420
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/bluetooth/le/AdvertiseSettings;
    :cond_332
    const/4 v2, 0x0

    goto :goto_31e

    .line 426
    .restart local v2    # "_arg1":Z
    :cond_334
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/bluetooth/le/AdvertiseSettings;
    goto :goto_32c

    .line 433
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/bluetooth/le/AdvertiseSettings;
    :sswitch_336
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onScanFailedCallback()V

    .line 435
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 439
    :sswitch_341
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 444
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onMonitorRssi(Ljava/lang/String;I)V

    .line 445
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 449
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_354
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 453
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 455
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 456
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onConfigureMTU(Ljava/lang/String;II)V

    .line 457
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 461
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_36b
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38b

    const/4 v1, 0x1

    .line 465
    .local v1, "_arg0":Z
    :goto_377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38d

    .line 466
    sget-object v0, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/ScanResult;

    .line 471
    .local v2, "_arg1":Landroid/bluetooth/le/ScanResult;
    :goto_385
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V

    .line 472
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 463
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/bluetooth/le/ScanResult;
    :cond_38b
    const/4 v1, 0x0

    goto :goto_377

    .line 469
    .restart local v1    # "_arg0":Z
    :cond_38d
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/bluetooth/le/ScanResult;
    goto :goto_385

    .line 42
    nop

    :sswitch_data_390
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_21
        0x3 -> :sswitch_40
        0x4 -> :sswitch_5a
        0x5 -> :sswitch_6a
        0x6 -> :sswitch_91
        0x7 -> :sswitch_d1
        0x8 -> :sswitch_111
        0x9 -> :sswitch_161
        0xa -> :sswitch_174
        0xb -> :sswitch_1b8
        0xc -> :sswitch_1f8
        0xd -> :sswitch_20b
        0xe -> :sswitch_263
        0xf -> :sswitch_2b7
        0x10 -> :sswitch_2f7
        0x11 -> :sswitch_30e
        0x12 -> :sswitch_336
        0x13 -> :sswitch_341
        0x14 -> :sswitch_354
        0x15 -> :sswitch_36b
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
