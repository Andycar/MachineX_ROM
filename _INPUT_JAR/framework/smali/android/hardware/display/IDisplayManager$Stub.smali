.class public abstract Landroid/hardware/display/IDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IDisplayManager"

.field static final TRANSACTION_connectWifiDisplay:I = 0x6

.field static final TRANSACTION_connectWifiDisplayWithMode:I = 0x14

.field static final TRANSACTION_connectWifiDisplayWithPin:I = 0x13

.field static final TRANSACTION_createVirtualDisplay:I = 0xd

.field static final TRANSACTION_disableWifiDisplay:I = 0x17

.field static final TRANSACTION_disconnectWifiDisplay:I = 0x7

.field static final TRANSACTION_enableOverlayMagnifier:I = 0x26

.field static final TRANSACTION_enableWfdServiceWifiDisplay:I = 0x16

.field static final TRANSACTION_enableWifiDisplay:I = 0x15

.field static final TRANSACTION_forgetWifiDisplay:I = 0x9

.field static final TRANSACTION_getDisplayIds:I = 0x2

.field static final TRANSACTION_getDisplayInfo:I = 0x1

.field static final TRANSACTION_getDisplayInfoEx:I = 0x29

.field static final TRANSACTION_getLastConnectedDisplay:I = 0x25

.field static final TRANSACTION_getWifiDisplayBridgeStatus:I = 0x1a

.field static final TRANSACTION_getWifiDisplayStatus:I = 0xc

.field static final TRANSACTION_isConnWithPinSupported:I = 0x20

.field static final TRANSACTION_isDongleRenameAvailable:I = 0x21

.field static final TRANSACTION_isSinkAvailable:I = 0x1e

.field static final TRANSACTION_isSourceAvailable:I = 0x1f

.field static final TRANSACTION_isWfdEngineRunning:I = 0x1b

.field static final TRANSACTION_isWifiDisplayBridgeAvailable:I = 0x19

.field static final TRANSACTION_notifyEnterHomeSyncApp:I = 0x1c

.field static final TRANSACTION_notifyExitHomeSyncApp:I = 0x1d

.field static final TRANSACTION_pauseWifiDisplay:I = 0xa

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_releaseVirtualDisplay:I = 0x10

.field static final TRANSACTION_renameDongle:I = 0x22

.field static final TRANSACTION_renameWifiDisplay:I = 0x8

.field static final TRANSACTION_resizeVirtualDisplay:I = 0xe

.field static final TRANSACTION_restartWifiDisplay:I = 0x18

.field static final TRANSACTION_resumeWifiDisplay:I = 0xb

.field static final TRANSACTION_scanWifiDisplays:I = 0x11

.field static final TRANSACTION_setMagnificationSettings:I = 0x28

.field static final TRANSACTION_setMagnificationSpec:I = 0x27

.field static final TRANSACTION_setParameter:I = 0x24

.field static final TRANSACTION_setScanningChannel:I = 0x23

.field static final TRANSACTION_setVirtualDisplaySurface:I = 0xf

.field static final TRANSACTION_startWifiDisplayScan:I = 0x4

.field static final TRANSACTION_stopScanWifiDisplays:I = 0x12

