.class public abstract Lcom/samsung/wfd/IWfdManager$Stub;
.super Landroid/os/Binder;
.source "IWfdManager.java"

# interfaces
.implements Lcom/samsung/wfd/IWfdManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/IWfdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/IWfdManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.wfd.IWfdManager"

.field static final TRANSACTION_WFDGetSubtitleStatus:I = 0x12

.field static final TRANSACTION_WFDGetSuspendStatus:I = 0x15

.field static final TRANSACTION_WFDPostSubtitle:I = 0x14

.field static final TRANSACTION_WFDPostSuspend:I = 0x17

.field static final TRANSACTION_WFDSetSubtitleStatus:I = 0x13

.field static final TRANSACTION_WFDSetSuspendStatus:I = 0x16

.field static final TRANSACTION_getDisplayDeviceAddress:I = 0xc

.field static final TRANSACTION_getDisplayDeviceName:I = 0xd

.field static final TRANSACTION_getDisplayDeviceSecure:I = 0xe

.field static final TRANSACTION_getMessenger:I = 0x10

.field static final TRANSACTION_getPreviousWifiState:I = 0x6

.field static final TRANSACTION_getWfdInfo:I = 0xb

.field static final TRANSACTION_getWfdMode:I = 0x1c

.field static final TRANSACTION_getWfdSinkResolution:I = 0x11

.field static final TRANSACTION_getWfdState:I = 0xf

.field static final TRANSACTION_handleDown:I = 0x21

.field static final TRANSACTION_handleMove:I = 0x20

.field static final TRANSACTION_handleUp:I = 0x22

.field static final TRANSACTION_isActiveUIBC:I = 0x1f

.field static final TRANSACTION_isDongleRenameAvailable:I = 0x5

.field static final TRANSACTION_isWfdEnabledPlayer:I = 0x1a

.field static final TRANSACTION_keyDown:I = 0x23

.field static final TRANSACTION_keyUp:I = 0x24

.field static final TRANSACTION_notifyContentFinish:I = 0x19

.field static final TRANSACTION_notifyEnterHomeSyncApp:I = 0x25

.field static final TRANSACTION_notifyExitHomeSyncApp:I = 0x26

.field static final TRANSACTION_sendToWfdStartRTSP:I = 0x1e

.field static final TRANSACTION_sendToWfdStartRtspWithIface:I = 0x1d

.field static final TRANSACTION_setDeviceName:I = 0x4

.field static final TRANSACTION_setDisplayDeviceAddress:I = 0x27

.field static final TRANSACTION_setDisplayDeviceName:I = 0x28

.field static final TRANSACTION_setDisplayDeviceSecure:I = 0x29

.field static final TRANSACTION_setDisplayRotation:I = 0x2a

.field static final TRANSACTION_setSideSyncResolution:I = 0x3

.field static final TRANSACTION_setWfdEnabled:I = 0x2

.field static final TRANSACTION_setWfdEnabledDialog:I = 0x1

.field static final TRANSACTION_setWfdEnabledPlayer:I = 0x18

.field static final TRANSACTION_setWfdModeAlways:I = 0x1b

.field static final TRANSACTION_setWfdRestart:I = 0x9

.field static final TRANSACTION_setWfdRestartOption:I = 0xa

.field static final TRANSACTION_setWfdTerminate:I = 0x7

