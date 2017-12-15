.class public abstract Landroid/media/session/ISessionController$Stub;
.super Landroid/os/Binder;
.source "ISessionController.java"

# interfaces
.implements Landroid/media/session/ISessionController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionController"

.field static final TRANSACTION_adjustVolume:I = 0xb

.field static final TRANSACTION_fastForward:I = 0x15

.field static final TRANSACTION_getExtras:I = 0x21

.field static final TRANSACTION_getFlags:I = 0x9

.field static final TRANSACTION_getLaunchPendingIntent:I = 0x8

.field static final TRANSACTION_getMetadata:I = 0x1d

.field static final TRANSACTION_getPackageName:I = 0x6

.field static final TRANSACTION_getPlaybackState:I = 0x1e

.field static final TRANSACTION_getQueue:I = 0x1f

.field static final TRANSACTION_getQueueTitle:I = 0x20

.field static final TRANSACTION_getRatingType:I = 0x22

.field static final TRANSACTION_getRemoteControlClientNowPlayingEntries:I = 0x1a

.field static final TRANSACTION_getTag:I = 0x7

.field static final TRANSACTION_getVolumeAttributes:I = 0xa

.field static final TRANSACTION_isTransportControlEnabled:I = 0x5

.field static final TRANSACTION_next:I = 0x13

.field static final TRANSACTION_pause:I = 0x11

.field static final TRANSACTION_play:I = 0xd

.field static final TRANSACTION_playFromMediaId:I = 0xe

.field static final TRANSACTION_playFromSearch:I = 0xf

.field static final TRANSACTION_previous:I = 0x14

.field static final TRANSACTION_rate:I = 0x1b

.field static final TRANSACTION_registerCallbackListener:I = 0x3

.field static final TRANSACTION_rewind:I = 0x16

.field static final TRANSACTION_seekTo:I = 0x17

.field static final TRANSACTION_sendCommand:I = 0x1

.field static final TRANSACTION_sendCustomAction:I = 0x1c

.field static final TRANSACTION_sendMediaButton:I = 0x2

.field static final TRANSACTION_setRemoteControlClientBrowsedPlayer:I = 0x18

.field static final TRANSACTION_setRemoteControlClientPlayItem:I = 0x19

.field static final TRANSACTION_setVolumeTo:I = 0xc

.field static final TRANSACTION_skipToQueueItem:I = 0x10

.field static final TRANSACTION_stop:I = 0x12

