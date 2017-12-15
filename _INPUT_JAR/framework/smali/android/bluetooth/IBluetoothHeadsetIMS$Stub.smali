.class public abstract Landroid/bluetooth/IBluetoothHeadsetIMS$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadsetIMS.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadsetIMS;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadsetIMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadsetIMS$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadsetIMS"

.field static final TRANSACTION_answerCall:I = 0x1

.field static final TRANSACTION_hangupCall:I = 0x2

.field static final TRANSACTION_hasActiveIMSCall:I = 0x7

.field static final TRANSACTION_listCurrentCalls:I = 0x5

.field static final TRANSACTION_processChld:I = 0x4

.field static final TRANSACTION_queryPhoneState:I = 0x6

.field static final TRANSACTION_sendDtmf:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.bluetooth.IBluetoothHeadsetIMS"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadsetIMS$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetIMS;
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
    const-string v1, "android.bluetooth.IBluetoothHeadsetIMS"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadsetIMS;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Landroid/bluetooth/IBluetoothHeadsetIMS;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Landroid/bluetooth/IBluetoothHeadsetIMS$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothHeadsetIMS$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_9e

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 48
    :sswitch_a
    const-string v2, "android.bluetooth.IBluetoothHeadsetIMS"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 53
    :sswitch_10
    const-string v4, "android.bluetooth.IBluetoothHeadsetIMS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetIMS$Stub;->answerCall()Z

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
    const-string v4, "android.bluetooth.IBluetoothHeadsetIMS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetIMS$Stub;->hangupCall()Z

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
    const-string v4, "android.bluetooth.IBluetoothHeadsetIMS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetIMS$Stub;->sendDtmf(I)Z

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
    const-string v4, "android.bluetooth.IBluetoothHeadsetIMS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetIMS$Stub;->processChld(I)Z

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
    const-string v4, "android.bluetooth.IBluetoothHeadsetIMS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetIMS$Stub;->listCurrentCalls()Z

    move-result v1

    .line 91
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v1, :cond_73

    move v2, v3

    :cond_73
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 97
    .end local v1    # "_result":Z
    :sswitch_77
    const-string v4, "android.bluetooth.IBluetoothHeadsetIMS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetIMS$Stub;->queryPhoneState()Z

    move-result v1

    .line 99
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v1, :cond_86

    move v2, v3

    :cond_86
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 105
    .end local v1    # "_result":Z
    :sswitch_8a
    const-string v4, "android.bluetooth.IBluetoothHeadsetIMS"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetIMS$Stub;->hasActiveIMSCall()Z

    move-result v1

    .line 107
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v1, :cond_99

    move v2, v3

    :cond_99
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 44
    :sswitch_data_9e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_36
        0x4 -> :sswitch_4d
        0x5 -> :sswitch_64
        0x6 -> :sswitch_77
        0x7 -> :sswitch_8a
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
