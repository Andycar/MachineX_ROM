.class public abstract Landroid/bluetooth/IBluetoothSecureManagerService$Stub;
.super Landroid/os/Binder;
.source "IBluetoothSecureManagerService.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothSecureManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothSecureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothSecureManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothSecureManagerService"

.field static final TRANSACTION_addWhiteList:I = 0x7

.field static final TRANSACTION_enableSecureMode:I = 0x1

.field static final TRANSACTION_enableWhiteList:I = 0x5

.field static final TRANSACTION_getSecureModeSetting:I = 0x3

.field static final TRANSACTION_getWhiteListCod:I = 0xc

.field static final TRANSACTION_getWhiteListFirstIndex:I = 0x9

.field static final TRANSACTION_getWhiteListName:I = 0xb

.field static final TRANSACTION_getWhiteListNextIndex:I = 0xa

.field static final TRANSACTION_getWhiteListUuids:I = 0xd

.field static final TRANSACTION_isSecureModeEnabled:I = 0x2

.field static final TRANSACTION_isWhiteListEnabled:I = 0x6

.field static final TRANSACTION_removeWhiteList:I = 0x8

.field static final TRANSACTION_setSecureModeSetting:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSecureManagerService;
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
    const-string v1, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/bluetooth/IBluetoothSecureManagerService;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothSecureManagerService;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/bluetooth/IBluetoothSecureManagerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 12
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_140

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 47
    :sswitch_a
    const-string v5, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v6, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2a

    move v0, v4

    .line 55
    .local v0, "_arg0":Z
    :goto_1c
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->enableSecureMode(Z)Z

    move-result v3

    .line 56
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v3, :cond_26

    move v5, v4

    :cond_26
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_2a
    move v0, v5

    .line 54
    goto :goto_1c

    .line 62
    :sswitch_2c
    const-string v6, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->isSecureModeEnabled()Z

    move-result v3

    .line 64
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v3, :cond_3b

    move v5, v4

    :cond_3b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 70
    .end local v3    # "_result":Z
    :sswitch_3f
    const-string v5, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v3

    .line 74
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 80
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_53
    const-string v6, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 85
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->setSecureModeSetting(Ljava/lang/String;I)Z

    move-result v3

    .line 86
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v3, :cond_6a

    move v5, v4

    :cond_6a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 92
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Z
    :sswitch_6e
    const-string v6, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_88

    move v0, v4

    .line 95
    .local v0, "_arg0":Z
    :goto_7a
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->enableWhiteList(Z)Z

    move-result v3

    .line 96
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v3, :cond_84

    move v5, v4

    :cond_84
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_88
    move v0, v5

    .line 94
    goto :goto_7a

    .line 102
    :sswitch_8a
    const-string v6, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->isWhiteListEnabled()Z

    move-result v3

    .line 104
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v3, :cond_99

    move v5, v4

    :cond_99
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 110
    .end local v3    # "_result":Z
    :sswitch_9e
    const-string v6, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 116
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v3

    .line 118
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v3, :cond_b9

    move v5, v4

    :cond_b9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 124
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_be
    const-string v6, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 129
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->removeWhiteList(Ljava/lang/String;I)Z

    move-result v3

    .line 130
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v3, :cond_d5

    move v5, v4

    :cond_d5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 136
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Z
    :sswitch_da
    const-string v5, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->getWhiteListFirstIndex()I

    move-result v3

    .line 138
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 144
    .end local v3    # "_result":I
    :sswitch_eb
    const-string v5, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 147
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->getWhiteListNextIndex(I)I

    move-result v3

    .line 148
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 154
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_100
    const-string v5, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->getWhiteListName(I)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 164
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_115
    const-string v5, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 167
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->getWhiteListCod(I)I

    move-result v3

    .line 168
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 174
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_12a
    const-string v5, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->getWhiteListUuids(I)[Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 43
    nop

    :sswitch_data_140
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_53
        0x5 -> :sswitch_6e
        0x6 -> :sswitch_8a
        0x7 -> :sswitch_9e
        0x8 -> :sswitch_be
        0x9 -> :sswitch_da
        0xa -> :sswitch_eb
        0xb -> :sswitch_100
        0xc -> :sswitch_115
        0xd -> :sswitch_12a
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