.field static final TRANSACTION_setWfdTerminateExt:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wfd/IWfdManager;
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
    const-string v1, "com.samsung.wfd.IWfdManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/wfd/IWfdManager;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/samsung/wfd/IWfdManager;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 13
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_3a0

    .line 454
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 47
    :sswitch_a
    const-string v6, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2a

    move v0, v5

    .line 55
    .local v0, "_arg0":Z
    :goto_1c
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->setWfdEnabledDialog(Z)Z

    move-result v4

    .line 56
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v4, :cond_26

    move v6, v5

    :cond_26
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_2a
    move v0, v6

    .line 54
    goto :goto_1c

    .line 62
    :sswitch_2c
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->setWfdEnabled(I)Z

    move-result v4

    .line 66
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v4, :cond_3f

    move v6, v5

    :cond_3f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 72
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_43
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->setSideSyncResolution(I)Z

    move-result v4

    .line 76
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v4, :cond_56

    move v6, v5

    :cond_56
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 82
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_5a
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->setDeviceName(Ljava/lang/String;)Z

    move-result v4

    .line 86
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v4, :cond_6d

    move v6, v5

    :cond_6d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 92
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_71
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->isDongleRenameAvailable()Z

    move-result v4

    .line 94
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v4, :cond_80

    move v6, v5

    :cond_80
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 100
    .end local v4    # "_result":Z
    :sswitch_84
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->getPreviousWifiState()Z

    move-result v4

    .line 102
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v4, :cond_93

    move v6, v5

    :cond_93
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 108
    .end local v4    # "_result":Z
    :sswitch_98
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->setWfdTerminate()Z

    move-result v4

    .line 110
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v4, :cond_a7

    move v6, v5

    :cond_a7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 116
    .end local v4    # "_result":Z
    :sswitch_ac
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c7

    move v0, v5

    .line 119
    .local v0, "_arg0":Z
    :goto_b8
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->setWfdTerminateExt(Z)Z

    move-result v4

    .line 120
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v4, :cond_c2

    move v6, v5

    :cond_c2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_c7
    move v0, v6

    .line 118
    goto :goto_b8

    .line 126
    :sswitch_c9
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->setWfdRestart()Z

    move-result v4

    .line 128
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v4, :cond_d8

    move v6, v5

    :cond_d8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 134
    .end local v4    # "_result":Z
    :sswitch_dd
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->setWfdRestartOption(I)Z

    move-result v4

    .line 138
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v4, :cond_f0

    move v6, v5

    :cond_f0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 144
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_f5
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->getWfdInfo()Lcom/samsung/wfd/WfdInfo;

    move-result-object v4

    .line 146
    .local v4, "_result":Lcom/samsung/wfd/WfdInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v4, :cond_10b

    .line 148
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    invoke-virtual {v4, p3, v5}, Lcom/samsung/wfd/WfdInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 152
    :cond_10b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 158
    .end local v4    # "_result":Lcom/samsung/wfd/WfdInfo;
    :sswitch_110
    const-string v6, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->getDisplayDeviceAddress()Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 166
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_121
    const-string v6, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v4

    .line 168
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 174
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_132
    const-string v6, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->getDisplayDeviceSecure()I

    move-result v4

    .line 176
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 182
    .end local v4    # "_result":I
    :sswitch_143
    const-string v6, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->getWfdState()I

    move-result v4

    .line 184
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 190
    .end local v4    # "_result":I
    :sswitch_154
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->getMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 192
    .local v4, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v4, :cond_16a

    .line 194
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    invoke-virtual {v4, p3, v5}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 198
    :cond_16a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 204
    .end local v4    # "_result":Landroid/os/Messenger;
    :sswitch_16f
    const-string v6, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->getWfdSinkResolution()I

    move-result v4

    .line 206
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 212
    .end local v4    # "_result":I
    :sswitch_180
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->WFDGetSubtitleStatus()Z

    move-result v4

    .line 214
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    if-eqz v4, :cond_18f

    move v6, v5

    :cond_18f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 220
    .end local v4    # "_result":Z
    :sswitch_194
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1af

    move v0, v5

    .line 223
    .local v0, "_arg0":Z
    :goto_1a0
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->WFDSetSubtitleStatus(Z)Z

    move-result v4

    .line 224
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v4, :cond_1aa

    move v6, v5

    :cond_1aa
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_1af
    move v0, v6

    .line 222
    goto :goto_1a0

    .line 230
    :sswitch_1b1
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 235
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/wfd/IWfdManager$Stub;->WFDPostSubtitle(Ljava/lang/String;I)Z

    move-result v4

    .line 236
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    if-eqz v4, :cond_1c8

    move v6, v5

    :cond_1c8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 242
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_1cd
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->WFDGetSuspendStatus()Z

    move-result v4

    .line 244
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v4, :cond_1dc

    move v6, v5

    :cond_1dc
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 250
    .end local v4    # "_result":Z
    :sswitch_1e1
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1fc

    move v0, v5

    .line 253
    .local v0, "_arg0":Z
    :goto_1ed
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->WFDSetSuspendStatus(Z)Z

    move-result v4

    .line 254
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v4, :cond_1f7

    move v6, v5

    :cond_1f7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_1fc
    move v0, v6

    .line 252
    goto :goto_1ed

    .line 260
    :sswitch_1fe
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->WFDPostSuspend(Ljava/lang/String;)Z

    move-result v4

    .line 264
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    if-eqz v4, :cond_211

    move v6, v5

    :cond_211
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 270
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_216
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_231

    move v0, v5

    .line 273
    .local v0, "_arg0":Z
    :goto_222
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->setWfdEnabledPlayer(Z)Z

    move-result v4

    .line 274
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v4, :cond_22c

    move v6, v5

    :cond_22c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_231
    move v0, v6

    .line 272
    goto :goto_222

    .line 280
    :sswitch_233
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->notifyContentFinish()Z

    move-result v4

    .line 282
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    if-eqz v4, :cond_242

    move v6, v5

    :cond_242
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 288
    .end local v4    # "_result":Z
    :sswitch_247
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->isWfdEnabledPlayer()Z

    move-result v4

    .line 290
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v4, :cond_256

    move v6, v5

    :cond_256
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 296
    .end local v4    # "_result":Z
    :sswitch_25b
    const-string v6, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->setWfdModeAlways()V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 303
    :sswitch_268
    const-string v6, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->getWfdMode()I

    move-result v4

    .line 305
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 311
    .end local v4    # "_result":I
    :sswitch_279
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->sendToWfdStartRtspWithIface(Ljava/lang/String;)Z

    move-result v4

    .line 315
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v4, :cond_28c

    move v6, v5

    :cond_28c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 321
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_291
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->sendToWfdStartRTSP()Z

    move-result v4

    .line 323
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    if-eqz v4, :cond_2a0

    move v6, v5

    :cond_2a0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 329
    .end local v4    # "_result":Z
    :sswitch_2a5
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->isActiveUIBC()Z

    move-result v4

    .line 331
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    if-eqz v4, :cond_2b4

    move v6, v5

    :cond_2b4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 337
    .end local v4    # "_result":Z
    :sswitch_2b9
    const-string v6, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 341
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 343
    .local v1, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 345
    .local v2, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 346
    .local v3, "_arg3":[I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/wfd/IWfdManager$Stub;->handleMove(I[I[I[I)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 352
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":[I
    .end local v3    # "_arg3":[I
    :sswitch_2d6
    const-string v6, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 356
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 358
    .restart local v1    # "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 360
    .restart local v2    # "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 361
    .restart local v3    # "_arg3":[I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/wfd/IWfdManager$Stub;->handleDown(I[I[I[I)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 367
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":[I
    .end local v3    # "_arg3":[I
    :sswitch_2f3
    const-string v6, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 371
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 373
    .restart local v1    # "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 375
    .restart local v2    # "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 376
    .restart local v3    # "_arg3":[I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/wfd/IWfdManager$Stub;->handleUp(I[I[I[I)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 382
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":[I
    .end local v3    # "_arg3":[I
    :sswitch_310
    const-string v6, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 386
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 387
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/wfd/IWfdManager$Stub;->keyDown(II)V

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 393
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_325
    const-string v6, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 397
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 398
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/wfd/IWfdManager$Stub;->keyUp(II)V

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 404
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_33a
    const-string v6, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->notifyEnterHomeSyncApp()V

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 411
    :sswitch_347
    const-string v6, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->notifyExitHomeSyncApp()V

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 418
    :sswitch_354
    const-string v6, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->setDisplayDeviceAddress(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 427
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_365
    const-string v6, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 430
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->setDisplayDeviceName(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 436
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_376
    const-string v6, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 439
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->setDisplayDeviceSecure(I)V

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 445
    .end local v0    # "_arg0":I
    :sswitch_387
    const-string v7, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 448
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->setDisplayRotation(I)Z

    move-result v4

    .line 449
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    if-eqz v4, :cond_39a

    move v6, v5

    :cond_39a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 43
    nop

    :sswitch_data_3a0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_43
        0x4 -> :sswitch_5a
        0x5 -> :sswitch_71
        0x6 -> :sswitch_84
        0x7 -> :sswitch_98
        0x8 -> :sswitch_ac
        0x9 -> :sswitch_c9
        0xa -> :sswitch_dd
        0xb -> :sswitch_f5
        0xc -> :sswitch_110
        0xd -> :sswitch_121
        0xe -> :sswitch_132
        0xf -> :sswitch_143
        0x10 -> :sswitch_154
        0x11 -> :sswitch_16f
        0x12 -> :sswitch_180
        0x13 -> :sswitch_194
        0x14 -> :sswitch_1b1
        0x15 -> :sswitch_1cd
        0x16 -> :sswitch_1e1
        0x17 -> :sswitch_1fe
        0x18 -> :sswitch_216
        0x19 -> :sswitch_233
        0x1a -> :sswitch_247
        0x1b -> :sswitch_25b
        0x1c -> :sswitch_268
        0x1d -> :sswitch_279
        0x1e -> :sswitch_291
        0x1f -> :sswitch_2a5
        0x20 -> :sswitch_2b9
        0x21 -> :sswitch_2d6
        0x22 -> :sswitch_2f3
        0x23 -> :sswitch_310
        0x24 -> :sswitch_325
        0x25 -> :sswitch_33a
        0x26 -> :sswitch_347
        0x27 -> :sswitch_354
        0x28 -> :sswitch_365
        0x29 -> :sswitch_376
        0x2a -> :sswitch_387
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
