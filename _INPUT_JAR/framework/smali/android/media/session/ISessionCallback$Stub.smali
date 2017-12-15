.class public abstract Landroid/media/session/ISessionCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionCallback.java"

# interfaces
.implements Landroid/media/session/ISessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionCallback"

.field static final TRANSACTION_getRemoteControlClientNowPlayingEntries:I = 0x10

.field static final TRANSACTION_onAdjustVolume:I = 0x13

.field static final TRANSACTION_onCommand:I = 0x1

.field static final TRANSACTION_onCustomAction:I = 0x12

.field static final TRANSACTION_onFastForward:I = 0xb

.field static final TRANSACTION_onMediaButton:I = 0x2

.field static final TRANSACTION_onNext:I = 0x9

.field static final TRANSACTION_onPause:I = 0x7

.field static final TRANSACTION_onPlay:I = 0x3

.field static final TRANSACTION_onPlayFromMediaId:I = 0x4

.field static final TRANSACTION_onPlayFromSearch:I = 0x5

.field static final TRANSACTION_onPrevious:I = 0xa

.field static final TRANSACTION_onRate:I = 0x11

.field static final TRANSACTION_onRewind:I = 0xc

.field static final TRANSACTION_onSeekTo:I = 0xd

.field static final TRANSACTION_onSetVolumeTo:I = 0x14

.field static final TRANSACTION_onSkipToTrack:I = 0x6

.field static final TRANSACTION_onStop:I = 0x8

.field static final TRANSACTION_setRemoteControlClientBrowsedPlayer:I = 0xe

.field static final TRANSACTION_setRemoteControlClientPlayItem:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.media.session.ISessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionCallback;
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
    const-string v1, "android.media.session.ISessionCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/session/ISessionCallback;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/media/session/ISessionCallback;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/media/session/ISessionCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 11
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
    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_180

    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_8
    return v4

    .line 45
    :sswitch_9
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38

    .line 55
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 61
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3a

    .line 62
    sget-object v5, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 67
    .local v3, "_arg2":Landroid/os/ResultReceiver;
    :goto_34
    invoke-virtual {p0, v0, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto :goto_8

    .line 58
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    :cond_38
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_26

    .line 65
    :cond_3a
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/ResultReceiver;
    goto :goto_34

    .line 72
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    :sswitch_3c
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_65

    .line 75
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 81
    .local v0, "_arg0":Landroid/content/Intent;
    :goto_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 83
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_67

    .line 84
    sget-object v5, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 89
    .restart local v3    # "_arg2":Landroid/os/ResultReceiver;
    :goto_61
    invoke-virtual {p0, v0, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onMediaButton(Landroid/content/Intent;ILandroid/os/ResultReceiver;)V

    goto :goto_8

    .line 78
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    :cond_65
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_4f

    .line 87
    .restart local v2    # "_arg1":I
    :cond_67
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/ResultReceiver;
    goto :goto_61

    .line 94
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/ResultReceiver;
    :sswitch_69
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPlay()V

    goto :goto_8

    .line 100
    :sswitch_72
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8e

    .line 105
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 110
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_89
    invoke-virtual {p0, v0, v2}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 108
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_8e
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_89

    .line 115
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_90
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ac

    .line 120
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 125
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_a7
    invoke-virtual {p0, v0, v2}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 123
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_ac
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_a7

    .line 130
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_ae
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 133
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Landroid/media/session/ISessionCallback$Stub;->onSkipToTrack(J)V

    goto/16 :goto_8

    .line 138
    .end local v0    # "_arg0":J
    :sswitch_bc
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPause()V

    goto/16 :goto_8

    .line 144
    :sswitch_c6
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onStop()V

    goto/16 :goto_8

    .line 150
    :sswitch_d0
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onNext()V

    goto/16 :goto_8

    .line 156
    :sswitch_da
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPrevious()V

    goto/16 :goto_8

    .line 162
    :sswitch_e4
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onFastForward()V

    goto/16 :goto_8

    .line 168
    :sswitch_ee
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onRewind()V

    goto/16 :goto_8

    .line 174
    :sswitch_f8
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 177
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Landroid/media/session/ISessionCallback$Stub;->onSeekTo(J)V

    goto/16 :goto_8

    .line 182
    .end local v0    # "_arg0":J
    :sswitch_106
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->setRemoteControlClientBrowsedPlayer()V

    goto/16 :goto_8

    .line 188
    :sswitch_110
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 192
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/session/ISessionCallback$Stub;->setRemoteControlClientPlayItem(JI)V

    goto/16 :goto_8

    .line 198
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :sswitch_122
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->getRemoteControlClientNowPlayingEntries()V

    goto/16 :goto_8

    .line 204
    :sswitch_12c
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_144

    .line 207
    sget-object v5, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Rating;

    .line 212
    .local v0, "_arg0":Landroid/media/Rating;
    :goto_13f
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionCallback$Stub;->onRate(Landroid/media/Rating;)V

    goto/16 :goto_8

    .line 210
    .end local v0    # "_arg0":Landroid/media/Rating;
    :cond_144
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/media/Rating;
    goto :goto_13f

    .line 217
    .end local v0    # "_arg0":Landroid/media/Rating;
    :sswitch_146
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_162

    .line 222
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 227
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_15d
    invoke-virtual {p0, v0, v2}, Landroid/media/session/ISessionCallback$Stub;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 225
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_162
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_15d

    .line 232
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_164
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 235
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionCallback$Stub;->onAdjustVolume(I)V

    goto/16 :goto_8

    .line 240
    .end local v0    # "_arg0":I
    :sswitch_172
    const-string v5, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 243
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionCallback$Stub;->onSetVolumeTo(I)V

    goto/16 :goto_8

    .line 41
    :sswitch_data_180
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_3c
        0x3 -> :sswitch_69
        0x4 -> :sswitch_72
        0x5 -> :sswitch_90
        0x6 -> :sswitch_ae
        0x7 -> :sswitch_bc
        0x8 -> :sswitch_c6
        0x9 -> :sswitch_d0
        0xa -> :sswitch_da
        0xb -> :sswitch_e4
        0xc -> :sswitch_ee
        0xd -> :sswitch_f8
        0xe -> :sswitch_106
        0xf -> :sswitch_110
        0x10 -> :sswitch_122
        0x11 -> :sswitch_12c
        0x12 -> :sswitch_146
        0x13 -> :sswitch_164
        0x14 -> :sswitch_172
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
