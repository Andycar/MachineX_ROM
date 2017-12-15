.class public abstract Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothRadioMgrCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothRadioMgrCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothRadioMgrCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothRadioMgrCallback"

.field static final TRANSACTION_onAirplaneModeChange:I = 0x3

.field static final TRANSACTION_onBTRadioStateChange:I = 0x2

.field static final TRANSACTION_onGattServiceStateChange:I = 0x1

.field static final TRANSACTION_onUserSwitched:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetoothRadioMgrCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothRadioMgrCallback;
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
    const-string v1, "android.bluetooth.IBluetoothRadioMgrCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/bluetooth/IBluetoothRadioMgrCallback;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothRadioMgrCallback;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 9
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
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_5e

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_9
    return v2

    .line 47
    :sswitch_a
    const-string v3, "android.bluetooth.IBluetoothRadioMgrCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v3, "android.bluetooth.IBluetoothRadioMgrCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c

    move v0, v2

    .line 56
    .local v0, "_arg0":Z
    :cond_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    .line 57
    .local v1, "_arg1":Landroid/bluetooth/IBluetoothGatt;
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub;->onGattServiceStateChange(ZLandroid/bluetooth/IBluetoothGatt;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 63
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/bluetooth/IBluetoothGatt;
    :sswitch_2b
    const-string v3, "android.bluetooth.IBluetoothRadioMgrCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_37

    move v0, v2

    .line 66
    .restart local v0    # "_arg0":Z
    :cond_37
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub;->onBTRadioStateChange(Z)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 72
    .end local v0    # "_arg0":Z
    :sswitch_3e
    const-string v3, "android.bluetooth.IBluetoothRadioMgrCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4a

    move v0, v2

    .line 75
    .restart local v0    # "_arg0":Z
    :cond_4a
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub;->onAirplaneModeChange(Z)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 81
    .end local v0    # "_arg0":Z
    :sswitch_51
    const-string v3, "android.bluetooth.IBluetoothRadioMgrCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothRadioMgrCallback$Stub;->onUserSwitched()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 43
    nop

    :sswitch_data_5e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_51
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
