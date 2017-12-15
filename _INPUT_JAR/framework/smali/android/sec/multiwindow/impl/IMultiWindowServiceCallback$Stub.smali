.class public abstract Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IMultiWindowServiceCallback.java"

# interfaces
.implements Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.multiwindow.impl.IMultiWindowServiceCallback"

.field static final TRANSACTION_onArrangeStateUpdate:I = 0x2

.field static final TRANSACTION_onMinimizeUpdate:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.sec.multiwindow.impl.IMultiWindowServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;
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
    const-string v1, "android.sec.multiwindow.impl.IMultiWindowServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 39
    sparse-switch p1, :sswitch_data_2e

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 43
    :sswitch_9
    const-string v3, "android.sec.multiwindow.impl.IMultiWindowServiceCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 48
    :sswitch_f
    const-string v3, "android.sec.multiwindow.impl.IMultiWindowServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 52
    .local v0, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 53
    .local v1, "_arg1":F
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;->onMinimizeUpdate(FF)V

    goto :goto_8

    .line 58
    .end local v0    # "_arg0":F
    .end local v1    # "_arg1":F
    :sswitch_20
    const-string v3, "android.sec.multiwindow.impl.IMultiWindowServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;->onArrangeStateUpdate(I)V

    goto :goto_8

    .line 39
    nop

    :sswitch_data_2e
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
