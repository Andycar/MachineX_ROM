.class public abstract Landroid/bluetooth/IBluetoothHidDevice$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHidDevice.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHidDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHidDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHidDevice"

.field static final TRANSACTION_connect:I = 0x7

.field static final TRANSACTION_disconnect:I = 0x8

.field static final TRANSACTION_registerApp:I = 0x1

.field static final TRANSACTION_replyReport:I = 0x4

.field static final TRANSACTION_reportError:I = 0x5

.field static final TRANSACTION_sendReport:I = 0x3

.field static final TRANSACTION_unplug:I = 0x6

.field static final TRANSACTION_unregisterApp:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidDevice;
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
    const-string v1, "android.bluetooth.IBluetoothHidDevice"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHidDevice;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/bluetooth/IBluetoothHidDevice;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/bluetooth/IBluetoothHidDevice$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothHidDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 14
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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_122

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 43
    :sswitch_a
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_64

    .line 51
    sget-object v0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .line 57
    .local v1, "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_66

    .line 58
    sget-object v0, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    .line 64
    .local v2, "_arg1":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    :goto_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_68

    .line 65
    sget-object v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    .line 71
    .local v3, "_arg2":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    :goto_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6a

    .line 72
    sget-object v0, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    .line 78
    .local v4, "_arg3":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    :goto_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v5

    .local v5, "_arg4":Landroid/bluetooth/IBluetoothHidDeviceCallback;
    move-object v0, p0

    .line 79
    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Z

    move-result v6

    .line 80
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v6, :cond_6c

    move v0, v7

    :goto_60
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 54
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .end local v4    # "_arg3":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .end local v5    # "_arg4":Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .end local v6    # "_result":Z
    :cond_64
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    goto :goto_23

    .line 61
    :cond_66
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    goto :goto_31

    .line 68
    :cond_68
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    goto :goto_3f

    .line 75
    :cond_6a
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    goto :goto_4d

    .restart local v5    # "_arg4":Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .restart local v6    # "_result":Z
    :cond_6c
    move v0, v8

    .line 81
    goto :goto_60

    .line 86
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .end local v3    # "_arg2":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .end local v4    # "_arg3":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .end local v5    # "_arg4":Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .end local v6    # "_result":Z
    :sswitch_6e
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_90

    .line 89
    sget-object v0, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .line 94
    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    :goto_81
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->unregisterApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Z

    move-result v6

    .line 95
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v6, :cond_8b

    move v8, v7

    :cond_8b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 92
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    .end local v6    # "_result":Z
    :cond_90
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    goto :goto_81

    .line 101
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    :sswitch_92
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 105
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 106
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->sendReport(I[B)Z

    move-result v6

    .line 107
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v6, :cond_a9

    move v8, v7

    :cond_a9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 113
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v6    # "_result":Z
    :sswitch_ae
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 117
    .local v1, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 119
    .local v2, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 120
    .local v3, "_arg2":[B
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->replyReport(BB[B)Z

    move-result v6

    .line 121
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v6, :cond_c9

    move v8, v7

    :cond_c9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 127
    .end local v1    # "_arg0":B
    .end local v2    # "_arg1":B
    .end local v3    # "_arg2":[B
    .end local v6    # "_result":Z
    :sswitch_ce
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 130
    .restart local v1    # "_arg0":B
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->reportError(B)Z

    move-result v6

    .line 131
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v6, :cond_e1

    move v8, v7

    :cond_e1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 137
    .end local v1    # "_arg0":B
    .end local v6    # "_result":Z
    :sswitch_e6
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->unplug()Z

    move-result v6

    .line 139
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v6, :cond_f5

    move v8, v7

    :cond_f5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 145
    .end local v6    # "_result":Z
    :sswitch_fa
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->connect()Z

    move-result v6

    .line 147
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v6, :cond_109

    move v8, v7

    :cond_109
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 153
    .end local v6    # "_result":Z
    :sswitch_10e
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->disconnect()Z

    move-result v6

    .line 155
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v6, :cond_11d

    move v8, v7

    :cond_11d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 39
    :sswitch_data_122
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_6e
        0x3 -> :sswitch_92
        0x4 -> :sswitch_ae
        0x5 -> :sswitch_ce
        0x6 -> :sswitch_e6
        0x7 -> :sswitch_fa
        0x8 -> :sswitch_10e
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
