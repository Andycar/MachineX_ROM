.class public abstract Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;
.super Landroid/os/Binder;
.source "IFmReceiverService.java"

# interfaces
.implements Lcom/broadcom/fm/fmreceiver/IFmReceiverService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.fm.fmreceiver.IFmReceiverService"

.field static final TRANSACTION_cleanupFmService:I = 0x21

.field static final TRANSACTION_estimateNoiseFloorLevel:I = 0x1a

.field static final TRANSACTION_getCurrentRssi:I = 0x7

.field static final TRANSACTION_getCurrentSNR:I = 0x8

.field static final TRANSACTION_getIsMute:I = 0x9

.field static final TRANSACTION_getMonoStereoMode:I = 0x5

.field static final TRANSACTION_getRadioIsOn:I = 0x4

.field static final TRANSACTION_getStatus:I = 0xd

.field static final TRANSACTION_getTunedFrequency:I = 0x6

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_muteAudio:I = 0xe

.field static final TRANSACTION_registerCallback:I = 0x2

.field static final TRANSACTION_seekRdsStation:I = 0x11

.field static final TRANSACTION_seekStation:I = 0xf

.field static final TRANSACTION_seekStationAbort:I = 0x12

.field static final TRANSACTION_seekStationCombo:I = 0x10

.field static final TRANSACTION_setAudioMode:I = 0x15

.field static final TRANSACTION_setAudioPath:I = 0x16

.field static final TRANSACTION_setCOS:I = 0x1e

.field static final TRANSACTION_setDeemPhasis:I = 0x19

.field static final TRANSACTION_setFMIntenna:I = 0x20

.field static final TRANSACTION_setFMVolume:I = 0x1c

.field static final TRANSACTION_setLiveAudioPolling:I = 0x1b

.field static final TRANSACTION_setPiEccMode:I = 0x14

.field static final TRANSACTION_setRdsMode:I = 0x13

.field static final TRANSACTION_setRfMute:I = 0x1f

.field static final TRANSACTION_setSnrThreshold:I = 0x1d

.field static final TRANSACTION_setStepSize:I = 0x17

.field static final TRANSACTION_setWorldRegion:I = 0x18

.field static final TRANSACTION_tuneRadio:I = 0xc

.field static final TRANSACTION_turnOffRadio:I = 0xa

.field static final TRANSACTION_turnOnRadio:I = 0xb

