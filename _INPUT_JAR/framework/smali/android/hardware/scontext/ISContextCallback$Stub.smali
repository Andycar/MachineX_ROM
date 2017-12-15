.class public abstract Landroid/hardware/scontext/ISContextCallback$Stub;
.super Landroid/os/Binder;
.source "ISContextCallback.java"

# interfaces
.implements Landroid/hardware/scontext/ISContextCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/ISContextCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/ISContextCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.scontext.ISContextCallback"

.field static final TRANSACTION_getListenerInfo:I = 0x2

.field static final TRANSACTION_scontextCallback:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.hardware.scontext.ISContextCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/scontext/ISContextCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextCallback;
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
    const-string v1, "android.hardware.scontext.ISContextCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/scontext/ISContextCallback;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/hardware/scontext/ISContextCallback;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/hardware/scontext/ISContextCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/scontext/ISContextCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_3c

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 45
    :sswitch_9
    const-string v3, "android.hardware.scontext.ISContextCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v3, "android.hardware.scontext.ISContextCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    .line 53
    sget-object v3, Landroid/hardware/scontext/SContextEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextEvent;

    .line 58
    .local v0, "_arg0":Landroid/hardware/scontext/SContextEvent;
    :goto_22
    invoke-virtual {p0, v0}, Landroid/hardware/scontext/ISContextCallback$Stub;->scontextCallback(Landroid/hardware/scontext/SContextEvent;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 56
    .end local v0    # "_arg0":Landroid/hardware/scontext/SContextEvent;
    :cond_29
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/scontext/SContextEvent;
    goto :goto_22

    .line 64
    .end local v0    # "_arg0":Landroid/hardware/scontext/SContextEvent;
    :sswitch_2b
    const-string v3, "android.hardware.scontext.ISContextCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/hardware/scontext/ISContextCallback$Stub;->getListenerInfo()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 41
    nop

    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_2b
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
