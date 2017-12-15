.class public abstract Landroid/content/pm/IPersonaObserver$Stub;
.super Landroid/os/Binder;
.source "IPersonaObserver.java"

# interfaces
.implements Landroid/content/pm/IPersonaObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPersonaObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPersonaObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPersonaObserver"

.field static final TRANSACTION_onFirstBoot:I = 0x3

.field static final TRANSACTION_onInit:I = 0x2

.field static final TRANSACTION_onKeyGuardStateChanged:I = 0x6

.field static final TRANSACTION_onPersonaSwitch:I = 0x1

.field static final TRANSACTION_onSessionExpired:I = 0x5

.field static final TRANSACTION_onStateChange:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.content.pm.IPersonaObserver"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPersonaObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaObserver;
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
    const-string v1, "android.content.pm.IPersonaObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/pm/IPersonaObserver;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/content/pm/IPersonaObserver;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/content/pm/IPersonaObserver$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/pm/IPersonaObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_68

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 45
    :sswitch_9
    const-string v3, "android.content.pm.IPersonaObserver"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v3, "android.content.pm.IPersonaObserver"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/content/pm/IPersonaObserver$Stub;->onPersonaSwitch()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 57
    :sswitch_1b
    const-string v3, "android.content.pm.IPersonaObserver"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroid/content/pm/IPersonaObserver$Stub;->onInit()V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 64
    :sswitch_27
    const-string v3, "android.content.pm.IPersonaObserver"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/content/pm/IPersonaObserver$Stub;->onFirstBoot()V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 71
    :sswitch_33
    const-string v3, "android.content.pm.IPersonaObserver"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaObserver$Stub;->onStateChange(II)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 82
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_47
    const-string v3, "android.content.pm.IPersonaObserver"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/content/pm/IPersonaObserver$Stub;->onSessionExpired()V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 89
    :sswitch_53
    const-string v3, "android.content.pm.IPersonaObserver"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_66

    move v0, v2

    .line 92
    .local v0, "_arg0":Z
    :goto_5f
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaObserver$Stub;->onKeyGuardStateChanged(Z)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 91
    .end local v0    # "_arg0":Z
    :cond_66
    const/4 v0, 0x0

    goto :goto_5f

    .line 41
    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1b
        0x3 -> :sswitch_27
        0x4 -> :sswitch_33
        0x5 -> :sswitch_47
        0x6 -> :sswitch_53
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
