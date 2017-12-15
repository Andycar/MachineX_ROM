.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final TRANSACTION_addKeyboardLayoutForInputDevice:I = 0xd

.field static final TRANSACTION_cancelVibrate:I = 0x11

.field static final TRANSACTION_coverEventFinished:I = 0x18

.field static final TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0xa

.field static final TRANSACTION_getInboundQueueLength:I = 0x17

.field static final TRANSACTION_getInputDevice:I = 0x1

.field static final TRANSACTION_getInputDeviceIds:I = 0x2

.field static final TRANSACTION_getKeyboardLayout:I = 0x9

.field static final TRANSACTION_getKeyboardLayouts:I = 0x8

.field static final TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0xc

.field static final TRANSACTION_getScanCodeState:I = 0x19

.field static final TRANSACTION_getTouchCalibrationForInputDevice:I = 0x6

.field static final TRANSACTION_hasKeys:I = 0x3

.field static final TRANSACTION_injectInputEvent:I = 0x5

.field static final TRANSACTION_monitorInput:I = 0x1a

.field static final TRANSACTION_registerHoveringSpenCustomIcon:I = 0x1b

.field static final TRANSACTION_registerInputDevicesChangedListener:I = 0xf

.field static final TRANSACTION_registerMouseCustomIcon:I = 0x1f

.field static final TRANSACTION_reloadMousePointerIcon:I = 0x21

.field static final TRANSACTION_reloadMousePointerIconForBitmap:I = 0x22

.field static final TRANSACTION_reloadPointerIcon:I = 0x1d

.field static final TRANSACTION_reloadPointerIconForBitmap:I = 0x1e

.field static final TRANSACTION_removeHoveringSpenCustomIcon:I = 0x1c

.field static final TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0xe

.field static final TRANSACTION_removeMouseCustomIcon:I = 0x20

.field static final TRANSACTION_setCoverVerify:I = 0x16

.field static final TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0xb

.field static final TRANSACTION_setCustomHoverIcon:I = 0x13

.field static final TRANSACTION_setFlipCoverTouchEnabled:I = 0x15

.field static final TRANSACTION_setLedState:I = 0x12

.field static final TRANSACTION_setMonitorChannelFilter:I = 0x24

.field static final TRANSACTION_setStartedShutdown:I = 0x14

.field static final TRANSACTION_setTouchCalibrationForInputDevice:I = 0x7

.field static final TRANSACTION_setWakeKeyDynamically:I = 0x23

.field static final TRANSACTION_tryPointerSpeed:I = 0x4

