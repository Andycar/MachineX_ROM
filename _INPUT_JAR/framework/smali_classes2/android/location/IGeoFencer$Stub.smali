.class public abstract Landroid/location/IGeoFencer$Stub;
.super Landroid/os/Binder;
.source "IGeoFencer.java"

# interfaces
.implements Landroid/location/IGeoFencer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGeoFencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGeoFencer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.IGeoFencer"

.field static final TRANSACTION_clearGeoFence:I = 0x2

.field static final TRANSACTION_clearGeoFenceUser:I = 0x3

.field static final TRANSACTION_setGeoFence:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.location.IGeoFencer"

    invoke-virtual {p0, p0, v0}, Landroid/location/IGeoFencer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IGeoFencer;
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
    const-string v1, "android.location.IGeoFencer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/location/IGeoFencer;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/location/IGeoFencer;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/location/IGeoFencer$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/location/IGeoFencer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_68

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_8
    return v4

    .line 45
    :sswitch_9
    const-string v3, "android.location.IGeoFencer"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v3, "android.location.IGeoFencer"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_34

    .line 55
    sget-object v3, Landroid/location/GeoFenceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GeoFenceParams;

    .line 60
    .local v1, "_arg1":Landroid/location/GeoFenceParams;
    :goto_26
    invoke-virtual {p0, v0, v1}, Landroid/location/IGeoFencer$Stub;->setGeoFence(Landroid/os/IBinder;Landroid/location/GeoFenceParams;)Z

    move-result v2

    .line 61
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v2, :cond_36

    move v3, v4

    :goto_30
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 58
    .end local v1    # "_arg1":Landroid/location/GeoFenceParams;
    .end local v2    # "_result":Z
    :cond_34
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/location/GeoFenceParams;
    goto :goto_26

    .line 62
    .restart local v2    # "_result":Z
    :cond_36
    const/4 v3, 0x0

    goto :goto_30

    .line 67
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/location/GeoFenceParams;
    .end local v2    # "_result":Z
    :sswitch_38
    const-string v3, "android.location.IGeoFencer"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 71
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_56

    .line 72
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 77
    .local v1, "_arg1":Landroid/app/PendingIntent;
    :goto_4f
    invoke-virtual {p0, v0, v1}, Landroid/location/IGeoFencer$Stub;->clearGeoFence(Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 75
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    :cond_56
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_4f

    .line 83
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_58
    const-string v3, "android.location.IGeoFencer"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/location/IGeoFencer$Stub;->clearGeoFenceUser(I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 41
    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_38
        0x3 -> :sswitch_58
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
