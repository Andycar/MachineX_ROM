.class public abstract Landroid/media/tv/ITvInputServiceCallback$Stub;
.super Landroid/os/Binder;
.source "ITvInputServiceCallback.java"

# interfaces
.implements Landroid/media/tv/ITvInputServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputServiceCallback"

.field static final TRANSACTION_addHardwareTvInput:I = 0x1

.field static final TRANSACTION_addHdmiTvInput:I = 0x2

.field static final TRANSACTION_removeTvInput:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.media.tv.ITvInputServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputServiceCallback;
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
    const-string v1, "android.media.tv.ITvInputServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/ITvInputServiceCallback;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/media/tv/ITvInputServiceCallback;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/media/tv/ITvInputServiceCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/tv/ITvInputServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 43
    sparse-switch p1, :sswitch_data_56

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 47
    :sswitch_9
    const-string v3, "android.media.tv.ITvInputServiceCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 52
    :sswitch_f
    const-string v3, "android.media.tv.ITvInputServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2a

    .line 57
    sget-object v3, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputInfo;

    .line 62
    .local v1, "_arg1":Landroid/media/tv/TvInputInfo;
    :goto_26
    invoke-virtual {p0, v0, v1}, Landroid/media/tv/ITvInputServiceCallback$Stub;->addHardwareTvInput(ILandroid/media/tv/TvInputInfo;)V

    goto :goto_8

    .line 60
    .end local v1    # "_arg1":Landroid/media/tv/TvInputInfo;
    :cond_2a
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/media/tv/TvInputInfo;
    goto :goto_26

    .line 67
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/tv/TvInputInfo;
    :sswitch_2c
    const-string v3, "android.media.tv.ITvInputServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_47

    .line 72
    sget-object v3, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputInfo;

    .line 77
    .restart local v1    # "_arg1":Landroid/media/tv/TvInputInfo;
    :goto_43
    invoke-virtual {p0, v0, v1}, Landroid/media/tv/ITvInputServiceCallback$Stub;->addHdmiTvInput(ILandroid/media/tv/TvInputInfo;)V

    goto :goto_8

    .line 75
    .end local v1    # "_arg1":Landroid/media/tv/TvInputInfo;
    :cond_47
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/media/tv/TvInputInfo;
    goto :goto_43

    .line 82
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/tv/TvInputInfo;
    :sswitch_49
    const-string v3, "android.media.tv.ITvInputServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputServiceCallback$Stub;->removeTvInput(Ljava/lang/String;)V

    goto :goto_8

    .line 43
    :sswitch_data_56
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_49
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
