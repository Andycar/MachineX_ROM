.class public abstract Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadsetVoIP.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadsetVoIP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadsetVoIP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadsetVoIP"

.field static final TRANSACTION_answerCall:I = 0x1

.field static final TRANSACTION_cdmaSetSecondCallState:I = 0xd

.field static final TRANSACTION_cdmaSwapSecondCallState:I = 0xc

.field static final TRANSACTION_getDeviceId:I = 0xa

.field static final TRANSACTION_getNetworkOperator:I = 0x5

.field static final TRANSACTION_getSubscriberId:I = 0x9

.field static final TRANSACTION_getSubscriberNumber:I = 0x6

.field static final TRANSACTION_handleVoipCallStateChange:I = 0xe

.field static final TRANSACTION_hangupCall:I = 0x2

.field static final TRANSACTION_isExistVoipCall:I = 0xf

.field static final TRANSACTION_isVoipHolding:I = 0x10

.field static final TRANSACTION_listCurrentCalls:I = 0x7

.field static final TRANSACTION_processChld:I = 0x4

.field static final TRANSACTION_queryPhoneState:I = 0x8

.field static final TRANSACTION_sendDtmf:I = 0x3

.field static final TRANSACTION_updateBtHandsfreeAfterRadioTechnologyChange:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.bluetooth.IBluetoothHeadsetVoIP"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetVoIP;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_3
    return-object v0

    .line 32
    :cond_4
    const-string v1, "android.bluetooth.IBluetoothHeadsetVoIP"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadsetVoIP;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Landroid/bluetooth/IBluetoothHeadsetVoIP;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
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

    const/4 v3, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_134

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 48
    :sswitch_a
    const-string v2, "android.bluetooth.IBluetoothHeadsetVoIP"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 53
    :sswitch_10
    const-string v4, "android.bluetooth.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;->answerCall()Z

    move-result v1

    .line 55
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v1, :cond_1f

    move v2, v3

    :cond_1f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 61
    .end local v1    # "_result":Z
    :sswitch_23
    const-string v4, "android.bluetooth.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;->hangupCall()Z

    move-result v1

    .line 63
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v1, :cond_32

    move v2, v3

    :cond_32
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 69
    .end local v1    # "_result":Z
    :sswitch_36
    const-string v4, "android.bluetooth.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;->sendDtmf(I)Z

    move-result v1

    .line 73
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v1, :cond_49

    move v2, v3

    :cond_49
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 79
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_4d
    const-string v4, "android.bluetooth.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;->processChld(I)Z

    move-result v1

    .line 83
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v1, :cond_60

    move v2, v3

    :cond_60
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 89
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_64
    const-string v2, "android.bluetooth.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 97
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_74
    const-string v2, "android.bluetooth.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v1

    .line 99
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 105
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_84
    const-string v4, "android.bluetooth.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;->listCurrentCalls()Z

    move-result v1

    .line 107
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v1, :cond_93

    move v2, v3

    :cond_93
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 113
    .end local v1    # "_result":Z
    :sswitch_98
    const-string v4, "android.bluetooth.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;->queryPhoneState()Z

    move-result v1

    .line 115
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v1, :cond_a7

    move v2, v3

    :cond_a7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 121
    .end local v1    # "_result":Z
    :sswitch_ac
    const-string v2, "android.bluetooth.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 129
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_bd
    const-string v2, "android.bluetooth.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 131
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 137
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_ce
    const-string v2, "android.bluetooth.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;->updateBtHandsfreeAfterRadioTechnologyChange()V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 144
    :sswitch_db
    const-string v2, "android.bluetooth.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;->cdmaSwapSecondCallState()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 151
    :sswitch_e8
    const-string v4, "android.bluetooth.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fc

    move v0, v3

    .line 154
    .local v0, "_arg0":Z
    :goto_f4
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;->cdmaSetSecondCallState(Z)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_fc
    move v0, v2

    .line 153
    goto :goto_f4

    .line 160
    :sswitch_fe
    const-string v2, "android.bluetooth.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;->handleVoipCallStateChange()V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 167
    :sswitch_10b
    const-string v4, "android.bluetooth.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;->isExistVoipCall()Z

    move-result v1

    .line 169
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v1, :cond_11a

    move v2, v3

    :cond_11a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 175
    .end local v1    # "_result":Z
    :sswitch_11f
    const-string v4, "android.bluetooth.IBluetoothHeadsetVoIP"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;->isVoipHolding()Z

    move-result v1

    .line 177
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v1, :cond_12e

    move v2, v3

    :cond_12e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 44
    nop

    :sswitch_data_134
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_36
        0x4 -> :sswitch_4d
        0x5 -> :sswitch_64
        0x6 -> :sswitch_74
        0x7 -> :sswitch_84
        0x8 -> :sswitch_98
        0x9 -> :sswitch_ac
        0xa -> :sswitch_bd
        0xb -> :sswitch_ce
        0xc -> :sswitch_db
        0xd -> :sswitch_e8
        0xe -> :sswitch_fe
        0xf -> :sswitch_10b
        0x10 -> :sswitch_11f
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
