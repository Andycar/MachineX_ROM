.class public abstract Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadsetPhone.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadsetPhone;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadsetPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadsetPhone$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadsetPhone"

.field static final TRANSACTION_answerCall:I = 0x1

.field static final TRANSACTION_cdmaSetSecondCallState:I = 0xe

.field static final TRANSACTION_cdmaSwapSecondCallState:I = 0xd

.field static final TRANSACTION_getDeviceId:I = 0xb

.field static final TRANSACTION_getNetworkOperator:I = 0x5

.field static final TRANSACTION_getSubscriberId:I = 0xa

.field static final TRANSACTION_getSubscriberNumber:I = 0x6

.field static final TRANSACTION_hangupCall:I = 0x2

.field static final TRANSACTION_listCurrentCalls:I = 0x7

.field static final TRANSACTION_processChld:I = 0x4

.field static final TRANSACTION_queryCallState:I = 0x9

.field static final TRANSACTION_queryPhoneState:I = 0x8

.field static final TRANSACTION_sendDtmf:I = 0x3

.field static final TRANSACTION_updateBtHandsfreeAfterRadioTechnologyChange:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetPhone;
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
    const-string v1, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothHeadsetPhone;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v3, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_112

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 47
    :sswitch_a
    const-string v2, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v4, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->answerCall()Z

    move-result v1

    .line 54
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v1, :cond_1f

    move v2, v3

    :cond_1f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 60
    .end local v1    # "_result":Z
    :sswitch_23
    const-string v4, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->hangupCall()Z

    move-result v1

    .line 62
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v1, :cond_32

    move v2, v3

    :cond_32
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 68
    .end local v1    # "_result":Z
    :sswitch_36
    const-string v4, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->sendDtmf(I)Z

    move-result v1

    .line 72
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v1, :cond_49

    move v2, v3

    :cond_49
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 78
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_4d
    const-string v4, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->processChld(I)Z

    move-result v1

    .line 82
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v1, :cond_60

    move v2, v3

    :cond_60
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 88
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_64
    const-string v2, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 96
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_74
    const-string v2, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v1

    .line 98
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 104
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_84
    const-string v4, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->listCurrentCalls()Z

    move-result v1

    .line 106
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v1, :cond_93

    move v2, v3

    :cond_93
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 112
    .end local v1    # "_result":Z
    :sswitch_98
    const-string v4, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->queryPhoneState()Z

    move-result v1

    .line 114
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v1, :cond_a7

    move v2, v3

    :cond_a7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 120
    .end local v1    # "_result":Z
    :sswitch_ac
    const-string v4, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->queryCallState()Z

    move-result v1

    .line 122
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v1, :cond_bb

    move v2, v3

    :cond_bb
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 128
    .end local v1    # "_result":Z
    :sswitch_c0
    const-string v2, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 136
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_d1
    const-string v2, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 138
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 144
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_e2
    const-string v2, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->updateBtHandsfreeAfterRadioTechnologyChange()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 151
    :sswitch_ef
    const-string v2, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->cdmaSwapSecondCallState()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 158
    :sswitch_fc
    const-string v4, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_110

    move v0, v3

    .line 161
    .local v0, "_arg0":Z
    :goto_108
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->cdmaSetSecondCallState(Z)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_110
    move v0, v2

    .line 160
    goto :goto_108

    .line 43
    :sswitch_data_112
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
        0xa -> :sswitch_c0
        0xb -> :sswitch_d1
        0xc -> :sswitch_e2
        0xd -> :sswitch_ef
        0xe -> :sswitch_fc
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
