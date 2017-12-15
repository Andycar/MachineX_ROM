.class public abstract Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub;
.super Landroid/os/Binder;
.source "IFingerprintServiceReceiver.java"

# interfaces
.implements Landroid/service/fingerprint/IFingerprintServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/fingerprint/IFingerprintServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.fingerprint.IFingerprintServiceReceiver"

.field static final TRANSACTION_onAcquired:I = 0x2

.field static final TRANSACTION_onEnrollResult:I = 0x1

.field static final TRANSACTION_onError:I = 0x4

.field static final TRANSACTION_onProcessed:I = 0x3

.field static final TRANSACTION_onRemoved:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.service.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {p0, p0, v0}, Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/fingerprint/IFingerprintServiceReceiver;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "android.service.fingerprint.IFingerprintServiceReceiver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/service/fingerprint/IFingerprintServiceReceiver;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
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

    .line 42
    sparse-switch p1, :sswitch_data_54

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 46
    :sswitch_9
    const-string v3, "android.service.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 51
    :sswitch_f
    const-string v3, "android.service.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub;->onEnrollResult(II)V

    goto :goto_8

    .line 61
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_20
    const-string v3, "android.service.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub;->onAcquired(I)V

    goto :goto_8

    .line 69
    .end local v0    # "_arg0":I
    :sswitch_2d
    const-string v3, "android.service.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub;->onProcessed(I)V

    goto :goto_8

    .line 77
    .end local v0    # "_arg0":I
    :sswitch_3a
    const-string v3, "android.service.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub;->onError(I)V

    goto :goto_8

    .line 85
    .end local v0    # "_arg0":I
    :sswitch_47
    const-string v3, "android.service.fingerprint.IFingerprintServiceReceiver"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/fingerprint/IFingerprintServiceReceiver$Stub;->onRemoved(I)V

    goto :goto_8

    .line 42
    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x3 -> :sswitch_2d
        0x4 -> :sswitch_3a
        0x5 -> :sswitch_47
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