.field static final TRANSACTION_stopWifiDisplayScan:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;
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
    const-string v1, "android.hardware.display.IDisplayManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/display/IDisplayManager;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/hardware/display/IDisplayManager;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/hardware/display/IDisplayManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/display/IDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 16
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
    .line 39
    sparse-switch p1, :sswitch_data_3d4

    .line 482
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 43
    :sswitch_8
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    goto :goto_7

    .line 48
    :sswitch_f
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v10

    .line 52
    .local v10, "_result":Landroid/view/DisplayInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v10, :cond_2b

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/view/DisplayInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    :goto_29
    const/4 v0, 0x1

    goto :goto_7

    .line 58
    :cond_2b
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 64
    .end local v1    # "_arg0":I
    .end local v10    # "_result":Landroid/view/DisplayInfo;
    :sswitch_30
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayIds()[I

    move-result-object v10

    .line 66
    .local v10, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 68
    const/4 v0, 0x1

    goto :goto_7

    .line 72
    .end local v10    # "_result":[I
    :sswitch_41
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object v1

    .line 75
    .local v1, "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    const/4 v0, 0x1

    goto :goto_7

    .line 81
    .end local v1    # "_arg0":Landroid/hardware/display/IDisplayManagerCallback;
    :sswitch_56
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayScan()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v0, 0x1

    goto :goto_7

    .line 88
    :sswitch_63
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopWifiDisplayScan()V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v0, 0x1

    goto :goto_7

    .line 95
    :sswitch_70
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplay(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    const/4 v0, 0x1

    goto :goto_7

    .line 104
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_81
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->disconnectWifiDisplay()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 111
    :sswitch_8f
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 122
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_a5
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 131
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_b7
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->pauseWifiDisplay()V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 138
    :sswitch_c5
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->resumeWifiDisplay()V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 145
    :sswitch_d3
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v10

    .line 147
    .local v10, "_result":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v10, :cond_ec

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/hardware/display/WifiDisplayStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    :goto_e9
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 153
    :cond_ec
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e9

    .line 159
    .end local v10    # "_result":Landroid/hardware/display/WifiDisplayStatus;
    :sswitch_f1
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    .line 163
    .local v1, "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v2

    .line 165
    .local v2, "_arg1":Landroid/media/projection/IMediaProjection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 171
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 173
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 175
    .local v7, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13a

    .line 176
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    .line 182
    .local v8, "_arg7":Landroid/view/Surface;
    :goto_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg8":I
    move-object v0, p0

    .line 183
    invoke-virtual/range {v0 .. v9}, Landroid/hardware/display/IDisplayManager$Stub;->createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I

    move-result v10

    .line 184
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 179
    .end local v8    # "_arg7":Landroid/view/Surface;
    .end local v9    # "_arg8":I
    .end local v10    # "_result":I
    :cond_13a
    const/4 v8, 0x0

    .restart local v8    # "_arg7":Landroid/view/Surface;
    goto :goto_128

    .line 190
    .end local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v2    # "_arg1":Landroid/media/projection/IMediaProjection;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Landroid/view/Surface;
    :sswitch_13c
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    .line 194
    .restart local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 198
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 199
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/display/IDisplayManager$Stub;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 205
    .end local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :sswitch_15e
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    .line 209
    .restart local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_182

    .line 210
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 215
    .local v2, "_arg1":Landroid/view/Surface;
    :goto_179
    invoke-virtual {p0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 213
    .end local v2    # "_arg1":Landroid/view/Surface;
    :cond_182
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/view/Surface;
    goto :goto_179

    .line 221
    .end local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v2    # "_arg1":Landroid/view/Surface;
    :sswitch_184
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    .line 224
    .restart local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 230
    .end local v1    # "_arg0":Landroid/hardware/display/IVirtualDisplayCallback;
    :sswitch_19a
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->scanWifiDisplays()V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 237
    :sswitch_1a8
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopScanWifiDisplays()V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 244
    :sswitch_1b6
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 253
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_1c8
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplayWithMode(ILjava/lang/String;)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 264
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_1de
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1fe

    .line 267
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 273
    .local v1, "_arg0":Landroid/net/wifi/p2p/WifiP2pDevice;
    :goto_1f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 274
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->enableWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 270
    .end local v1    # "_arg0":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2    # "_arg1":I
    :cond_1fe
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/wifi/p2p/WifiP2pDevice;
    goto :goto_1f1

    .line 280
    .end local v1    # "_arg0":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_200
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 288
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/display/IDisplayManager$Stub;->enableWfdServiceWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 295
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_21e
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->disableWifiDisplay()V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 302
    :sswitch_22c
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->restartWifiDisplay()V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 309
    :sswitch_23a
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->isWifiDisplayBridgeAvailable()Z

    move-result v10

    .line 311
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    if-eqz v10, :cond_24f

    const/4 v0, 0x1

    :goto_249
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 312
    :cond_24f
    const/4 v0, 0x0

    goto :goto_249

    .line 317
    .end local v10    # "_result":Z
    :sswitch_251
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->getWifiDisplayBridgeStatus()I

    move-result v10

    .line 319
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 325
    .end local v10    # "_result":I
    :sswitch_263
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->isWfdEngineRunning()Z

    move-result v10

    .line 327
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    if-eqz v10, :cond_278

    const/4 v0, 0x1

    :goto_272
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 328
    :cond_278
    const/4 v0, 0x0

    goto :goto_272

    .line 333
    .end local v10    # "_result":Z
    :sswitch_27a
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->notifyEnterHomeSyncApp()V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 340
    :sswitch_288
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->notifyExitHomeSyncApp()V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 347
    :sswitch_296
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->isSinkAvailable()Z

    move-result v10

    .line 349
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    if-eqz v10, :cond_2ab

    const/4 v0, 0x1

    :goto_2a5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 350
    :cond_2ab
    const/4 v0, 0x0

    goto :goto_2a5

    .line 355
    .end local v10    # "_result":Z
    :sswitch_2ad
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->isSourceAvailable()Z

    move-result v10

    .line 357
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    if-eqz v10, :cond_2c2

    const/4 v0, 0x1

    :goto_2bc
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 358
    :cond_2c2
    const/4 v0, 0x0

    goto :goto_2bc

    .line 363
    .end local v10    # "_result":Z
    :sswitch_2c4
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 366
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->isConnWithPinSupported(Ljava/lang/String;)Z

    move-result v10

    .line 367
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    if-eqz v10, :cond_2dd

    const/4 v0, 0x1

    :goto_2d7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 368
    :cond_2dd
    const/4 v0, 0x0

    goto :goto_2d7

    .line 373
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_2df
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Landroid/hardware/display/IDisplayManager$Stub;->isDongleRenameAvailable()Z

    move-result v10

    .line 375
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    if-eqz v10, :cond_2f4

    const/4 v0, 0x1

    :goto_2ee
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 376
    :cond_2f4
    const/4 v0, 0x0

    goto :goto_2ee

    .line 381
    .end local v10    # "_result":Z
    :sswitch_2f6
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 384
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->renameDongle(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 390
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_308
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 393
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setScanningChannel(I)V

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 399
    .end local v1    # "_arg0":I
    :sswitch_31a
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 403
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 405
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setParameter(IILjava/lang/String;)I

    move-result v10

    .line 407
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 413
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_338
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_358

    const/4 v1, 0x1

    .line 416
    .local v1, "_arg0":Z
    :goto_344
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;

    move-result-object v10

    .line 417
    .local v10, "_result":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    if-eqz v10, :cond_35a

    .line 419
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/hardware/display/WifiDisplay;->writeToParcel(Landroid/os/Parcel;I)V

    .line 425
    :goto_355
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 415
    .end local v1    # "_arg0":Z
    .end local v10    # "_result":Landroid/hardware/display/WifiDisplay;
    :cond_358
    const/4 v1, 0x0

    goto :goto_344

    .line 423
    .restart local v1    # "_arg0":Z
    .restart local v10    # "_result":Landroid/hardware/display/WifiDisplay;
    :cond_35a
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_355

    .line 429
    .end local v1    # "_arg0":Z
    .end local v10    # "_result":Landroid/hardware/display/WifiDisplay;
    :sswitch_35f
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_374

    const/4 v1, 0x1

    .line 432
    .restart local v1    # "_arg0":Z
    :goto_36b
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->enableOverlayMagnifier(Z)V

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 431
    .end local v1    # "_arg0":Z
    :cond_374
    const/4 v1, 0x0

    goto :goto_36b

    .line 438
    :sswitch_376
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_392

    .line 441
    sget-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MagnificationSpec;

    .line 446
    .local v1, "_arg0":Landroid/view/MagnificationSpec;
    :goto_389
    invoke-virtual {p0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 444
    .end local v1    # "_arg0":Landroid/view/MagnificationSpec;
    :cond_392
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/view/MagnificationSpec;
    goto :goto_389

    .line 452
    .end local v1    # "_arg0":Landroid/view/MagnificationSpec;
    :sswitch_394
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 456
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 458
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 459
    .local v3, "_arg2":F
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->setMagnificationSettings(IIF)V

    .line 460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 465
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":F
    :sswitch_3ae
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 469
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 470
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayInfoEx(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v10

    .line 471
    .local v10, "_result":Landroid/view/DisplayInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    if-eqz v10, :cond_3cf

    .line 473
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/view/DisplayInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 479
    :goto_3cc
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 477
    :cond_3cf
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3cc

    .line 39
    :sswitch_data_3d4
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_30
        0x3 -> :sswitch_41
        0x4 -> :sswitch_56
        0x5 -> :sswitch_63
        0x6 -> :sswitch_70
        0x7 -> :sswitch_81
        0x8 -> :sswitch_8f
        0x9 -> :sswitch_a5
        0xa -> :sswitch_b7
        0xb -> :sswitch_c5
        0xc -> :sswitch_d3
        0xd -> :sswitch_f1
        0xe -> :sswitch_13c
        0xf -> :sswitch_15e
        0x10 -> :sswitch_184
        0x11 -> :sswitch_19a
        0x12 -> :sswitch_1a8
        0x13 -> :sswitch_1b6
        0x14 -> :sswitch_1c8
        0x15 -> :sswitch_1de
        0x16 -> :sswitch_200
        0x17 -> :sswitch_21e
        0x18 -> :sswitch_22c
        0x19 -> :sswitch_23a
        0x1a -> :sswitch_251
        0x1b -> :sswitch_263
        0x1c -> :sswitch_27a
        0x1d -> :sswitch_288
        0x1e -> :sswitch_296
        0x1f -> :sswitch_2ad
        0x20 -> :sswitch_2c4
        0x21 -> :sswitch_2df
        0x22 -> :sswitch_2f6
        0x23 -> :sswitch_308
        0x24 -> :sswitch_31a
        0x25 -> :sswitch_338
        0x26 -> :sswitch_35f
        0x27 -> :sswitch_376
        0x28 -> :sswitch_394
        0x29 -> :sswitch_3ae
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
