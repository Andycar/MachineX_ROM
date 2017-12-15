.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x28

.field static final TRANSACTION_addMediaPlayerAndUpdateRemoteController:I = 0x47

.field static final TRANSACTION_adjustMasterVolume:I = 0x3

.field static final TRANSACTION_adjustStreamVolume:I = 0x2

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x1

.field static final TRANSACTION_avrcpSupportsAbsoluteVolume:I = 0x20

.field static final TRANSACTION_disableSafeMediaVolume:I = 0x3e

.field static final TRANSACTION_dismissVolumePanel:I = 0x4d

.field static final TRANSACTION_forceRemoteSubmixFullVolume:I = 0xa

.field static final TRANSACTION_forceVolumeControlStream:I = 0x33

.field static final TRANSACTION_getActiveStreamType:I = 0x4a

.field static final TRANSACTION_getAudioServiceConfig:I = 0x54

.field static final TRANSACTION_getCurrentAudioFocus:I = 0x2a

.field static final TRANSACTION_getCurrentAudioFocusPackageName:I = 0x50

.field static final TRANSACTION_getLastAudibleMasterVolume:I = 0x12

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0x11

.field static final TRANSACTION_getMasterMaxVolume:I = 0x10

.field static final TRANSACTION_getMasterStreamType:I = 0x36

.field static final TRANSACTION_getMasterVolume:I = 0xe

.field static final TRANSACTION_getMode:I = 0x1a

.field static final TRANSACTION_getRemoteControlClientNowPlayingEntries:I = 0x44

.field static final TRANSACTION_getRingerMode:I = 0x15

.field static final TRANSACTION_getRingtonePlayer:I = 0x35

.field static final TRANSACTION_getStreamMaxVolume:I = 0xf

.field static final TRANSACTION_getStreamVolume:I = 0xd

.field static final TRANSACTION_getVibrateSetting:I = 0x17

.field static final TRANSACTION_isBluetoothA2dpOn:I = 0x26

.field static final TRANSACTION_isBluetoothScoOn:I = 0x24

.field static final TRANSACTION_isCameraSoundForced:I = 0x3a

.field static final TRANSACTION_isHdmiSystemAudioSupported:I = 0x40

.field static final TRANSACTION_isMasterMute:I = 0xc

.field static final TRANSACTION_isMediaSilentMode:I = 0x4c

.field static final TRANSACTION_isRadioSpeakerOn:I = 0x49

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x22

.field static final TRANSACTION_isStreamAffectedByRingerMode:I = 0x3d

.field static final TRANSACTION_isStreamMute:I = 0x9

.field static final TRANSACTION_loadSoundEffects:I = 0x1d

.field static final TRANSACTION_notifyVolumeControllerVisible:I = 0x3c

.field static final TRANSACTION_playBackgroundMusic:I = 0x51

.field static final TRANSACTION_playSoundEffect:I = 0x1b

.field static final TRANSACTION_playSoundEffectVolume:I = 0x1c

.field static final TRANSACTION_registerAudioPolicy:I = 0x41

.field static final TRANSACTION_registerRemoteControlDisplay:I = 0x2b

.field static final TRANSACTION_registerRemoteController:I = 0x2c

.field static final TRANSACTION_reloadAudioSettings:I = 0x1f

.field static final TRANSACTION_remoteControlDisplayUsesBitmapSize:I = 0x2e

.field static final TRANSACTION_remoteControlDisplayWantsPlaybackPositionSync:I = 0x2f

.field static final TRANSACTION_requestAudioFocus:I = 0x27

.field static final TRANSACTION_setAudioServiceConfig:I = 0x53

.field static final TRANSACTION_setBluetoothA2dpDeviceConnectionState:I = 0x38

.field static final TRANSACTION_setBluetoothA2dpOn:I = 0x25

.field static final TRANSACTION_setBluetoothScoOn:I = 0x23

.field static final TRANSACTION_setHdmiSystemAudioSupported:I = 0x3f

