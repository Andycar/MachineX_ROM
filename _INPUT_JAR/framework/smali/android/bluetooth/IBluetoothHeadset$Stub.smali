.class public abstract Landroid/bluetooth/IBluetoothHeadset$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadset.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadset"

.field static final TRANSACTION_acceptIncomingConnect:I = 0xd

.field static final TRANSACTION_clccResponse:I = 0x18

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_connectAudio:I = 0x11

.field static final TRANSACTION_disableWBS:I = 0x1a

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_disconnectAudio:I = 0x12

.field static final TRANSACTION_enableWBS:I = 0x19

.field static final TRANSACTION_getAudioState:I = 0xf

.field static final TRANSACTION_getBatteryUsageHint:I = 0xc

.field static final TRANSACTION_getConnectedDevices:I = 0x3

.field static final TRANSACTION_getConnectionState:I = 0x5

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final TRANSACTION_getPriority:I = 0x7

.field static final TRANSACTION_getSamsungHandsfreeDeviceType:I = 0x1c

.field static final TRANSACTION_isAudioConnected:I = 0xa

.field static final TRANSACTION_isAudioOn:I = 0x10

.field static final TRANSACTION_isDualHfConnected:I = 0x1d

.field static final TRANSACTION_phoneStateChanged:I = 0x15

.field static final TRANSACTION_registerMessageListener:I = 0x20

.field static final TRANSACTION_rejectIncomingConnect:I = 0xe

.field static final TRANSACTION_roamChanged:I = 0x17

.field static final TRANSACTION_sendMessageToHeadset:I = 0x1f

.field static final TRANSACTION_sendVendorSpecificResponse:I = 0x1b

.field static final TRANSACTION_sendVendorSpecificResultCode:I = 0xb

.field static final TRANSACTION_setPriority:I = 0x6

.field static final TRANSACTION_setScoPath:I = 0x22

.field static final TRANSACTION_startScoUsingVirtualVoiceCall:I = 0x13

.field static final TRANSACTION_startVoiceRecognition:I = 0x8

.field static final TRANSACTION_stopScoUsingVirtualVoiceCall:I = 0x14

.field static final TRANSACTION_stopVoiceRecognition:I = 0x9

.field static final TRANSACTION_switchAudio:I = 0x1e

.field static final TRANSACTION_unRegisterMessageListener:I = 0x21

