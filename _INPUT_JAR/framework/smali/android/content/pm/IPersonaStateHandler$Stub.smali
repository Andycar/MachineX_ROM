.class public abstract Landroid/content/pm/IPersonaStateHandler$Stub;
.super Landroid/os/Binder;
.source "IPersonaStateHandler.java"

# interfaces
.implements Landroid/content/pm/IPersonaStateHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPersonaStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPersonaStateHandler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPersonaStateHandler"

.field static final TRANSACTION_mapToNormalizedState:I = 0x1

.field static final TRANSACTION_postEvent:I = 0x2

.field static final TRANSACTION_postEventForPersona:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.content.pm.IPersonaStateHandler"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;
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
    const-string v1, "android.content.pm.IPersonaStateHandler"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/pm/IPersonaStateHandler;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/content/pm/IPersonaStateHandler;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/content/pm/IPersonaStateHandler$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/pm/IPersonaStateHandler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_68

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 45
    :sswitch_9
    const-string v4, "android.content.pm.IPersonaStateHandler"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v4, "android.content.pm.IPersonaStateHandler"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->mapToNormalizedState(I)I

    move-result v2

    .line 54
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 60
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_23
    const-string v4, "android.content.pm.IPersonaStateHandler"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_41

    .line 63
    sget-object v4, Landroid/content/pm/PersonaEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaEvent;

    .line 68
    .local v0, "_arg0":Landroid/content/pm/PersonaEvent;
    :goto_36
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->postEvent(Landroid/content/pm/PersonaEvent;)I

    move-result v2

    .line 69
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 66
    .end local v0    # "_arg0":Landroid/content/pm/PersonaEvent;
    .end local v2    # "_result":I
    :cond_41
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/pm/PersonaEvent;
    goto :goto_36

    .line 75
    .end local v0    # "_arg0":Landroid/content/pm/PersonaEvent;
    :sswitch_43
    const-string v4, "android.content.pm.IPersonaStateHandler"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_65

    .line 80
    sget-object v4, Landroid/content/pm/PersonaEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PersonaEvent;

    .line 85
    .local v1, "_arg1":Landroid/content/pm/PersonaEvent;
    :goto_5a
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaStateHandler$Stub;->postEventForPersona(ILandroid/content/pm/PersonaEvent;)I

    move-result v2

    .line 86
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 83
    .end local v1    # "_arg1":Landroid/content/pm/PersonaEvent;
    .end local v2    # "_result":I
    :cond_65
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/pm/PersonaEvent;
    goto :goto_5a

    .line 41
    nop

    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_23
        0x3 -> :sswitch_43
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