.field static final TRANSACTION_setMasterMute:I = 0xb

.field static final TRANSACTION_setMasterVolume:I = 0x6

.field static final TRANSACTION_setMediaSilentMode:I = 0x4b

.field static final TRANSACTION_setMicrophoneMute:I = 0x13

.field static final TRANSACTION_setMode:I = 0x19

.field static final TRANSACTION_setRadioSpeakerOn:I = 0x48

.field static final TRANSACTION_setRemoteControlClientBrowsedPlayer:I = 0x43

.field static final TRANSACTION_setRemoteControlClientPlayItem:I = 0x45

.field static final TRANSACTION_setRemoteStreamVolume:I = 0x5

.field static final TRANSACTION_setRingerMode:I = 0x14

.field static final TRANSACTION_setRingtonePlayer:I = 0x34

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x21

.field static final TRANSACTION_setStatusbarHasVolumeSlider:I = 0x4e

.field static final TRANSACTION_setStreamMute:I = 0x8

.field static final TRANSACTION_setStreamSolo:I = 0x7

.field static final TRANSACTION_setStreamVolume:I = 0x4

.field static final TRANSACTION_setTogether:I = 0x4f

.field static final TRANSACTION_setVibrateSetting:I = 0x16

.field static final TRANSACTION_setVolumeController:I = 0x3b

.field static final TRANSACTION_setWiredDeviceConnectionState:I = 0x37

.field static final TRANSACTION_shouldVibrate:I = 0x18

.field static final TRANSACTION_startBluetoothSco:I = 0x30

.field static final TRANSACTION_startBluetoothScoVirtualCall:I = 0x31

.field static final TRANSACTION_startWatchingRoutes:I = 0x39

.field static final TRANSACTION_stopBackgroundMusic:I = 0x52

.field static final TRANSACTION_stopBluetoothSco:I = 0x32

.field static final TRANSACTION_unloadSoundEffects:I = 0x1e

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x29

.field static final TRANSACTION_unregisterAudioPolicyAsync:I = 0x42

.field static final TRANSACTION_unregisterRemoteControlDisplay:I = 0x2d