.field static final TRANSACTION_updateCallState:I = 0x16


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadset;
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
    const-string v1, "android.bluetooth.IBluetoothHeadset"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothHeadset;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 15
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
    .line 43
    sparse-switch p1, :sswitch_data_472

    .line 501
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 47
    :sswitch_8
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    goto :goto_7

    .line 52
    :sswitch_f
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31

    .line 55
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 60
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_22
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    .line 61
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v8, :cond_33

    const/4 v0, 0x1

    :goto_2c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    const/4 v0, 0x1

    goto :goto_7

    .line 58
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :cond_31
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_22

    .line 62
    .restart local v8    # "_result":Z
    :cond_33
    const/4 v0, 0x0

    goto :goto_2c

    .line 67
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :sswitch_35
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_57

    .line 70
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 75
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_48
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    .line 76
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v8, :cond_59

    const/4 v0, 0x1

    :goto_52
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v0, 0x1

    goto :goto_7

    .line 73
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :cond_57
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_48

    .line 77
    .restart local v8    # "_result":Z
    :cond_59
    const/4 v0, 0x0

    goto :goto_52

    .line 82
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :sswitch_5b
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v9

    .line 84
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 86
    const/4 v0, 0x1

    goto :goto_7

    .line 90
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_6c
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 93
    .local v1, "_arg0":[I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v9

    .line 94
    .restart local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 96
    const/4 v0, 0x1

    goto :goto_7

    .line 100
    .end local v1    # "_arg0":[I
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_81
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a1

    .line 103
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 108
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_94
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    .line 109
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 106
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":I
    :cond_a1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_94

    .line 115
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_a3
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ca

    .line 118
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 124
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v8

    .line 126
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v8, :cond_cc

    const/4 v0, 0x1

    :goto_c4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 121
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :cond_ca
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_b6

    .line 127
    .restart local v2    # "_arg1":I
    .restart local v8    # "_result":Z
    :cond_cc
    const/4 v0, 0x0

    goto :goto_c4

    .line 132
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :sswitch_ce
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ee

    .line 135
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 140
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_e1
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    .line 141
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 138
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":I
    :cond_ee
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_e1

    .line 147
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_f0
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_113

    .line 150
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 155
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_103
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    .line 156
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v8, :cond_115

    const/4 v0, 0x1

    :goto_10d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 153
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :cond_113
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_103

    .line 157
    .restart local v8    # "_result":Z
    :cond_115
    const/4 v0, 0x0

    goto :goto_10d

    .line 162
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :sswitch_117
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13a

    .line 165
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 170
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_12a
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    .line 171
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v8, :cond_13c

    const/4 v0, 0x1

    :goto_134
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 168
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :cond_13a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_12a

    .line 172
    .restart local v8    # "_result":Z
    :cond_13c
    const/4 v0, 0x0

    goto :goto_134

    .line 177
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :sswitch_13e
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_161

    .line 180
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 185
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_151
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    .line 186
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v8, :cond_163

    const/4 v0, 0x1

    :goto_15b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 183
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :cond_161
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_151

    .line 187
    .restart local v8    # "_result":Z
    :cond_163
    const/4 v0, 0x0

    goto :goto_15b

    .line 192
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :sswitch_165
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_190

    .line 195
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 201
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothHeadset$Stub;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 205
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v8, :cond_192

    const/4 v0, 0x1

    :goto_18a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 198
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :cond_190
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_178

    .line 206
    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v3    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_result":Z
    :cond_192
    const/4 v0, 0x0

    goto :goto_18a

    .line 211
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_194
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b4

    .line 214
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 219
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1a7
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    .line 220
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 217
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":I
    :cond_1b4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1a7

    .line 226
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1b6
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d9

    .line 229
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 234
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1c9
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    .line 235
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v8, :cond_1db

    const/4 v0, 0x1

    :goto_1d3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 232
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :cond_1d9
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1c9

    .line 236
    .restart local v8    # "_result":Z
    :cond_1db
    const/4 v0, 0x0

    goto :goto_1d3

    .line 241
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :sswitch_1dd
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_200

    .line 244
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 249
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_1f0
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    .line 250
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v8, :cond_202

    const/4 v0, 0x1

    :goto_1fa
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 247
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :cond_200
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_1f0

    .line 251
    .restart local v8    # "_result":Z
    :cond_202
    const/4 v0, 0x0

    goto :goto_1fa

    .line 256
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :sswitch_204
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_224

    .line 259
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 264
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_217
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    .line 265
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 262
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":I
    :cond_224
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_217

    .line 271
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_226
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isAudioOn()Z

    move-result v8

    .line 273
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    if-eqz v8, :cond_23b

    const/4 v0, 0x1

    :goto_235
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 274
    :cond_23b
    const/4 v0, 0x0

    goto :goto_235

    .line 279
    .end local v8    # "_result":Z
    :sswitch_23d
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_260

    .line 282
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 287
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_250
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    .line 288
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    if-eqz v8, :cond_262

    const/4 v0, 0x1

    :goto_25a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 285
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :cond_260
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_250

    .line 289
    .restart local v8    # "_result":Z
    :cond_262
    const/4 v0, 0x0

    goto :goto_25a

    .line 294
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :sswitch_264
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnectAudio()Z

    move-result v8

    .line 296
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    if-eqz v8, :cond_279

    const/4 v0, 0x1

    :goto_273
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 297
    :cond_279
    const/4 v0, 0x0

    goto :goto_273

    .line 302
    .end local v8    # "_result":Z
    :sswitch_27b
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29e

    .line 305
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 310
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_28e
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    .line 311
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    if-eqz v8, :cond_2a0

    const/4 v0, 0x1

    :goto_298
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 308
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :cond_29e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_28e

    .line 312
    .restart local v8    # "_result":Z
    :cond_2a0
    const/4 v0, 0x0

    goto :goto_298

    .line 317
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :sswitch_2a2
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c5

    .line 320
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 325
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_2b5
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    .line 326
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v8, :cond_2c7

    const/4 v0, 0x1

    :goto_2bf
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 323
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :cond_2c5
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2b5

    .line 327
    .restart local v8    # "_result":Z
    :cond_2c7
    const/4 v0, 0x0

    goto :goto_2bf

    .line 332
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Z
    :sswitch_2c9
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 336
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 338
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 340
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 343
    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothHeadset$Stub;->phoneStateChanged(IIILjava/lang/String;I)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 349
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    :sswitch_2ec
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 353
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 355
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 356
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothHeadset$Stub;->updateCallState(III)V

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 362
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_306
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31b

    const/4 v1, 0x1

    .line 365
    .local v1, "_arg0":Z
    :goto_312
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->roamChanged(Z)V

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 364
    .end local v1    # "_arg0":Z
    :cond_31b
    const/4 v1, 0x0

    goto :goto_312

    .line 371
    :sswitch_31d
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 375
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 377
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 379
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 381
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_34b

    const/4 v5, 0x1

    .line 383
    .local v5, "_arg4":Z
    :goto_339
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 385
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg6":I
    move-object v0, p0

    .line 386
    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/IBluetoothHeadset$Stub;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 381
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    :cond_34b
    const/4 v5, 0x0

    goto :goto_339

    .line 392
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :sswitch_34d
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->enableWBS()Z

    move-result v8

    .line 394
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    if-eqz v8, :cond_362

    const/4 v0, 0x1

    :goto_35c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 395
    :cond_362
    const/4 v0, 0x0

    goto :goto_35c

    .line 400
    .end local v8    # "_result":Z
    :sswitch_364
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disableWBS()Z

    move-result v8

    .line 402
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    if-eqz v8, :cond_379

    const/4 v0, 0x1

    :goto_373
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 403
    :cond_379
    const/4 v0, 0x0

    goto :goto_373

    .line 408
    .end local v8    # "_result":Z
    :sswitch_37b
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 412
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->sendVendorSpecificResponse(ILjava/lang/String;)Z

    move-result v8

    .line 414
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    if-eqz v8, :cond_398

    const/4 v0, 0x1

    :goto_392
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 415
    :cond_398
    const/4 v0, 0x0

    goto :goto_392

    .line 420
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_39a
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3ba

    .line 423
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 428
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_3ad
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getSamsungHandsfreeDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v8

    .line 429
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 431
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 426
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v8    # "_result":Ljava/lang/String;
    :cond_3ba
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_3ad

    .line 435
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3bc
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isDualHfConnected()Z

    move-result v8

    .line 437
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    if-eqz v8, :cond_3d1

    const/4 v0, 0x1

    :goto_3cb
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 438
    :cond_3d1
    const/4 v0, 0x0

    goto :goto_3cb

    .line 443
    .end local v8    # "_result":Z
    :sswitch_3d3
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->switchAudio()Z

    move-result v8

    .line 445
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v8, :cond_3e8

    const/4 v0, 0x1

    :goto_3e2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 446
    :cond_3e8
    const/4 v0, 0x0

    goto :goto_3e2

    .line 451
    .end local v8    # "_result":Z
    :sswitch_3ea
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_415

    .line 454
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 460
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_3fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 462
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothHeadset$Stub;->sendMessageToHeadset(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)Z

    move-result v8

    .line 464
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    if-eqz v8, :cond_417

    const/4 v0, 0x1

    :goto_40f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 457
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :cond_415
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_3fd

    .line 465
    .restart local v2    # "_arg1":I
    .restart local v3    # "_arg2":Ljava/lang/String;
    .restart local v8    # "_result":Z
    :cond_417
    const/4 v0, 0x0

    goto :goto_40f

    .line 470
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_419
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 474
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/bt/hfp/IMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/bt/hfp/IMessageListener;

    move-result-object v2

    .line 475
    .local v2, "_arg1":Lcom/samsung/bt/hfp/IMessageListener;
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->registerMessageListener(ILcom/samsung/bt/hfp/IMessageListener;)Z

    move-result v8

    .line 476
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    if-eqz v8, :cond_43a

    const/4 v0, 0x1

    :goto_434
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 477
    :cond_43a
    const/4 v0, 0x0

    goto :goto_434

    .line 482
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/samsung/bt/hfp/IMessageListener;
    .end local v8    # "_result":Z
    :sswitch_43c
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 485
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->unRegisterMessageListener(I)Z

    move-result v8

    .line 486
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    if-eqz v8, :cond_455

    const/4 v0, 0x1

    :goto_44f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 487
    :cond_455
    const/4 v0, 0x0

    goto :goto_44f

    .line 492
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_457
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 495
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setScoPath(I)Z

    move-result v8

    .line 496
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    if-eqz v8, :cond_470

    const/4 v0, 0x1

    :goto_46a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 497
    :cond_470
    const/4 v0, 0x0

    goto :goto_46a

    .line 43
    :sswitch_data_472
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_35
        0x3 -> :sswitch_5b
        0x4 -> :sswitch_6c
        0x5 -> :sswitch_81
        0x6 -> :sswitch_a3
        0x7 -> :sswitch_ce
        0x8 -> :sswitch_f0
        0x9 -> :sswitch_117
        0xa -> :sswitch_13e
        0xb -> :sswitch_165
        0xc -> :sswitch_194
        0xd -> :sswitch_1b6
        0xe -> :sswitch_1dd
        0xf -> :sswitch_204
        0x10 -> :sswitch_226
        0x11 -> :sswitch_23d
        0x12 -> :sswitch_264
        0x13 -> :sswitch_27b
        0x14 -> :sswitch_2a2
        0x15 -> :sswitch_2c9
        0x16 -> :sswitch_2ec
        0x17 -> :sswitch_306
        0x18 -> :sswitch_31d
        0x19 -> :sswitch_34d
        0x1a -> :sswitch_364
        0x1b -> :sswitch_37b
        0x1c -> :sswitch_39a
        0x1d -> :sswitch_3bc
        0x1e -> :sswitch_3d3
        0x1f -> :sswitch_3ea
        0x20 -> :sswitch_419
        0x21 -> :sswitch_43c
        0x22 -> :sswitch_457
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