.field static final TRANSACTION_vibrate:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_4

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_3
    return-object v0

    .line 28
    :cond_4
    const-string v1, "android.hardware.input.IInputManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Landroid/hardware/input/IInputManager;

    goto :goto_3

    .line 32
    :cond_13
    new-instance v0, Landroid/hardware/input/IInputManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 36
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
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_456

    .line 571
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_9
    return v8

    .line 44
    :sswitch_a
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 49
    :sswitch_10
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v7

    .line 53
    .local v7, "_result":Landroid/view/InputDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v7, :cond_29

    .line 55
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {v7, p3, v8}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 59
    :cond_29
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 65
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Landroid/view/InputDevice;
    :sswitch_2d
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    move-result-object v7

    .line 67
    .local v7, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_9

    .line 73
    .end local v7    # "_result":[I
    :sswitch_3d
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 81
    .local v3, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 82
    .local v6, "_arg3_length":I
    if-gez v6, :cond_66

    .line 83
    const/4 v4, 0x0

    .line 88
    .local v4, "_arg3":[Z
    :goto_55
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    move-result v7

    .line 89
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v7, :cond_5f

    move v0, v8

    :cond_5f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto :goto_9

    .line 86
    .end local v4    # "_arg3":[Z
    .end local v7    # "_result":Z
    :cond_66
    new-array v4, v6, [Z

    .restart local v4    # "_arg3":[Z
    goto :goto_55

    .line 96
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":[Z
    .end local v6    # "_arg3_length":I
    :sswitch_69
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 99
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 105
    .end local v1    # "_arg0":I
    :sswitch_79
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_9f

    .line 108
    sget-object v9, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    .line 114
    .local v1, "_arg0":Landroid/view/InputEvent;
    :goto_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 115
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v7

    .line 116
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v7, :cond_9a

    move v0, v8

    :cond_9a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 111
    .end local v1    # "_arg0":Landroid/view/InputEvent;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Z
    :cond_9f
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/view/InputEvent;
    goto :goto_8c

    .line 122
    .end local v1    # "_arg0":Landroid/view/InputEvent;
    :sswitch_a1
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v7

    .line 128
    .local v7, "_result":Landroid/hardware/input/TouchCalibration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v7, :cond_bf

    .line 130
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    invoke-virtual {v7, p3, v8}, Landroid/hardware/input/TouchCalibration;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 134
    :cond_bf
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 140
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Landroid/hardware/input/TouchCalibration;
    :sswitch_c4
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e7

    .line 147
    sget-object v0, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/TouchCalibration;

    .line 152
    .local v3, "_arg2":Landroid/hardware/input/TouchCalibration;
    :goto_df
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 150
    .end local v3    # "_arg2":Landroid/hardware/input/TouchCalibration;
    :cond_e7
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/hardware/input/TouchCalibration;
    goto :goto_df

    .line 158
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/hardware/input/TouchCalibration;
    :sswitch_e9
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v7

    .line 160
    .local v7, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 166
    .end local v7    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :sswitch_fa
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v7

    .line 170
    .local v7, "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v7, :cond_114

    .line 172
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    invoke-virtual {v7, p3, v8}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 176
    :cond_114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 182
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Landroid/hardware/input/KeyboardLayout;
    :sswitch_119
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_138

    .line 185
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 190
    .local v1, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_12c
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 188
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v7    # "_result":Ljava/lang/String;
    :cond_138
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_12c

    .line 197
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_13a
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_159

    .line 200
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 206
    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_14d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 203
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_159
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_14d

    .line 213
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_15b
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17a

    .line 216
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 221
    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_16e
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 219
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v7    # "_result":[Ljava/lang/String;
    :cond_17a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_16e

    .line 228
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_17c
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19b

    .line 231
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 237
    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_18f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 238
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 234
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_19b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_18f

    .line 244
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_19d
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1bc

    .line 247
    sget-object v0, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 253
    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :goto_1b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 254
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 250
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_1bc
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_1b0

    .line 260
    .end local v1    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_1be
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    move-result-object v1

    .line 263
    .local v1, "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 269
    .end local v1    # "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    :sswitch_1d3
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 273
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    .line 275
    .local v2, "_arg1":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 277
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 278
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->vibrate(I[JILandroid/os/IBinder;)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 284
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[J
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/IBinder;
    :sswitch_1f0
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 288
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 289
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 295
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :sswitch_205
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_21d

    move v1, v8

    .line 298
    .local v1, "_arg0":Z
    :goto_211
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->setLedState(Z)I

    move-result v7

    .line 299
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    .end local v7    # "_result":I
    :cond_21d
    move v1, v0

    .line 297
    goto :goto_211

    .line 305
    :sswitch_21f
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_242

    .line 308
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 314
    .local v1, "_arg0":Landroid/graphics/Bitmap;
    :goto_232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 316
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 317
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->setCustomHoverIcon(Landroid/graphics/Bitmap;II)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 311
    .end local v1    # "_arg0":Landroid/graphics/Bitmap;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :cond_242
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_232

    .line 323
    .end local v1    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_244
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_258

    move v1, v8

    .line 326
    .local v1, "_arg0":Z
    :goto_250
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->setStartedShutdown(Z)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_258
    move v1, v0

    .line 325
    goto :goto_250

    .line 332
    :sswitch_25a
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_26e

    move v1, v8

    .line 335
    .restart local v1    # "_arg0":Z
    :goto_266
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->setFlipCoverTouchEnabled(Z)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_26e
    move v1, v0

    .line 334
    goto :goto_266

    .line 341
    :sswitch_270
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 344
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->setCoverVerify(I)V

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 350
    .end local v1    # "_arg0":I
    :sswitch_281
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getInboundQueueLength()I

    move-result v7

    .line 352
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 358
    .end local v7    # "_result":I
    :sswitch_292
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->coverEventFinished()V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 365
    :sswitch_29f
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 369
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 371
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 372
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->getScanCodeState(III)I

    move-result v7

    .line 373
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 379
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v7    # "_result":I
    :sswitch_2bc
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v7

    .line 383
    .local v7, "_result":Landroid/view/InputChannel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v7, :cond_2d6

    .line 385
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    invoke-virtual {v7, p3, v8}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 389
    :cond_2d6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 395
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Landroid/view/InputChannel;
    :sswitch_2db
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2fa

    .line 398
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 403
    .local v1, "_arg0":Landroid/graphics/Bitmap;
    :goto_2ee
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 404
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 401
    .end local v1    # "_arg0":Landroid/graphics/Bitmap;
    .end local v7    # "_result":I
    :cond_2fa
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_2ee

    .line 410
    .end local v1    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_2fc
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 413
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->removeHoveringSpenCustomIcon(I)V

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 419
    .end local v1    # "_arg0":I
    :sswitch_30d
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 423
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 425
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 427
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_339

    .line 428
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 434
    .local v4, "_arg3":Landroid/graphics/Point;
    :goto_32c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 435
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/IInputManager$Stub;->reloadPointerIcon(IIILandroid/graphics/Point;I)V

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 431
    .end local v4    # "_arg3":Landroid/graphics/Point;
    .end local v5    # "_arg4":I
    :cond_339
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/graphics/Point;
    goto :goto_32c

    .line 441
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/graphics/Point;
    :sswitch_33b
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 445
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 447
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_375

    .line 448
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 454
    .local v3, "_arg2":Landroid/graphics/Bitmap;
    :goto_356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_377

    .line 455
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 461
    .restart local v4    # "_arg3":Landroid/graphics/Point;
    :goto_364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg4":I
    move-object v0, p0

    .line 462
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/IInputManager$Stub;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v7

    .line 463
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 451
    .end local v3    # "_arg2":Landroid/graphics/Bitmap;
    .end local v4    # "_arg3":Landroid/graphics/Point;
    .end local v5    # "_arg4":I
    .end local v7    # "_result":I
    :cond_375
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/graphics/Bitmap;
    goto :goto_356

    .line 458
    :cond_377
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/graphics/Point;
    goto :goto_364

    .line 469
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/graphics/Bitmap;
    .end local v4    # "_arg3":Landroid/graphics/Point;
    :sswitch_379
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_398

    .line 472
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 477
    .local v1, "_arg0":Landroid/graphics/Bitmap;
    :goto_38c
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerMouseCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 478
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 475
    .end local v1    # "_arg0":Landroid/graphics/Bitmap;
    .end local v7    # "_result":I
    :cond_398
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_38c

    .line 484
    .end local v1    # "_arg0":Landroid/graphics/Bitmap;
    :sswitch_39a
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 487
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->removeMouseCustomIcon(I)V

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 493
    .end local v1    # "_arg0":I
    :sswitch_3ab
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 497
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 499
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 501
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d7

    .line 502
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 508
    .restart local v4    # "_arg3":Landroid/graphics/Point;
    :goto_3ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg4":I
    move-object v0, p0

    .line 509
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/IInputManager$Stub;->reloadMousePointerIcon(IIILandroid/graphics/Point;I)V

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 505
    .end local v4    # "_arg3":Landroid/graphics/Point;
    .end local v5    # "_arg4":I
    :cond_3d7
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/graphics/Point;
    goto :goto_3ca

    .line 515
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/graphics/Point;
    :sswitch_3d9
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 519
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 521
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_413

    .line 522
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 528
    .local v3, "_arg2":Landroid/graphics/Bitmap;
    :goto_3f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_415

    .line 529
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 535
    .restart local v4    # "_arg3":Landroid/graphics/Point;
    :goto_402
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5    # "_arg4":I
    move-object v0, p0

    .line 536
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/IInputManager$Stub;->reloadMousePointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v7

    .line 537
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 525
    .end local v3    # "_arg2":Landroid/graphics/Bitmap;
    .end local v4    # "_arg3":Landroid/graphics/Point;
    .end local v5    # "_arg4":I
    .end local v7    # "_result":I
    :cond_413
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/graphics/Bitmap;
    goto :goto_3f4

    .line 532
    :cond_415
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/graphics/Point;
    goto :goto_402

    .line 543
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/graphics/Bitmap;
    .end local v4    # "_arg3":Landroid/graphics/Point;
    :sswitch_417
    const-string v9, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_433

    move v2, v8

    .line 549
    .local v2, "_arg1":Z
    :goto_427
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 550
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/input/IInputManager$Stub;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V

    .line 551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    :cond_433
    move v2, v0

    .line 547
    goto :goto_427

    .line 556
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_435
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_454

    .line 559
    sget-object v0, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputChannel;

    .line 565
    .local v1, "_arg0":Landroid/view/InputChannel;
    :goto_448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 566
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setMonitorChannelFilter(Landroid/view/InputChannel;I)V

    .line 567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 562
    .end local v1    # "_arg0":Landroid/view/InputChannel;
    .end local v2    # "_arg1":I
    :cond_454
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/view/InputChannel;
    goto :goto_448

    .line 40
    :sswitch_data_456
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_69
        0x5 -> :sswitch_79
        0x6 -> :sswitch_a1
        0x7 -> :sswitch_c4
        0x8 -> :sswitch_e9
        0x9 -> :sswitch_fa
        0xa -> :sswitch_119
        0xb -> :sswitch_13a
        0xc -> :sswitch_15b
        0xd -> :sswitch_17c
        0xe -> :sswitch_19d
        0xf -> :sswitch_1be
        0x10 -> :sswitch_1d3
        0x11 -> :sswitch_1f0
        0x12 -> :sswitch_205
        0x13 -> :sswitch_21f
        0x14 -> :sswitch_244
        0x15 -> :sswitch_25a
        0x16 -> :sswitch_270
        0x17 -> :sswitch_281
        0x18 -> :sswitch_292
        0x19 -> :sswitch_29f
        0x1a -> :sswitch_2bc
        0x1b -> :sswitch_2db
        0x1c -> :sswitch_2fc
        0x1d -> :sswitch_30d
        0x1e -> :sswitch_33b
        0x1f -> :sswitch_379
        0x20 -> :sswitch_39a
        0x21 -> :sswitch_3ab
        0x22 -> :sswitch_3d9
        0x23 -> :sswitch_417
        0x24 -> :sswitch_435
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
