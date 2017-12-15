.class public abstract Lcom/samsung/location/ISLocationCellInterface$Stub;
.super Landroid/os/Binder;
.source "ISLocationCellInterface.java"

# interfaces
.implements Lcom/samsung/location/ISLocationCellInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/location/ISLocationCellInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/location/ISLocationCellInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.location.ISLocationCellInterface"

.field static final TRANSACTION_addCellGeofence:I = 0x2

.field static final TRANSACTION_enableCellGeofence:I = 0x3

.field static final TRANSACTION_initCellGeofence:I = 0x1

.field static final TRANSACTION_removeCellGeofence:I = 0x4

.field static final TRANSACTION_startCollectCell:I = 0x5

.field static final TRANSACTION_stopCollectCell:I = 0x6

.field static final TRANSACTION_syncCellGeofence:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.samsung.location.ISLocationCellInterface"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/location/ISLocationCellInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationCellInterface;
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
    const-string v1, "com.samsung.location.ISLocationCellInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/location/ISLocationCellInterface;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Lcom/samsung/location/ISLocationCellInterface;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Lcom/samsung/location/ISLocationCellInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/location/ISLocationCellInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 11
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

    .line 42
    sparse-switch p1, :sswitch_data_90

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_8
    return v4

    .line 46
    :sswitch_9
    const-string v5, "com.samsung.location.ISLocationCellInterface"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 51
    :sswitch_f
    const-string v5, "com.samsung.location.ISLocationCellInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/location/ISLocationCellInterface$Stub;->initCellGeofence(I)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 60
    .end local v0    # "_arg0":I
    :sswitch_1f
    const-string v5, "com.samsung.location.ISLocationCellInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/location/ISLocationCellInterface$Stub;->addCellGeofence(I)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 69
    .end local v0    # "_arg0":I
    :sswitch_2f
    const-string v5, "com.samsung.location.ISLocationCellInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/location/ISLocationCellInterface$Stub;->enableCellGeofence(II)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 80
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_43
    const-string v5, "com.samsung.location.ISLocationCellInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/location/ISLocationCellInterface$Stub;->removeCellGeofence(I)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 89
    .end local v0    # "_arg0":I
    :sswitch_53
    const-string v5, "com.samsung.location.ISLocationCellInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/location/ISLocationCellInterface$Stub;->startCollectCell(I)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 98
    .end local v0    # "_arg0":I
    :sswitch_63
    const-string v5, "com.samsung.location.ISLocationCellInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/location/ISLocationCellInterface$Stub;->stopCollectCell(I)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 107
    .end local v0    # "_arg0":I
    :sswitch_73
    const-string v5, "com.samsung.location.ISLocationCellInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 111
    .local v0, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 113
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 115
    .local v2, "_arg2":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 116
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/location/ISLocationCellInterface$Stub;->syncCellGeofence([II[II)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 42
    :sswitch_data_90
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_43
        0x5 -> :sswitch_53
        0x6 -> :sswitch_63
        0x7 -> :sswitch_73
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
