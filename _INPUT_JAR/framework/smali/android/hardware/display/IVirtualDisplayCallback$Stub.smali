.class public abstract Landroid/hardware/display/IVirtualDisplayCallback$Stub;
.super Landroid/os/Binder;
.source "IVirtualDisplayCallback.java"

# interfaces
.implements Landroid/hardware/display/IVirtualDisplayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IVirtualDisplayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IVirtualDisplayCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IVirtualDisplayCallback"

.field static final TRANSACTION_onPaused:I = 0x1

.field static final TRANSACTION_onResumed:I = 0x2

.field static final TRANSACTION_onStopped:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.display.IVirtualDisplayCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "android.hardware.display.IVirtualDisplayCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/display/IVirtualDisplayCallback;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/hardware/display/IVirtualDisplayCallback;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/hardware/display/IVirtualDisplayCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
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
    const/4 v0, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_2a

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    .line 43
    :sswitch_9
    const-string v1, "android.hardware.display.IVirtualDisplayCallback"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 48
    :sswitch_f
    const-string v1, "android.hardware.display.IVirtualDisplayCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->onPaused()V

    goto :goto_8

    .line 54
    :sswitch_18
    const-string v1, "android.hardware.display.IVirtualDisplayCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->onResumed()V

    goto :goto_8

    .line 60
    :sswitch_21
    const-string v1, "android.hardware.display.IVirtualDisplayCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->onStopped()V

    goto :goto_8

    .line 39
    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_18
        0x3 -> :sswitch_21
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
