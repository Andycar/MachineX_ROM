.class public abstract Landroid/media/IRemoteControlDisplay$Stub;
.super Landroid/os/Binder;
.source "IRemoteControlDisplay.java"

# interfaces
.implements Landroid/media/IRemoteControlDisplay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRemoteControlDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRemoteControlDisplay$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IRemoteControlDisplay"

.field static final TRANSACTION_setAllMetadata:I = 0x7

.field static final TRANSACTION_setArtwork:I = 0x6

.field static final TRANSACTION_setCurrentClientId:I = 0x1

.field static final TRANSACTION_setEnabled:I = 0x2

.field static final TRANSACTION_setMetadata:I = 0x5

.field static final TRANSACTION_setPlaybackState:I = 0x3

.field static final TRANSACTION_setTransportControlInfo:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.media.IRemoteControlDisplay"

    invoke-virtual {p0, p0, v0}, Landroid/media/IRemoteControlDisplay$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_3
    return-object v0

    .line 32
    :cond_4
    const-string v1, "android.media.IRemoteControlDisplay"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Landroid/media/IRemoteControlDisplay;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Landroid/media/IRemoteControlDisplay$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/IRemoteControlDisplay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
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
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_e4

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    .line 48
    :sswitch_a
    const-string v1, "android.media.IRemoteControlDisplay"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 53
    :sswitch_10
    const-string v1, "android.media.IRemoteControlDisplay"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 57
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_32

    .line 58
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 64
    .local v3, "_arg1":Landroid/app/PendingIntent;
    :goto_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e

    move v4, v0

    .line 65
    .local v4, "_arg2":Z
    :cond_2e
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/IRemoteControlDisplay$Stub;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V

    goto :goto_9

    .line 61
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    .end local v4    # "_arg2":Z
    :cond_32
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_27

    .line 70
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_34
    const-string v1, "android.media.IRemoteControlDisplay"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_44

    move v2, v0

    .line 73
    .local v2, "_arg0":Z
    :goto_40
    invoke-virtual {p0, v2}, Landroid/media/IRemoteControlDisplay$Stub;->setEnabled(Z)V

    goto :goto_9

    .end local v2    # "_arg0":Z
    :cond_44
    move v2, v4

    .line 72
    goto :goto_40

    .line 78
    :sswitch_46
    const-string v1, "android.media.IRemoteControlDisplay"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 82
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 84
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 86
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 88
    .local v6, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .local v8, "_arg4":F
    move-object v1, p0

    .line 89
    invoke-virtual/range {v1 .. v8}, Landroid/media/IRemoteControlDisplay$Stub;->setPlaybackState(IIJJF)V

    goto :goto_9

    .line 94
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":J
    .end local v6    # "_arg3":J
    .end local v8    # "_arg4":F
    :sswitch_64
    const-string v1, "android.media.IRemoteControlDisplay"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 98
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 100
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 101
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/IRemoteControlDisplay$Stub;->setTransportControlInfo(III)V

    goto :goto_9

    .line 106
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_79
    const-string v1, "android.media.IRemoteControlDisplay"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_95

    .line 111
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 116
    .local v3, "_arg1":Landroid/os/Bundle;
    :goto_90
    invoke-virtual {p0, v2, v3}, Landroid/media/IRemoteControlDisplay$Stub;->setMetadata(ILandroid/os/Bundle;)V

    goto/16 :goto_9

    .line 114
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_95
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/os/Bundle;
    goto :goto_90

    .line 121
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_97
    const-string v1, "android.media.IRemoteControlDisplay"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b3

    .line 126
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 131
    .local v3, "_arg1":Landroid/graphics/Bitmap;
    :goto_ae
    invoke-virtual {p0, v2, v3}, Landroid/media/IRemoteControlDisplay$Stub;->setArtwork(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_9

    .line 129
    .end local v3    # "_arg1":Landroid/graphics/Bitmap;
    :cond_b3
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/graphics/Bitmap;
    goto :goto_ae

    .line 136
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_b5
    const-string v1, "android.media.IRemoteControlDisplay"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_df

    .line 141
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 147
    .local v3, "_arg1":Landroid/os/Bundle;
    :goto_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e1

    .line 148
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 153
    .local v4, "_arg2":Landroid/graphics/Bitmap;
    :goto_da
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/IRemoteControlDisplay$Stub;->setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V

    goto/16 :goto_9

    .line 144
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":Landroid/graphics/Bitmap;
    :cond_df
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/os/Bundle;
    goto :goto_cc

    .line 151
    :cond_e1
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/graphics/Bitmap;
    goto :goto_da

    .line 44
    nop

    :sswitch_data_e4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_34
        0x3 -> :sswitch_46
        0x4 -> :sswitch_64
        0x5 -> :sswitch_79
        0x6 -> :sswitch_97
        0x7 -> :sswitch_b5
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
