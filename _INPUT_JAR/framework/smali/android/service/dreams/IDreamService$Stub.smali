.class public abstract Landroid/service/dreams/IDreamService$Stub;
.super Landroid/os/Binder;
.source "IDreamService.java"

# interfaces
.implements Landroid/service/dreams/IDreamService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/IDreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/IDreamService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.dreams.IDreamService"

.field static final TRANSACTION_attach:I = 0x1

.field static final TRANSACTION_detach:I = 0x2

.field static final TRANSACTION_wakeUp:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.service.dreams.IDreamService"

    invoke-virtual {p0, p0, v0}, Landroid/service/dreams/IDreamService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamService;
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
    const-string v1, "android.service.dreams.IDreamService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/dreams/IDreamService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/service/dreams/IDreamService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/service/dreams/IDreamService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/dreams/IDreamService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_38

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 45
    :sswitch_9
    const-string v3, "android.service.dreams.IDreamService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v3, "android.service.dreams.IDreamService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_23

    move v1, v2

    .line 55
    .local v1, "_arg1":Z
    :goto_1f
    invoke-virtual {p0, v0, v1}, Landroid/service/dreams/IDreamService$Stub;->attach(Landroid/os/IBinder;Z)V

    goto :goto_8

    .line 54
    .end local v1    # "_arg1":Z
    :cond_23
    const/4 v1, 0x0

    goto :goto_1f

    .line 60
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_25
    const-string v3, "android.service.dreams.IDreamService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/service/dreams/IDreamService$Stub;->detach()V

    goto :goto_8

    .line 66
    :sswitch_2e
    const-string v3, "android.service.dreams.IDreamService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/service/dreams/IDreamService$Stub;->wakeUp()V

    goto :goto_8

    .line 41
    nop

    :sswitch_data_38
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_25
        0x3 -> :sswitch_2e
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
