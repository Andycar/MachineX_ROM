.class public abstract Landroid/bluetooth/IBluetoothManager$Stub;
.super Landroid/os/Binder;
.source "IBluetoothManager.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothManager"

.field static final TRANSACTION_disable:I = 0x8

.field static final TRANSACTION_disableRadio:I = 0xc

.field static final TRANSACTION_dumpInFile:I = 0x14

.field static final TRANSACTION_enable:I = 0x6

.field static final TRANSACTION_enableGatt:I = 0xf

.field static final TRANSACTION_enableNoAutoConnect:I = 0x7

.field static final TRANSACTION_enableRadio:I = 0xb

.field static final TRANSACTION_getAddress:I = 0x10

.field static final TRANSACTION_getBluetoothGatt:I = 0x9

.field static final TRANSACTION_getLEAddress:I = 0x11

.field static final TRANSACTION_getName:I = 0x12

.field static final TRANSACTION_isEnabled:I = 0x5

.field static final TRANSACTION_isRadioEnabled:I = 0xa

.field static final TRANSACTION_putLogs:I = 0x13

.field static final TRANSACTION_registerAdapter:I = 0x1

.field static final TRANSACTION_registerRadioMgrCallback:I = 0xd

.field static final TRANSACTION_registerStateChangeCallback:I = 0x3

.field static final TRANSACTION_unregisterAdapter:I = 0x2

.field static final TRANSACTION_unregisterRadioMgrCallback:I = 0xe

.field static final TRANSACTION_unregisterStateChangeCallback:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "android.bluetooth.IBluetoothManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/bluetooth/IBluetoothManager;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothManager;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/bluetooth/IBluetoothManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_1be

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 47
    :sswitch_b
    const-string v2, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 52
    :sswitch_11
    const-string v4, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothManager$Stub;->registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    .line 56
    .local v1, "_result":Landroid/bluetooth/IBluetooth;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v1, :cond_2b

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_2b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_a

    .line 62
    .end local v0    # "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v1    # "_result":Landroid/bluetooth/IBluetooth;
    :sswitch_2f
    const-string v2, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v0

    .line 65
    .restart local v0    # "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothManager$Stub;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 71
    .end local v0    # "_arg0":Landroid/bluetooth/IBluetoothManagerCallback;
    :sswitch_43
    const-string v2, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;

    move-result-object v0

    .line 74
    .local v0, "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothManager$Stub;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 80
    .end local v0    # "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_57
    const-string v2, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;

    move-result-object v0

    .line 83
    .restart local v0    # "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothManager$Stub;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 89
    .end local v0    # "_arg0":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_6b
    const-string v2, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isEnabled()Z

    move-result v1

    .line 91
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v1, :cond_7e

    move v2, v3

    :goto_7a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :cond_7e
    move v2, v4

    goto :goto_7a

    .line 97
    .end local v1    # "_result":Z
    :sswitch_80
    const-string v2, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->enable()Z

    move-result v1

    .line 99
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v1, :cond_8f

    move v4, v3

    :cond_8f
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 105
    .end local v1    # "_result":Z
    :sswitch_94
    const-string v2, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->enableNoAutoConnect()Z

    move-result v1

    .line 107
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v1, :cond_a3

    move v4, v3

    :cond_a3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 113
    .end local v1    # "_result":Z
    :sswitch_a8
    const-string v2, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c3

    move v0, v3

    .line 116
    .local v0, "_arg0":Z
    :goto_b4
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothManager$Stub;->disable(Z)Z

    move-result v1

    .line 117
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v1, :cond_be

    move v4, v3

    :cond_be
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :cond_c3
    move v0, v4

    .line 115
    goto :goto_b4

    .line 123
    :sswitch_c5
    const-string v4, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    .line 125
    .local v1, "_result":Landroid/bluetooth/IBluetoothGatt;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v1, :cond_d7

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothGatt;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_d7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    .line 131
    .end local v1    # "_result":Landroid/bluetooth/IBluetoothGatt;
    :sswitch_dc
    const-string v2, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isRadioEnabled()Z

    move-result v1

    .line 133
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v1, :cond_eb

    move v4, v3

    :cond_eb
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 139
    .end local v1    # "_result":Z
    :sswitch_f0
    const-string v2, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothManager$Stub;->enableRadio(I)Z

    move-result v1

    .line 143
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v1, :cond_103

    move v4, v3

    :cond_103
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 149
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_108
    const-string v2, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothManager$Stub;->disableRadio(I)Z

    move-result v1

    .line 153
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v1, :cond_11b

    move v4, v3

    :cond_11b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 159
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_120
    const-string v2, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothRadioMgrCallback;

    move-result-object v0

    .line 162
    .local v0, "_arg0":Landroid/bluetooth/IBluetoothRadioMgrCallback;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothManager$Stub;->registerRadioMgrCallback(Landroid/bluetooth/IBluetoothRadioMgrCallback;)Z

    move-result v1

    .line 163
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v1, :cond_137

    move v4, v3

    :cond_137
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 169
    .end local v0    # "_arg0":Landroid/bluetooth/IBluetoothRadioMgrCallback;
    .end local v1    # "_result":Z
    :sswitch_13c
    const-string v2, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothRadioMgrCallback;

    move-result-object v0

    .line 172
    .restart local v0    # "_arg0":Landroid/bluetooth/IBluetoothRadioMgrCallback;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothManager$Stub;->unregisterRadioMgrCallback(Landroid/bluetooth/IBluetoothRadioMgrCallback;)Z

    move-result v1

    .line 173
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v1, :cond_153

    move v4, v3

    :cond_153
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 179
    .end local v0    # "_arg0":Landroid/bluetooth/IBluetoothRadioMgrCallback;
    .end local v1    # "_result":Z
    :sswitch_158
    const-string v2, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->enableGatt()Z

    move-result v1

    .line 181
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v1, :cond_167

    move v4, v3

    :cond_167
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 187
    .end local v1    # "_result":Z
    :sswitch_16c
    const-string v2, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 195
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_17d
    const-string v2, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getLEAddress()Ljava/lang/String;

    move-result-object v1

    .line 197
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 203
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_18e
    const-string v2, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getName()Ljava/lang/String;

    move-result-object v1

    .line 205
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 211
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_19f
    const-string v2, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothManager$Stub;->putLogs(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 220
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1b0
    const-string v2, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->dumpInFile()V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 43
    nop

    :sswitch_data_1be
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_43
        0x4 -> :sswitch_57
        0x5 -> :sswitch_6b
        0x6 -> :sswitch_80
        0x7 -> :sswitch_94
        0x8 -> :sswitch_a8
        0x9 -> :sswitch_c5
        0xa -> :sswitch_dc
        0xb -> :sswitch_f0
        0xc -> :sswitch_108
        0xd -> :sswitch_120
        0xe -> :sswitch_13c
        0xf -> :sswitch_158
        0x10 -> :sswitch_16c
        0x11 -> :sswitch_17d
        0x12 -> :sswitch_18e
        0x13 -> :sswitch_19f
        0x14 -> :sswitch_1b0
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
