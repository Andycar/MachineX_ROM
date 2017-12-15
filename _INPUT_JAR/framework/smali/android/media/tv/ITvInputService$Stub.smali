.class public abstract Landroid/media/tv/ITvInputService$Stub;
.super Landroid/os/Binder;
.source "ITvInputService.java"

# interfaces
.implements Landroid/media/tv/ITvInputService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputService"

.field static final TRANSACTION_createSession:I = 0x3

.field static final TRANSACTION_notifyHardwareAdded:I = 0x4

.field static final TRANSACTION_notifyHardwareRemoved:I = 0x5

.field static final TRANSACTION_notifyHdmiDeviceAdded:I = 0x6

.field static final TRANSACTION_notifyHdmiDeviceRemoved:I = 0x7

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.media.tv.ITvInputService"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputService;
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
    const-string v1, "android.media.tv.ITvInputService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/ITvInputService;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/media/tv/ITvInputService;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/media/tv/ITvInputService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/tv/ITvInputService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 42
    sparse-switch p1, :sswitch_data_bc

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 46
    :sswitch_9
    const-string v4, "android.media.tv.ITvInputService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 51
    :sswitch_f
    const-string v4, "android.media.tv.ITvInputService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/tv/ITvInputServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputServiceCallback;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputService$Stub;->registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V

    goto :goto_8

    .line 59
    .end local v0    # "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    :sswitch_20
    const-string v4, "android.media.tv.ITvInputService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/tv/ITvInputServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputServiceCallback;

    move-result-object v0

    .line 62
    .restart local v0    # "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputService$Stub;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V

    goto :goto_8

    .line 67
    .end local v0    # "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    :sswitch_31
    const-string v4, "android.media.tv.ITvInputService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_54

    .line 70
    sget-object v4, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputChannel;

    .line 76
    .local v0, "_arg0":Landroid/view/InputChannel;
    :goto_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/tv/ITvInputSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v1

    .line 78
    .local v1, "_arg1":Landroid/media/tv/ITvInputSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/tv/ITvInputService$Stub;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;)V

    goto :goto_8

    .line 73
    .end local v0    # "_arg0":Landroid/view/InputChannel;
    .end local v1    # "_arg1":Landroid/media/tv/ITvInputSessionCallback;
    .end local v2    # "_arg2":Ljava/lang/String;
    :cond_54
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/InputChannel;
    goto :goto_44

    .line 84
    .end local v0    # "_arg0":Landroid/view/InputChannel;
    :sswitch_56
    const-string v4, "android.media.tv.ITvInputService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6d

    .line 87
    sget-object v4, Landroid/media/tv/TvInputHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 92
    .local v0, "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    :goto_69
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputService$Stub;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V

    goto :goto_8

    .line 90
    .end local v0    # "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    :cond_6d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    goto :goto_69

    .line 97
    .end local v0    # "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    :sswitch_6f
    const-string v4, "android.media.tv.ITvInputService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_86

    .line 100
    sget-object v4, Landroid/media/tv/TvInputHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 105
    .restart local v0    # "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    :goto_82
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputService$Stub;->notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V

    goto :goto_8

    .line 103
    .end local v0    # "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    :cond_86
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    goto :goto_82

    .line 110
    .end local v0    # "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    :sswitch_88
    const-string v4, "android.media.tv.ITvInputService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a0

    .line 113
    sget-object v4, Landroid/hardware/hdmi/HdmiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 118
    .local v0, "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :goto_9b
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputService$Stub;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto/16 :goto_8

    .line 116
    .end local v0    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_a0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_9b

    .line 123
    .end local v0    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :sswitch_a2
    const-string v4, "android.media.tv.ITvInputService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ba

    .line 126
    sget-object v4, Landroid/hardware/hdmi/HdmiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 131
    .restart local v0    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :goto_b5
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputService$Stub;->notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto/16 :goto_8

    .line 129
    .end local v0    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_ba
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_b5

    .line 42
    :sswitch_data_bc
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x3 -> :sswitch_31
        0x4 -> :sswitch_56
        0x5 -> :sswitch_6f
        0x6 -> :sswitch_88
        0x7 -> :sswitch_a2
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
