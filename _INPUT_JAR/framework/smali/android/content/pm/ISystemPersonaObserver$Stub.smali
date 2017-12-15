.class public abstract Landroid/content/pm/ISystemPersonaObserver$Stub;
.super Landroid/os/Binder;
.source "ISystemPersonaObserver.java"

# interfaces
.implements Landroid/content/pm/ISystemPersonaObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ISystemPersonaObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ISystemPersonaObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.ISystemPersonaObserver"

.field static final TRANSACTION_onKnoxContainerLaunch:I = 0x4

.field static final TRANSACTION_onPersonaActive:I = 0x1

.field static final TRANSACTION_onRemovePersona:I = 0x2

.field static final TRANSACTION_onResetPersona:I = 0x3

.field static final TRANSACTION_onStateChange:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.content.pm.ISystemPersonaObserver"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/ISystemPersonaObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/ISystemPersonaObserver;
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
    const-string v1, "android.content.pm.ISystemPersonaObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/pm/ISystemPersonaObserver;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/content/pm/ISystemPersonaObserver;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/content/pm/ISystemPersonaObserver$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/pm/ISystemPersonaObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_80

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 45
    :sswitch_9
    const-string v4, "android.content.pm.ISystemPersonaObserver"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v4, "android.content.pm.ISystemPersonaObserver"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/ISystemPersonaObserver$Stub;->onPersonaActive(I)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 59
    .end local v0    # "_arg0":I
    :sswitch_1f
    const-string v4, "android.content.pm.ISystemPersonaObserver"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/ISystemPersonaObserver$Stub;->onRemovePersona(I)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 68
    .end local v0    # "_arg0":I
    :sswitch_2f
    const-string v4, "android.content.pm.ISystemPersonaObserver"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/ISystemPersonaObserver$Stub;->onResetPersona(I)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 77
    .end local v0    # "_arg0":I
    :sswitch_3f
    const-string v4, "android.content.pm.ISystemPersonaObserver"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/ISystemPersonaObserver$Stub;->onKnoxContainerLaunch(I)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 86
    .end local v0    # "_arg0":I
    :sswitch_4f
    const-string v4, "android.content.pm.ISystemPersonaObserver"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 90
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7b

    .line 91
    sget-object v4, Landroid/content/pm/PersonaState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PersonaState;

    .line 97
    .local v1, "_arg1":Landroid/content/pm/PersonaState;
    :goto_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7d

    .line 98
    sget-object v4, Landroid/content/pm/PersonaState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaState;

    .line 103
    .local v2, "_arg2":Landroid/content/pm/PersonaState;
    :goto_74
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/ISystemPersonaObserver$Stub;->onStateChange(ILandroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 94
    .end local v1    # "_arg1":Landroid/content/pm/PersonaState;
    .end local v2    # "_arg2":Landroid/content/pm/PersonaState;
    :cond_7b
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/pm/PersonaState;
    goto :goto_66

    .line 101
    :cond_7d
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/content/pm/PersonaState;
    goto :goto_74

    .line 41
    nop

    :sswitch_data_80
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_3f
        0x5 -> :sswitch_4f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
