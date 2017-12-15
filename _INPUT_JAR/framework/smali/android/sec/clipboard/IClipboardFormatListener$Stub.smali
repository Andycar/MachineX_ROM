.class public abstract Landroid/sec/clipboard/IClipboardFormatListener$Stub;
.super Landroid/os/Binder;
.source "IClipboardFormatListener.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardFormatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardFormatListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardFormatListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.IClipboardFormatListener"

.field static final TRANSACTION_onNewClipboardData:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "android.sec.clipboard.IClipboardFormatListener"

    invoke-virtual {p0, p0, v0}, Landroid/sec/clipboard/IClipboardFormatListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardFormatListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 40
    if-nez p0, :cond_4

    .line 41
    const/4 v0, 0x0

    .line 47
    :goto_3
    return-object v0

    .line 43
    :cond_4
    const-string v1, "android.sec.clipboard.IClipboardFormatListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 44
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/sec/clipboard/IClipboardFormatListener;

    if-eqz v1, :cond_13

    .line 45
    check-cast v0, Landroid/sec/clipboard/IClipboardFormatListener;

    goto :goto_3

    .line 47
    :cond_13
    new-instance v0, Landroid/sec/clipboard/IClipboardFormatListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/clipboard/IClipboardFormatListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 56
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

    .line 65
    sparse-switch p1, :sswitch_data_30

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 69
    :sswitch_9
    const-string v3, "android.sec.clipboard.IClipboardFormatListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 74
    :sswitch_f
    const-string v3, "android.sec.clipboard.IClipboardFormatListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2d

    .line 79
    sget-object v3, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 84
    .local v1, "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :goto_26
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardFormatListener$Stub;->onNewClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 82
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :cond_2d
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_26

    .line 65
    nop

    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