.field static final TRANSACTION_updateRemoteControllerOnExistingMediaPlayers:I = 0x46


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
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
    const-string v1, "android.media.IAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/media/IAudioService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/media/IAudioService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 41
    sparse-switch p1, :sswitch_data_7dc

    .line 903
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 45
    :sswitch_8
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    goto :goto_7

    .line 50
    :sswitch_f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 56
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 58
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(IIILjava/lang/String;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    const/4 v0, 0x1

    goto :goto_7

    .line 65
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_2c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 73
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 74
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    const/4 v0, 0x1

    goto :goto_7

    .line 80
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_49
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 86
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustMasterVolume(IILjava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    const/4 v0, 0x1

    goto :goto_7

    .line 93
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_62
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 99
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 101
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 102
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->setStreamVolume(IIILjava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v0, 0x1

    goto :goto_7

    .line 108
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_7f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setRemoteStreamVolume(I)V

    .line 112
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 116
    .end local v1    # "_arg0":I
    :sswitch_8e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 120
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 122
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setMasterVolume(IILjava/lang/String;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 129
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_a8
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c5

    const/4 v2, 0x1

    .line 135
    .local v2, "_arg1":Z
    :goto_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 136
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamSolo(IZLandroid/os/IBinder;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 133
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/os/IBinder;
    :cond_c5
    const/4 v2, 0x0

    goto :goto_b8

    .line 142
    .end local v1    # "_arg0":I
    :sswitch_c7
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e4

    const/4 v2, 0x1

    .line 148
    .restart local v2    # "_arg1":Z
    :goto_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 149
    .restart local v3    # "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamMute(IZLandroid/os/IBinder;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 146
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/os/IBinder;
    :cond_e4
    const/4 v2, 0x0

    goto :goto_d7

    .line 155
    .end local v1    # "_arg0":I
    :sswitch_e6
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v7

    .line 159
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v7, :cond_ff

    const/4 v0, 0x1

    :goto_f9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 160
    :cond_ff
    const/4 v0, 0x0

    goto :goto_f9

    .line 165
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_101
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11a

    const/4 v1, 0x1

    .line 169
    .local v1, "_arg0":Z
    :goto_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 170
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 167
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :cond_11a
    const/4 v1, 0x0

    goto :goto_10d

    .line 176
    :sswitch_11c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13d

    const/4 v1, 0x1

    .line 180
    .restart local v1    # "_arg0":Z
    :goto_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 185
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILjava/lang/String;Landroid/os/IBinder;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 178
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/IBinder;
    :cond_13d
    const/4 v1, 0x0

    goto :goto_128

    .line 191
    :sswitch_13f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v7

    .line 193
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v7, :cond_154

    const/4 v0, 0x1

    :goto_14e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 194
    :cond_154
    const/4 v0, 0x0

    goto :goto_14e

    .line 199
    .end local v7    # "_result":Z
    :sswitch_156
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 202
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v7

    .line 203
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 209
    .end local v1    # "_arg0":I
    .end local v7    # "_result":I
    :sswitch_16c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMasterVolume()I

    move-result v7

    .line 211
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 217
    .end local v7    # "_result":I
    :sswitch_17e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 220
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v7

    .line 221
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 227
    .end local v1    # "_arg0":I
    .end local v7    # "_result":I
    :sswitch_194
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMasterMaxVolume()I

    move-result v7

    .line 229
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 235
    .end local v7    # "_result":I
    :sswitch_1a6
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 238
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v7

    .line 239
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 245
    .end local v1    # "_arg0":I
    .end local v7    # "_result":I
    :sswitch_1bc
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getLastAudibleMasterVolume()I

    move-result v7

    .line 247
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 253
    .end local v7    # "_result":I
    :sswitch_1ce
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e7

    const/4 v1, 0x1

    .line 257
    .local v1, "_arg0":Z
    :goto_1da
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setMicrophoneMute(ZLjava/lang/String;)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 255
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_1e7
    const/4 v1, 0x0

    goto :goto_1da

    .line 264
    :sswitch_1e9
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 268
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_202

    const/4 v2, 0x1

    .line 269
    .local v2, "_arg1":Z
    :goto_1f9
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setRingerMode(IZ)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 268
    .end local v2    # "_arg1":Z
    :cond_202
    const/4 v2, 0x0

    goto :goto_1f9

    .line 275
    .end local v1    # "_arg0":I
    :sswitch_204
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingerMode()I

    move-result v7

    .line 277
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 283
    .end local v7    # "_result":I
    :sswitch_216
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 287
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 288
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 294
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_22c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 297
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v7

    .line 298
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 304
    .end local v1    # "_arg0":I
    .end local v7    # "_result":I
    :sswitch_242
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 307
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v7

    .line 308
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    if-eqz v7, :cond_25b

    const/4 v0, 0x1

    :goto_255
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 309
    :cond_25b
    const/4 v0, 0x0

    goto :goto_255

    .line 314
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_25d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 318
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 319
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 325
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :sswitch_273
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v7

    .line 327
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 333
    .end local v7    # "_result":I
    :sswitch_285
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 336
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffect(I)V

    .line 337
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 341
    .end local v1    # "_arg0":I
    :sswitch_294
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 345
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 346
    .local v2, "_arg1":F
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    .line 347
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 351
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":F
    :sswitch_2a7
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v7

    .line 353
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v7, :cond_2bc

    const/4 v0, 0x1

    :goto_2b6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 354
    :cond_2bc
    const/4 v0, 0x0

    goto :goto_2b6

    .line 359
    .end local v7    # "_result":Z
    :sswitch_2be
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    .line 361
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 365
    :sswitch_2c9
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    .line 367
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 371
    :sswitch_2d4
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2ea

    const/4 v2, 0x1

    .line 376
    .local v2, "_arg1":Z
    :goto_2e4
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    .line 377
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 375
    .end local v2    # "_arg1":Z
    :cond_2ea
    const/4 v2, 0x0

    goto :goto_2e4

    .line 381
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_2ec
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_301

    const/4 v1, 0x1

    .line 384
    .local v1, "_arg0":Z
    :goto_2f8
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Z)V

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 383
    .end local v1    # "_arg0":Z
    :cond_301
    const/4 v1, 0x0

    goto :goto_2f8

    .line 390
    :sswitch_303
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v7

    .line 392
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    if-eqz v7, :cond_318

    const/4 v0, 0x1

    :goto_312
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 393
    :cond_318
    const/4 v0, 0x0

    goto :goto_312

    .line 398
    .end local v7    # "_result":Z
    :sswitch_31a
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32f

    const/4 v1, 0x1

    .line 401
    .restart local v1    # "_arg0":Z
    :goto_326
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 400
    .end local v1    # "_arg0":Z
    :cond_32f
    const/4 v1, 0x0

    goto :goto_326

    .line 407
    :sswitch_331
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v7

    .line 409
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    if-eqz v7, :cond_346

    const/4 v0, 0x1

    :goto_340
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 410
    :cond_346
    const/4 v0, 0x0

    goto :goto_340

    .line 415
    .end local v7    # "_result":Z
    :sswitch_348
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35d

    const/4 v1, 0x1

    .line 418
    .restart local v1    # "_arg0":Z
    :goto_354
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 417
    .end local v1    # "_arg0":Z
    :cond_35d
    const/4 v1, 0x0

    goto :goto_354

    .line 424
    :sswitch_35f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v7

    .line 426
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    if-eqz v7, :cond_374

    const/4 v0, 0x1

    :goto_36e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 427
    :cond_374
    const/4 v0, 0x0

    goto :goto_36e

    .line 432
    .end local v7    # "_result":Z
    :sswitch_376
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 436
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 438
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 440
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v4

    .line 442
    .local v4, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg5":Ljava/lang/String;
    move-object v0, p0

    .line 445
    invoke-virtual/range {v0 .. v6}, Landroid/media/IAudioService$Stub;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 446
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 452
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Landroid/media/IAudioFocusDispatcher;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_result":I
    :sswitch_3a5
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v1

    .line 456
    .local v1, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    move-result v7

    .line 458
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 464
    .end local v1    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v7    # "_result":I
    :sswitch_3c3
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 473
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_3d5
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocus()I

    move-result v7

    .line 475
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 481
    .end local v7    # "_result":I
    :sswitch_3e7
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 485
    .local v1, "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 487
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 488
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z

    move-result v7

    .line 489
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    if-eqz v7, :cond_40c

    const/4 v0, 0x1

    :goto_406
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 490
    :cond_40c
    const/4 v0, 0x0

    goto :goto_406

    .line 495
    .end local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v7    # "_result":Z
    :sswitch_40e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 499
    .restart local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 501
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 503
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_441

    .line 504
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 509
    .local v4, "_arg3":Landroid/content/ComponentName;
    :goto_431
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z

    move-result v7

    .line 510
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    if-eqz v7, :cond_443

    const/4 v0, 0x1

    :goto_43b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 507
    .end local v4    # "_arg3":Landroid/content/ComponentName;
    .end local v7    # "_result":Z
    :cond_441
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/content/ComponentName;
    goto :goto_431

    .line 511
    .restart local v7    # "_result":Z
    :cond_443
    const/4 v0, 0x0

    goto :goto_43b

    .line 516
    .end local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/ComponentName;
    .end local v7    # "_result":Z
    :sswitch_445
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 519
    .restart local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 520
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 524
    .end local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    :sswitch_458
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 528
    .restart local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 530
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 531
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    .line 532
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 536
    .end local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_473
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 540
    .restart local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_48d

    const/4 v2, 0x1

    .line 541
    .local v2, "_arg1":Z
    :goto_487
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    .line 542
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 540
    .end local v2    # "_arg1":Z
    :cond_48d
    const/4 v2, 0x0

    goto :goto_487

    .line 546
    .end local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    :sswitch_48f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 550
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 551
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;I)V

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 557
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :sswitch_4a5
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 560
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V

    .line 561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 566
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :sswitch_4b7
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 569
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 575
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :sswitch_4c9
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 579
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 580
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 586
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :sswitch_4df
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v1

    .line 589
    .local v1, "_arg0":Landroid/media/IRingtonePlayer;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    .line 590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 595
    .end local v1    # "_arg0":Landroid/media/IRingtonePlayer;
    :sswitch_4f5
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v7

    .line 597
    .local v7, "_result":Landroid/media/IRingtonePlayer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    if-eqz v7, :cond_50d

    invoke-interface {v7}, Landroid/media/IRingtonePlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_507
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 599
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 598
    :cond_50d
    const/4 v0, 0x0

    goto :goto_507

    .line 603
    .end local v7    # "_result":Landroid/media/IRingtonePlayer;
    :sswitch_50f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMasterStreamType()I

    move-result v7

    .line 605
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 611
    .end local v7    # "_result":I
    :sswitch_521
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 615
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 617
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    .line 619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 624
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_53b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_563

    .line 627
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 633
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    :goto_54e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 635
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 636
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I

    move-result v7

    .line 637
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 630
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v7    # "_result":I
    :cond_563
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_54e

    .line 643
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_565
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v1

    .line 646
    .local v1, "_arg0":Landroid/media/IAudioRoutesObserver;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v7

    .line 647
    .local v7, "_result":Landroid/media/AudioRoutesInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    if-eqz v7, :cond_586

    .line 649
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/media/AudioRoutesInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 655
    :goto_583
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 653
    :cond_586
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_583

    .line 659
    .end local v1    # "_arg0":Landroid/media/IAudioRoutesObserver;
    .end local v7    # "_result":Landroid/media/AudioRoutesInfo;
    :sswitch_58b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    move-result v7

    .line 661
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    if-eqz v7, :cond_5a0

    const/4 v0, 0x1

    :goto_59a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 662
    :cond_5a0
    const/4 v0, 0x0

    goto :goto_59a

    .line 667
    .end local v7    # "_result":Z
    :sswitch_5a2
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v1

    .line 670
    .local v1, "_arg0":Landroid/media/IVolumeController;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 676
    .end local v1    # "_arg0":Landroid/media/IVolumeController;
    :sswitch_5b8
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v1

    .line 680
    .restart local v1    # "_arg0":Landroid/media/IVolumeController;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5d5

    const/4 v2, 0x1

    .line 681
    .local v2, "_arg1":Z
    :goto_5cc
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 680
    .end local v2    # "_arg1":Z
    :cond_5d5
    const/4 v2, 0x0

    goto :goto_5cc

    .line 687
    .end local v1    # "_arg0":Landroid/media/IVolumeController;
    :sswitch_5d7
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 690
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isStreamAffectedByRingerMode(I)Z

    move-result v7

    .line 691
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    if-eqz v7, :cond_5f0

    const/4 v0, 0x1

    :goto_5ea
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 692
    :cond_5f0
    const/4 v0, 0x0

    goto :goto_5ea

    .line 697
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_5f2
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->disableSafeMediaVolume()V

    .line 699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 704
    :sswitch_600
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_619

    const/4 v1, 0x1

    .line 707
    .local v1, "_arg0":Z
    :goto_60c
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setHdmiSystemAudioSupported(Z)I

    move-result v7

    .line 708
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 706
    .end local v1    # "_arg0":Z
    .end local v7    # "_result":I
    :cond_619
    const/4 v1, 0x0

    goto :goto_60c

    .line 714
    :sswitch_61b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isHdmiSystemAudioSupported()Z

    move-result v7

    .line 716
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    if-eqz v7, :cond_630

    const/4 v0, 0x1

    :goto_62a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 718
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 717
    :cond_630
    const/4 v0, 0x0

    goto :goto_62a

    .line 722
    .end local v7    # "_result":Z
    :sswitch_632
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_659

    .line 725
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 731
    .local v1, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    :goto_645
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 732
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/os/IBinder;)Z

    move-result v7

    .line 733
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    if-eqz v7, :cond_65b

    const/4 v0, 0x1

    :goto_653
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 728
    .end local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v7    # "_result":Z
    :cond_659
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    goto :goto_645

    .line 734
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    .restart local v7    # "_result":Z
    :cond_65b
    const/4 v0, 0x0

    goto :goto_653

    .line 739
    .end local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v7    # "_result":Z
    :sswitch_65d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 742
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicyAsync(Landroid/os/IBinder;)V

    .line 743
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 747
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :sswitch_66c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->setRemoteControlClientBrowsedPlayer()V

    .line 749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 754
    :sswitch_67a
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRemoteControlClientNowPlayingEntries()V

    .line 756
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 761
    :sswitch_688
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 765
    .local v8, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 766
    .local v2, "_arg1":I
    invoke-virtual {p0, v8, v9, v2}, Landroid/media/IAudioService$Stub;->setRemoteControlClientPlayItem(JI)V

    .line 767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 772
    .end local v2    # "_arg1":I
    .end local v8    # "_arg0":J
    :sswitch_69e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->updateRemoteControllerOnExistingMediaPlayers()V

    .line 774
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 779
    :sswitch_6ac
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->addMediaPlayerAndUpdateRemoteController(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 788
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_6be
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6d3

    const/4 v1, 0x1

    .line 791
    .local v1, "_arg0":Z
    :goto_6ca
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setRadioSpeakerOn(Z)V

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 790
    .end local v1    # "_arg0":Z
    :cond_6d3
    const/4 v1, 0x0

    goto :goto_6ca

    .line 797
    :sswitch_6d5
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isRadioSpeakerOn()Z

    move-result v7

    .line 799
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    if-eqz v7, :cond_6ea

    const/4 v0, 0x1

    :goto_6e4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 800
    :cond_6ea
    const/4 v0, 0x0

    goto :goto_6e4

    .line 805
    .end local v7    # "_result":Z
    :sswitch_6ec
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 808
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getActiveStreamType(I)I

    move-result v7

    .line 809
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 815
    .end local v1    # "_arg0":I
    .end local v7    # "_result":I
    :sswitch_702
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_717

    const/4 v1, 0x1

    .line 818
    .local v1, "_arg0":Z
    :goto_70e
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setMediaSilentMode(Z)V

    .line 819
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 817
    .end local v1    # "_arg0":Z
    :cond_717
    const/4 v1, 0x0

    goto :goto_70e

    .line 824
    :sswitch_719
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isMediaSilentMode()Z

    move-result v7

    .line 826
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    if-eqz v7, :cond_72e

    const/4 v0, 0x1

    :goto_728
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 827
    :cond_72e
    const/4 v0, 0x0

    goto :goto_728

    .line 832
    .end local v7    # "_result":Z
    :sswitch_730
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->dismissVolumePanel()V

    .line 834
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 839
    :sswitch_73e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_753

    const/4 v1, 0x1

    .line 842
    .restart local v1    # "_arg0":Z
    :goto_74a
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setStatusbarHasVolumeSlider(Z)V

    .line 843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 841
    .end local v1    # "_arg0":Z
    :cond_753
    const/4 v1, 0x0

    goto :goto_74a

    .line 848
    :sswitch_755
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_76a

    const/4 v1, 0x1

    .line 851
    .restart local v1    # "_arg0":Z
    :goto_761
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setTogether(Z)V

    .line 852
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 850
    .end local v1    # "_arg0":Z
    :cond_76a
    const/4 v1, 0x0

    goto :goto_761

    .line 857
    :sswitch_76c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v7

    .line 859
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 861
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 865
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_77e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 869
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 870
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->playBackgroundMusic(II)Z

    move-result v7

    .line 871
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    if-eqz v7, :cond_79b

    const/4 v0, 0x1

    :goto_795
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 873
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 872
    :cond_79b
    const/4 v0, 0x0

    goto :goto_795

    .line 877
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Z
    :sswitch_79d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->stopBackgroundMusic()Z

    move-result v7

    .line 879
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    if-eqz v7, :cond_7b2

    const/4 v0, 0x1

    :goto_7ac
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 880
    :cond_7b2
    const/4 v0, 0x0

    goto :goto_7ac

    .line 885
    .end local v7    # "_result":Z
    :sswitch_7b4
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 888
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 894
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_7c6
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 897
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 898
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 900
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 41
    :sswitch_data_7dc
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_49
        0x4 -> :sswitch_62
        0x5 -> :sswitch_7f
        0x6 -> :sswitch_8e
        0x7 -> :sswitch_a8
        0x8 -> :sswitch_c7
        0x9 -> :sswitch_e6
        0xa -> :sswitch_101
        0xb -> :sswitch_11c
        0xc -> :sswitch_13f
        0xd -> :sswitch_156
        0xe -> :sswitch_16c
        0xf -> :sswitch_17e
        0x10 -> :sswitch_194
        0x11 -> :sswitch_1a6
        0x12 -> :sswitch_1bc
        0x13 -> :sswitch_1ce
        0x14 -> :sswitch_1e9
        0x15 -> :sswitch_204
        0x16 -> :sswitch_216
        0x17 -> :sswitch_22c
        0x18 -> :sswitch_242
        0x19 -> :sswitch_25d
        0x1a -> :sswitch_273
        0x1b -> :sswitch_285
        0x1c -> :sswitch_294
        0x1d -> :sswitch_2a7
        0x1e -> :sswitch_2be
        0x1f -> :sswitch_2c9
        0x20 -> :sswitch_2d4
        0x21 -> :sswitch_2ec
        0x22 -> :sswitch_303
        0x23 -> :sswitch_31a
        0x24 -> :sswitch_331
        0x25 -> :sswitch_348
        0x26 -> :sswitch_35f
        0x27 -> :sswitch_376
        0x28 -> :sswitch_3a5
        0x29 -> :sswitch_3c3
        0x2a -> :sswitch_3d5
        0x2b -> :sswitch_3e7
        0x2c -> :sswitch_40e
        0x2d -> :sswitch_445
        0x2e -> :sswitch_458
        0x2f -> :sswitch_473
        0x30 -> :sswitch_48f
        0x31 -> :sswitch_4a5
        0x32 -> :sswitch_4b7
        0x33 -> :sswitch_4c9
        0x34 -> :sswitch_4df
        0x35 -> :sswitch_4f5
        0x36 -> :sswitch_50f
        0x37 -> :sswitch_521
        0x38 -> :sswitch_53b
        0x39 -> :sswitch_565
        0x3a -> :sswitch_58b
        0x3b -> :sswitch_5a2
        0x3c -> :sswitch_5b8
        0x3d -> :sswitch_5d7
        0x3e -> :sswitch_5f2
        0x3f -> :sswitch_600
        0x40 -> :sswitch_61b
        0x41 -> :sswitch_632
        0x42 -> :sswitch_65d
        0x43 -> :sswitch_66c
        0x44 -> :sswitch_67a
        0x45 -> :sswitch_688
        0x46 -> :sswitch_69e
        0x47 -> :sswitch_6ac
        0x48 -> :sswitch_6be
        0x49 -> :sswitch_6d5
        0x4a -> :sswitch_6ec
        0x4b -> :sswitch_702
        0x4c -> :sswitch_719
        0x4d -> :sswitch_730
        0x4e -> :sswitch_73e
        0x4f -> :sswitch_755
        0x50 -> :sswitch_76c
        0x51 -> :sswitch_77e
        0x52 -> :sswitch_79d
        0x53 -> :sswitch_7b4
        0x54 -> :sswitch_7c6
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
