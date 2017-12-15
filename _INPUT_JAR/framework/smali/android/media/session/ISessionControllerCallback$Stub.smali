.class public abstract Landroid/media/session/ISessionControllerCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionControllerCallback.java"

# interfaces
.implements Landroid/media/session/ISessionControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionControllerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionControllerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionControllerCallback"

.field static final TRANSACTION_onEvent:I = 0x1

.field static final TRANSACTION_onExtrasChanged:I = 0x7

.field static final TRANSACTION_onMetadataChanged:I = 0x4

.field static final TRANSACTION_onPlayItemResponse:I = 0x9

.field static final TRANSACTION_onPlaybackStateChanged:I = 0x3

.field static final TRANSACTION_onQueueChanged:I = 0x5

.field static final TRANSACTION_onQueueTitleChanged:I = 0x6

.field static final TRANSACTION_onSessionDestroyed:I = 0x2

.field static final TRANSACTION_onUpdateFolderInfoBrowsedPlayer:I = 0xb

.field static final TRANSACTION_onUpdateNowPlayingContentChange:I = 0xc

.field static final TRANSACTION_onUpdateNowPlayingEntries:I = 0xa

.field static final TRANSACTION_onVolumeInfoChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionControllerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;
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
    const-string v1, "android.media.session.ISessionControllerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/session/ISessionControllerCallback;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/media/session/ISessionControllerCallback;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/media/session/ISessionControllerCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/session/ISessionControllerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_108

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 45
    :sswitch_9
    const-string v3, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v3, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2a

    .line 55
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 60
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_26
    invoke-virtual {p0, v0, v1}, Landroid/media/session/ISessionControllerCallback$Stub;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_8

    .line 58
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_2a
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_26

    .line 65
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_2c
    const-string v3, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/media/session/ISessionControllerCallback$Stub;->onSessionDestroyed()V

    goto :goto_8

    .line 71
    :sswitch_35
    const-string v3, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4c

    .line 74
    sget-object v3, Landroid/media/session/PlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/PlaybackState;

    .line 79
    .local v0, "_arg0":Landroid/media/session/PlaybackState;
    :goto_48
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionControllerCallback$Stub;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    goto :goto_8

    .line 77
    .end local v0    # "_arg0":Landroid/media/session/PlaybackState;
    :cond_4c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/media/session/PlaybackState;
    goto :goto_48

    .line 84
    .end local v0    # "_arg0":Landroid/media/session/PlaybackState;
    :sswitch_4e
    const-string v3, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_65

    .line 87
    sget-object v3, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaMetadata;

    .line 92
    .local v0, "_arg0":Landroid/media/MediaMetadata;
    :goto_61
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionControllerCallback$Stub;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    goto :goto_8

    .line 90
    .end local v0    # "_arg0":Landroid/media/MediaMetadata;
    :cond_65
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/media/MediaMetadata;
    goto :goto_61

    .line 97
    .end local v0    # "_arg0":Landroid/media/MediaMetadata;
    :sswitch_67
    const-string v3, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7e

    .line 100
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 105
    .local v0, "_arg0":Landroid/content/pm/ParceledListSlice;
    :goto_7a
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionControllerCallback$Stub;->onQueueChanged(Landroid/content/pm/ParceledListSlice;)V

    goto :goto_8

    .line 103
    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :cond_7e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_7a

    .line 110
    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :sswitch_80
    const-string v3, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_98

    .line 113
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 118
    .local v0, "_arg0":Ljava/lang/CharSequence;
    :goto_93
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionControllerCallback$Stub;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 116
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    :cond_98
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Ljava/lang/CharSequence;
    goto :goto_93

    .line 123
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_9a
    const-string v3, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b2

    .line 126
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 131
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_ad
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionControllerCallback$Stub;->onExtrasChanged(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 129
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_b2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_ad

    .line 136
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_b4
    const-string v3, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_cc

    .line 139
    sget-object v3, Landroid/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ParcelableVolumeInfo;

    .line 144
    .local v0, "_arg0":Landroid/media/session/ParcelableVolumeInfo;
    :goto_c7
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionControllerCallback$Stub;->onVolumeInfoChanged(Landroid/media/session/ParcelableVolumeInfo;)V

    goto/16 :goto_8

    .line 142
    .end local v0    # "_arg0":Landroid/media/session/ParcelableVolumeInfo;
    :cond_cc
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/media/session/ParcelableVolumeInfo;
    goto :goto_c7

    .line 149
    .end local v0    # "_arg0":Landroid/media/session/ParcelableVolumeInfo;
    :sswitch_ce
    const-string v3, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_df

    move v0, v2

    .line 152
    .local v0, "_arg0":Z
    :goto_da
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionControllerCallback$Stub;->onPlayItemResponse(Z)V

    goto/16 :goto_8

    .line 151
    .end local v0    # "_arg0":Z
    :cond_df
    const/4 v0, 0x0

    goto :goto_da

    .line 157
    :sswitch_e1
    const-string v3, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 160
    .local v0, "_arg0":[J
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionControllerCallback$Stub;->onUpdateNowPlayingEntries([J)V

    goto/16 :goto_8

    .line 165
    .end local v0    # "_arg0":[J
    :sswitch_ef
    const-string v3, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionControllerCallback$Stub;->onUpdateFolderInfoBrowsedPlayer(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 173
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_fd
    const-string v3, "android.media.session.ISessionControllerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Landroid/media/session/ISessionControllerCallback$Stub;->onUpdateNowPlayingContentChange()V

    goto/16 :goto_8

    .line 41
    nop

    :sswitch_data_108
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_35
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_67
        0x6 -> :sswitch_80
        0x7 -> :sswitch_9a
        0x8 -> :sswitch_b4
        0x9 -> :sswitch_ce
        0xa -> :sswitch_e1
        0xb -> :sswitch_ef
        0xc -> :sswitch_fd
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