.field static final TRANSACTION_unregisterCallback:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 17
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
    .line 41
    sparse-switch p1, :sswitch_data_320

    .line 389
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 45
    :sswitch_8
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    goto :goto_7

    .line 50
    :sswitch_f
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->init()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    const/4 v0, 0x1

    goto :goto_7

    .line 57
    :sswitch_1c
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    move-result-object v1

    .line 60
    .local v1, "_arg0":Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->registerCallback(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/4 v0, 0x1

    goto :goto_7

    .line 66
    .end local v1    # "_arg0":Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    :sswitch_31
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    move-result-object v1

    .line 69
    .restart local v1    # "_arg0":Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->unregisterCallback(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    const/4 v0, 0x1

    goto :goto_7

    .line 75
    .end local v1    # "_arg0":Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    :sswitch_46
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getRadioIsOn()Z

    move-result v10

    .line 77
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v10, :cond_5a

    const/4 v0, 0x1

    :goto_55
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    const/4 v0, 0x1

    goto :goto_7

    .line 78
    :cond_5a
    const/4 v0, 0x0

    goto :goto_55

    .line 83
    .end local v10    # "_result":Z
    :sswitch_5c
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getMonoStereoMode()I

    move-result v10

    .line 85
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v0, 0x1

    goto :goto_7

    .line 91
    .end local v10    # "_result":I
    :sswitch_6d
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getTunedFrequency()I

    move-result v10

    .line 93
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v0, 0x1

    goto :goto_7

    .line 99
    .end local v10    # "_result":I
    :sswitch_7e
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getCurrentRssi()J

    move-result-wide v10

    .line 101
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 107
    .end local v10    # "_result":J
    :sswitch_90
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getCurrentSNR()J

    move-result-wide v10

    .line 109
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 115
    .end local v10    # "_result":J
    :sswitch_a2
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getIsMute()Z

    move-result v10

    .line 117
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v10, :cond_b7

    const/4 v0, 0x1

    :goto_b1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 118
    :cond_b7
    const/4 v0, 0x0

    goto :goto_b1

    .line 123
    .end local v10    # "_result":Z
    :sswitch_b9
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d2

    const/4 v1, 0x1

    .line 126
    .local v1, "_arg0":Z
    :goto_c5
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->turnOffRadio(Z)I

    move-result v10

    .line 127
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 125
    .end local v1    # "_arg0":Z
    .end local v10    # "_result":I
    :cond_d2
    const/4 v1, 0x0

    goto :goto_c5

    .line 133
    :sswitch_d4
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v2

    .line 138
    .local v2, "_arg1":[C
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->turnOnRadio(I[C)I

    move-result v10

    .line 139
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeCharArray([C)V

    .line 142
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 146
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[C
    .end local v10    # "_result":I
    :sswitch_f1
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->tuneRadio(I)I

    move-result v10

    .line 150
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 156
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_107
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getStatus()I

    move-result v10

    .line 158
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 164
    .end local v10    # "_result":I
    :sswitch_119
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_132

    const/4 v1, 0x1

    .line 167
    .local v1, "_arg0":Z
    :goto_125
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->muteAudio(Z)I

    move-result v10

    .line 168
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 166
    .end local v1    # "_arg0":Z
    .end local v10    # "_result":I
    :cond_132
    const/4 v1, 0x0

    goto :goto_125

    .line 174
    :sswitch_134
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 178
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 179
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->seekStation(II)J

    move-result-wide v10

    .line 180
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 186
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v10    # "_result":J
    :sswitch_14e
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 190
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 194
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 196
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 198
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_184

    const/4 v6, 0x1

    .line 200
    .local v6, "_arg5":Z
    :goto_16e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 202
    .local v7, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg7":I
    move-object v0, p0

    .line 203
    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->seekStationCombo(IIIIIZII)I

    move-result v10

    .line 204
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 198
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    .end local v10    # "_result":I
    :cond_184
    const/4 v6, 0x0

    goto :goto_16e

    .line 210
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :sswitch_186
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 216
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 218
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 219
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->seekRdsStation(IIII)J

    move-result-wide v10

    .line 220
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 222
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 226
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v10    # "_result":J
    :sswitch_1a8
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->seekStationAbort()I

    move-result v10

    .line 228
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 234
    .end local v10    # "_result":I
    :sswitch_1ba
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 238
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 240
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 242
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 243
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setRdsMode(IIII)I

    move-result v10

    .line 244
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 250
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v10    # "_result":I
    :sswitch_1dc
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 253
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setPiEccMode(I)I

    move-result v10

    .line 254
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 260
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_1f2
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 263
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setAudioMode(I)I

    move-result v10

    .line 264
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 270
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_208
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 273
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setAudioPath(I)I

    move-result v10

    .line 274
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 280
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_21e
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 283
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setStepSize(I)I

    move-result v10

    .line 284
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 290
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_234
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 293
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setWorldRegion(I)I

    move-result v10

    .line 294
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 300
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_24a
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 303
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setDeemPhasis(I)I

    move-result v10

    .line 304
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 310
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_260
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 313
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->estimateNoiseFloorLevel(I)I

    move-result v10

    .line 314
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 320
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_276
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_293

    const/4 v1, 0x1

    .line 324
    .local v1, "_arg0":Z
    :goto_282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 325
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setLiveAudioPolling(ZI)I

    move-result v10

    .line 326
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 322
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :cond_293
    const/4 v1, 0x0

    goto :goto_282

    .line 332
    :sswitch_295
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 335
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setFMVolume(I)I

    move-result v10

    .line 336
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 342
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_2ab
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 345
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setSnrThreshold(I)I

    move-result v10

    .line 346
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 352
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_2c1
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 355
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setCOS(I)I

    move-result v10

    .line 356
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 362
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_2d7
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f0

    const/4 v1, 0x1

    .line 365
    .local v1, "_arg0":Z
    :goto_2e3
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setRfMute(Z)I

    move-result v10

    .line 366
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 364
    .end local v1    # "_arg0":Z
    .end local v10    # "_result":I
    :cond_2f0
    const/4 v1, 0x0

    goto :goto_2e3

    .line 372
    :sswitch_2f2
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30b

    const/4 v1, 0x1

    .line 375
    .restart local v1    # "_arg0":Z
    :goto_2fe
    invoke-virtual {p0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setFMIntenna(Z)I

    move-result v10

    .line 376
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 374
    .end local v1    # "_arg0":Z
    .end local v10    # "_result":I
    :cond_30b
    const/4 v1, 0x0

    goto :goto_2fe

    .line 382
    :sswitch_30d
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->cleanupFmService()I

    move-result v10

    .line 384
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 41
    nop

    :sswitch_data_320
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_31
        0x4 -> :sswitch_46
        0x5 -> :sswitch_5c
        0x6 -> :sswitch_6d
        0x7 -> :sswitch_7e
        0x8 -> :sswitch_90
        0x9 -> :sswitch_a2
        0xa -> :sswitch_b9
        0xb -> :sswitch_d4
        0xc -> :sswitch_f1
        0xd -> :sswitch_107
        0xe -> :sswitch_119
        0xf -> :sswitch_134
        0x10 -> :sswitch_14e
        0x11 -> :sswitch_186
        0x12 -> :sswitch_1a8
        0x13 -> :sswitch_1ba
        0x14 -> :sswitch_1dc
        0x15 -> :sswitch_1f2
        0x16 -> :sswitch_208
        0x17 -> :sswitch_21e
        0x18 -> :sswitch_234
        0x19 -> :sswitch_24a
        0x1a -> :sswitch_260
        0x1b -> :sswitch_276
        0x1c -> :sswitch_295
        0x1d -> :sswitch_2ab
        0x1e -> :sswitch_2c1
        0x1f -> :sswitch_2d7
        0x20 -> :sswitch_2f2
        0x21 -> :sswitch_30d
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
