.class public abstract Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHidDeviceCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHidDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHidDeviceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHidDeviceCallback"

.field static final TRANSACTION_onAppStatusChanged:I = 0x1

.field static final TRANSACTION_onConnectionStateChanged:I = 0x2

.field static final TRANSACTION_onGetReport:I = 0x3

.field static final TRANSACTION_onIntrData:I = 0x6

.field static final TRANSACTION_onSetProtocol:I = 0x5

.field static final TRANSACTION_onSetReport:I = 0x4

.field static final TRANSACTION_onVirtualCableUnplug:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHidDeviceCallback;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/bluetooth/IBluetoothHidDeviceCallback;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
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
    const/4 v3, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_c8

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 43
    :sswitch_9
    const-string v4, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 48
    :sswitch_f
    const-string v4, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e

    .line 51
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 57
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_40

    .line 58
    sget-object v4, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .line 64
    .local v1, "_arg1":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    :goto_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_42

    move v2, v3

    .line 65
    .local v2, "_arg2":Z
    :goto_37
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Z)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 54
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    .end local v2    # "_arg2":Z
    :cond_3e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_22

    .line 61
    :cond_40
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    goto :goto_30

    .line 64
    :cond_42
    const/4 v2, 0x0

    goto :goto_37

    .line 71
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    :sswitch_44
    const-string v4, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_62

    .line 74
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 80
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 81
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 77
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    :cond_62
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_57

    .line 87
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_64
    const-string v4, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 91
    .local v0, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 93
    .local v1, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 94
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onGetReport(BBI)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 100
    .end local v0    # "_arg0":B
    .end local v1    # "_arg1":B
    .end local v2    # "_arg2":I
    :sswitch_7c
    const-string v4, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 104
    .restart local v0    # "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 106
    .restart local v1    # "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 107
    .local v2, "_arg2":[B
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onSetReport(BB[B)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 113
    .end local v0    # "_arg0":B
    .end local v1    # "_arg1":B
    .end local v2    # "_arg2":[B
    :sswitch_95
    const-string v4, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 116
    .restart local v0    # "_arg0":B
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onSetProtocol(B)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 122
    .end local v0    # "_arg0":B
    :sswitch_a6
    const-string v4, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 126
    .restart local v0    # "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 127
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onIntrData(B[B)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 133
    .end local v0    # "_arg0":B
    .end local v1    # "_arg1":[B
    :sswitch_bb
    const-string v4, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onVirtualCableUnplug()V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 39
    :sswitch_data_c8
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_44
        0x3 -> :sswitch_64
        0x4 -> :sswitch_7c
        0x5 -> :sswitch_95
        0x6 -> :sswitch_a6
        0x7 -> :sswitch_bb
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
