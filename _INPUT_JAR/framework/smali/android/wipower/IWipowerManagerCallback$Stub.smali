.class public abstract Landroid/wipower/IWipowerManagerCallback$Stub;
.super Landroid/os/Binder;
.source "IWipowerManagerCallback.java"

# interfaces
.implements Landroid/wipower/IWipowerManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/wipower/IWipowerManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/wipower/IWipowerManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.wipower.IWipowerManagerCallback"

.field static final TRANSACTION_onPowerApply:I = 0x4

.field static final TRANSACTION_onWipowerAlert:I = 0x2

.field static final TRANSACTION_onWipowerData:I = 0x3

.field static final TRANSACTION_onWipowerStateChange:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.wipower.IWipowerManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/wipower/IWipowerManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/wipower/IWipowerManagerCallback;
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
    const-string v1, "android.wipower.IWipowerManagerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/wipower/IWipowerManagerCallback;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/wipower/IWipowerManagerCallback;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/wipower/IWipowerManagerCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/wipower/IWipowerManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 8
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
    const/4 v1, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_50

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 47
    :sswitch_9
    const-string v2, "android.wipower.IWipowerManagerCallback"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 52
    :sswitch_f
    const-string v2, "android.wipower.IWipowerManagerCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/wipower/IWipowerManagerCallback$Stub;->onWipowerStateChange(I)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 61
    .end local v0    # "_arg0":I
    :sswitch_1f
    const-string v2, "android.wipower.IWipowerManagerCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 64
    .local v0, "_arg0":B
    invoke-virtual {p0, v0}, Landroid/wipower/IWipowerManagerCallback$Stub;->onWipowerAlert(B)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 70
    .end local v0    # "_arg0":B
    :sswitch_2f
    const-string v2, "android.wipower.IWipowerManagerCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 73
    .local v0, "_arg0":[B
    invoke-virtual {p0, v0}, Landroid/wipower/IWipowerManagerCallback$Stub;->onWipowerData([B)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 79
    .end local v0    # "_arg0":[B
    :sswitch_3f
    const-string v2, "android.wipower.IWipowerManagerCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 82
    .local v0, "_arg0":B
    invoke-virtual {p0, v0}, Landroid/wipower/IWipowerManagerCallback$Stub;->onPowerApply(B)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 43
    nop

    :sswitch_data_50
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_3f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
