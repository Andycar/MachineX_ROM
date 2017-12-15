.class public abstract Landroid/location/IFusedGeofenceHardware$Stub;
.super Landroid/os/Binder;
.source "IFusedGeofenceHardware.java"

# interfaces
.implements Landroid/location/IFusedGeofenceHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IFusedGeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IFusedGeofenceHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.IFusedGeofenceHardware"

.field static final TRANSACTION_addGeofences:I = 0x2

.field static final TRANSACTION_isSupported:I = 0x1

.field static final TRANSACTION_modifyGeofenceOptions:I = 0x6

.field static final TRANSACTION_pauseMonitoringGeofence:I = 0x4

.field static final TRANSACTION_removeGeofences:I = 0x3

.field static final TRANSACTION_resumeMonitoringGeofence:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "android.location.IFusedGeofenceHardware"

    invoke-virtual {p0, p0, v0}, Landroid/location/IFusedGeofenceHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IFusedGeofenceHardware;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 33
    if-nez p0, :cond_4

    .line 34
    const/4 v0, 0x0

    .line 40
    :goto_3
    return-object v0

    .line 36
    :cond_4
    const-string v1, "android.location.IFusedGeofenceHardware"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/location/IFusedGeofenceHardware;

    if-eqz v1, :cond_13

    .line 38
    check-cast v0, Landroid/location/IFusedGeofenceHardware;

    goto :goto_3

    .line 40
    :cond_13
    new-instance v0, Landroid/location/IFusedGeofenceHardware$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/location/IFusedGeofenceHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
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
    const/4 v8, 0x1

    .line 48
    sparse-switch p1, :sswitch_data_92

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_8
    return v8

    .line 52
    :sswitch_9
    const-string v0, "android.location.IFusedGeofenceHardware"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 57
    :sswitch_f
    const-string v0, "android.location.IFusedGeofenceHardware"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroid/location/IFusedGeofenceHardware$Stub;->isSupported()Z

    move-result v7

    .line 59
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v7, :cond_22

    move v0, v8

    :goto_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_22
    const/4 v0, 0x0

    goto :goto_1e

    .line 65
    .end local v7    # "_result":Z
    :sswitch_24
    const-string v0, "android.location.IFusedGeofenceHardware"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    sget-object v0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    .line 68
    .local v1, "_arg0":[Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    invoke-virtual {p0, v1}, Landroid/location/IFusedGeofenceHardware$Stub;->addGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 74
    .end local v1    # "_arg0":[Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    :sswitch_38
    const-string v0, "android.location.IFusedGeofenceHardware"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 77
    .local v1, "_arg0":[I
    invoke-virtual {p0, v1}, Landroid/location/IFusedGeofenceHardware$Stub;->removeGeofences([I)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 83
    .end local v1    # "_arg0":[I
    :sswitch_48
    const-string v0, "android.location.IFusedGeofenceHardware"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/location/IFusedGeofenceHardware$Stub;->pauseMonitoringGeofence(I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 92
    .end local v1    # "_arg0":I
    :sswitch_58
    const-string v0, "android.location.IFusedGeofenceHardware"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 97
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/location/IFusedGeofenceHardware$Stub;->resumeMonitoringGeofence(II)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 103
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_6c
    const-string v0, "android.location.IFusedGeofenceHardware"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 111
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 113
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 115
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg5":I
    move-object v0, p0

    .line 116
    invoke-virtual/range {v0 .. v6}, Landroid/location/IFusedGeofenceHardware$Stub;->modifyGeofenceOptions(IIIIII)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 48
    :sswitch_data_92
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_24
        0x3 -> :sswitch_38
        0x4 -> :sswitch_48
        0x5 -> :sswitch_58
        0x6 -> :sswitch_6c
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
