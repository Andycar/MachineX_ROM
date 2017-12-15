.class public abstract Landroid/hardware/hdmi/IHdmiRecordListener$Stub;
.super Landroid/os/Binder;
.source "IHdmiRecordListener.java"

# interfaces
.implements Landroid/hardware/hdmi/IHdmiRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/IHdmiRecordListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiRecordListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.hdmi.IHdmiRecordListener"

.field static final TRANSACTION_getOneTouchRecordSource:I = 0x1

.field static final TRANSACTION_onClearTimerRecordingResult:I = 0x4

.field static final TRANSACTION_onOneTouchRecordResult:I = 0x2

.field static final TRANSACTION_onTimerRecordingResult:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.hardware.hdmi.IHdmiRecordListener"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiRecordListener;
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
    const-string v1, "android.hardware.hdmi.IHdmiRecordListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/hdmi/IHdmiRecordListener;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/hardware/hdmi/IHdmiRecordListener;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/hardware/hdmi/IHdmiRecordListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_54

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 45
    :sswitch_9
    const-string v3, "android.hardware.hdmi.IHdmiRecordListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v3, "android.hardware.hdmi.IHdmiRecordListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->getOneTouchRecordSource(I)[B

    move-result-object v1

    .line 54
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_8

    .line 60
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[B
    :sswitch_23
    const-string v3, "android.hardware.hdmi.IHdmiRecordListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->onOneTouchRecordResult(I)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 69
    .end local v0    # "_arg0":I
    :sswitch_33
    const-string v3, "android.hardware.hdmi.IHdmiRecordListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->onTimerRecordingResult(I)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 78
    .end local v0    # "_arg0":I
    :sswitch_43
    const-string v3, "android.hardware.hdmi.IHdmiRecordListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;->onClearTimerRecordingResult(I)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 41
    nop

    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_23
        0x3 -> :sswitch_33
        0x4 -> :sswitch_43
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