.field static final TRANSACTION_unregisterCallbackListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.media.session.ISessionController"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "android.media.session.ISessionController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/session/ISessionController;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/media/session/ISessionController;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/media/session/ISessionController$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/session/ISessionController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_300

    .line 424
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 46
    :sswitch_a
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 51
    :sswitch_10
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c

    .line 56
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 62
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    .line 63
    sget-object v6, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 68
    .local v3, "_arg2":Landroid/os/ResultReceiver;
    :goto_35
    invoke-virtual {p0, v0, v2, v3}, Landroid/media/session/ISessionController$Stub;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 59
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    :cond_3c
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_27

    .line 66
    :cond_3e
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/ResultReceiver;
    goto :goto_35

    .line 74
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    :sswitch_40
    const-string v8, "android.media.session.ISessionController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_61

    .line 77
    sget-object v8, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 82
    .local v0, "_arg0":Landroid/view/KeyEvent;
    :goto_53
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionController$Stub;->sendMediaButton(Landroid/view/KeyEvent;)Z

    move-result v4

    .line 83
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v4, :cond_5d

    move v6, v7

    :cond_5d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 80
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    .end local v4    # "_result":Z
    :cond_61
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/KeyEvent;
    goto :goto_53

    .line 89
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    :sswitch_63
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/session/ISessionControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v0

    .line 92
    .local v0, "_arg0":Landroid/media/session/ISessionControllerCallback;
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionController$Stub;->registerCallbackListener(Landroid/media/session/ISessionControllerCallback;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 98
    .end local v0    # "_arg0":Landroid/media/session/ISessionControllerCallback;
    :sswitch_77
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/media/session/ISessionControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v0

    .line 101
    .restart local v0    # "_arg0":Landroid/media/session/ISessionControllerCallback;
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionController$Stub;->unregisterCallbackListener(Landroid/media/session/ISessionControllerCallback;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 107
    .end local v0    # "_arg0":Landroid/media/session/ISessionControllerCallback;
    :sswitch_8c
    const-string v8, "android.media.session.ISessionController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->isTransportControlEnabled()Z

    move-result v4

    .line 109
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v4, :cond_9b

    move v6, v7

    :cond_9b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 115
    .end local v4    # "_result":Z
    :sswitch_a0
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 123
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_b1
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 125
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 131
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_c2
    const-string v8, "android.media.session.ISessionController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 133
    .local v4, "_result":Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v4, :cond_d8

    .line 135
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {v4, p3, v7}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 139
    :cond_d8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 145
    .end local v4    # "_result":Landroid/app/PendingIntent;
    :sswitch_dd
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getFlags()J

    move-result-wide v4

    .line 147
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 153
    .end local v4    # "_result":J
    :sswitch_ee
    const-string v8, "android.media.session.ISessionController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getVolumeAttributes()Landroid/media/session/ParcelableVolumeInfo;

    move-result-object v4

    .line 155
    .local v4, "_result":Landroid/media/session/ParcelableVolumeInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v4, :cond_104

    .line 157
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {v4, p3, v7}, Landroid/media/session/ParcelableVolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 161
    :cond_104
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 167
    .end local v4    # "_result":Landroid/media/session/ParcelableVolumeInfo;
    :sswitch_109
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/media/session/ISessionController$Stub;->adjustVolume(IILjava/lang/String;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 180
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_122
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 184
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 186
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/media/session/ISessionController$Stub;->setVolumeTo(IILjava/lang/String;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 193
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_13b
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->play()V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 200
    :sswitch_148
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_167

    .line 205
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 210
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_15f
    invoke-virtual {p0, v0, v2}, Landroid/media/session/ISessionController$Stub;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 208
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_167
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_15f

    .line 216
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_169
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_188

    .line 221
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 226
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_180
    invoke-virtual {p0, v0, v2}, Landroid/media/session/ISessionController$Stub;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 224
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_188
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_180

    .line 232
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_18a
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 235
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Landroid/media/session/ISessionController$Stub;->skipToQueueItem(J)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 241
    .end local v0    # "_arg0":J
    :sswitch_19b
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->pause()V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 248
    :sswitch_1a8
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->stop()V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 255
    :sswitch_1b5
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->next()V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 262
    :sswitch_1c2
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->previous()V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 269
    :sswitch_1cf
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->fastForward()V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 276
    :sswitch_1dc
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->rewind()V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 283
    :sswitch_1e9
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 286
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Landroid/media/session/ISessionController$Stub;->seekTo(J)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 292
    .end local v0    # "_arg0":J
    :sswitch_1fa
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->setRemoteControlClientBrowsedPlayer()V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 299
    :sswitch_207
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 303
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/session/ISessionController$Stub;->setRemoteControlClientPlayItem(JI)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 310
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :sswitch_21c
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getRemoteControlClientNowPlayingEntries()V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 317
    :sswitch_229
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_244

    .line 320
    sget-object v6, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Rating;

    .line 325
    .local v0, "_arg0":Landroid/media/Rating;
    :goto_23c
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionController$Stub;->rate(Landroid/media/Rating;)V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 323
    .end local v0    # "_arg0":Landroid/media/Rating;
    :cond_244
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/media/Rating;
    goto :goto_23c

    .line 331
    .end local v0    # "_arg0":Landroid/media/Rating;
    :sswitch_246
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_265

    .line 336
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 341
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_25d
    invoke-virtual {p0, v0, v2}, Landroid/media/session/ISessionController$Stub;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 339
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_265
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_25d

    .line 347
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_267
    const-string v8, "android.media.session.ISessionController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v4

    .line 349
    .local v4, "_result":Landroid/media/MediaMetadata;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    if-eqz v4, :cond_27d

    .line 351
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    invoke-virtual {v4, p3, v7}, Landroid/media/MediaMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 355
    :cond_27d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 361
    .end local v4    # "_result":Landroid/media/MediaMetadata;
    :sswitch_282
    const-string v8, "android.media.session.ISessionController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    .line 363
    .local v4, "_result":Landroid/media/session/PlaybackState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v4, :cond_298

    .line 365
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    invoke-virtual {v4, p3, v7}, Landroid/media/session/PlaybackState;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 369
    :cond_298
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 375
    .end local v4    # "_result":Landroid/media/session/PlaybackState;
    :sswitch_29d
    const-string v8, "android.media.session.ISessionController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getQueue()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 377
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    if-eqz v4, :cond_2b3

    .line 379
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    invoke-virtual {v4, p3, v7}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 383
    :cond_2b3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 389
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_2b8
    const-string v8, "android.media.session.ISessionController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 391
    .local v4, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    if-eqz v4, :cond_2ce

    .line 393
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    invoke-static {v4, p3, v7}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 397
    :cond_2ce
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 403
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :sswitch_2d3
    const-string v8, "android.media.session.ISessionController"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 405
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    if-eqz v4, :cond_2e9

    .line 407
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    invoke-virtual {v4, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 411
    :cond_2e9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 417
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_2ee
    const-string v6, "android.media.session.ISessionController"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Landroid/media/session/ISessionController$Stub;->getRatingType()I

    move-result v4

    .line 419
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 42
    nop

    :sswitch_data_300
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_40
        0x3 -> :sswitch_63
        0x4 -> :sswitch_77
        0x5 -> :sswitch_8c
        0x6 -> :sswitch_a0
        0x7 -> :sswitch_b1
        0x8 -> :sswitch_c2
        0x9 -> :sswitch_dd
        0xa -> :sswitch_ee
        0xb -> :sswitch_109
        0xc -> :sswitch_122
        0xd -> :sswitch_13b
        0xe -> :sswitch_148
        0xf -> :sswitch_169
        0x10 -> :sswitch_18a
        0x11 -> :sswitch_19b
        0x12 -> :sswitch_1a8
        0x13 -> :sswitch_1b5
        0x14 -> :sswitch_1c2
        0x15 -> :sswitch_1cf
        0x16 -> :sswitch_1dc
        0x17 -> :sswitch_1e9
        0x18 -> :sswitch_1fa
        0x19 -> :sswitch_207
        0x1a -> :sswitch_21c
        0x1b -> :sswitch_229
        0x1c -> :sswitch_246
        0x1d -> :sswitch_267
        0x1e -> :sswitch_282
        0x1f -> :sswitch_29d
        0x20 -> :sswitch_2b8
        0x21 -> :sswitch_2d3
        0x22 -> :sswitch_2ee
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
