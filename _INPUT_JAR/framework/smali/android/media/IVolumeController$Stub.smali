.class public abstract Landroid/media/IVolumeController$Stub;
.super Landroid/os/Binder;
.source "IVolumeController.java"

# interfaces
.implements Landroid/media/IVolumeController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IVolumeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IVolumeController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IVolumeController"

.field static final TRANSACTION_dismiss:I = 0x6

.field static final TRANSACTION_displaySafeVolumeWarning:I = 0x1

.field static final TRANSACTION_isSafeVolumeDialogShowing:I = 0x7

.field static final TRANSACTION_masterMuteChanged:I = 0x4

.field static final TRANSACTION_masterVolumeChanged:I = 0x3

.field static final TRANSACTION_setLayoutDirection:I = 0x5

.field static final TRANSACTION_volumeChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.media.IVolumeController"

    invoke-virtual {p0, p0, v0}, Landroid/media/IVolumeController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;
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
    const-string v1, "android.media.IVolumeController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/IVolumeController;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Landroid/media/IVolumeController;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Landroid/media/IVolumeController$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/IVolumeController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
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

    .line 44
    sparse-switch p1, :sswitch_data_72

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_8
    return v4

    .line 48
    :sswitch_9
    const-string v3, "android.media.IVolumeController"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 53
    :sswitch_f
    const-string v3, "android.media.IVolumeController"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IVolumeController$Stub;->displaySafeVolumeWarning(I)V

    goto :goto_8

    .line 61
    .end local v0    # "_arg0":I
    :sswitch_1c
    const-string v3, "android.media.IVolumeController"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/media/IVolumeController$Stub;->volumeChanged(II)V

    goto :goto_8

    .line 71
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_2d
    const-string v3, "android.media.IVolumeController"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IVolumeController$Stub;->masterVolumeChanged(I)V

    goto :goto_8

    .line 79
    .end local v0    # "_arg0":I
    :sswitch_3a
    const-string v3, "android.media.IVolumeController"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IVolumeController$Stub;->masterMuteChanged(I)V

    goto :goto_8

    .line 87
    .end local v0    # "_arg0":I
    :sswitch_47
    const-string v3, "android.media.IVolumeController"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 90
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IVolumeController$Stub;->setLayoutDirection(I)V

    goto :goto_8

    .line 95
    .end local v0    # "_arg0":I
    :sswitch_54
    const-string v3, "android.media.IVolumeController"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroid/media/IVolumeController$Stub;->dismiss()V

    goto :goto_8

    .line 101
    :sswitch_5d
    const-string v3, "android.media.IVolumeController"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroid/media/IVolumeController$Stub;->isSafeVolumeDialogShowing()Z

    move-result v2

    .line 103
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v2, :cond_70

    move v3, v4

    :goto_6c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_70
    const/4 v3, 0x0

    goto :goto_6c

    .line 44
    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_2d
        0x4 -> :sswitch_3a
        0x5 -> :sswitch_47
        0x6 -> :sswitch_54
        0x7 -> :sswitch_5d
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
