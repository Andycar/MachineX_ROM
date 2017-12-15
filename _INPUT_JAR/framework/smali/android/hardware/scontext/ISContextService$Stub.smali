.class public abstract Landroid/hardware/scontext/ISContextService$Stub;
.super Landroid/os/Binder;
.source "ISContextService.java"

# interfaces
.implements Landroid/hardware/scontext/ISContextService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/ISContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/ISContextService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.scontext.ISContextService"

.field static final TRANSACTION_changeParameters:I = 0x4

.field static final TRANSACTION_getAvailableServiceMap:I = 0x5

.field static final TRANSACTION_initializeService:I = 0x3

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_requestToUpdate:I = 0x7

.field static final TRANSACTION_setReferenceData:I = 0x6

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.hardware.scontext.ISContextService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/scontext/ISContextService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextService;
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
    const-string v1, "android.hardware.scontext.ISContextService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/scontext/ISContextService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/hardware/scontext/ISContextService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/hardware/scontext/ISContextService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/scontext/ISContextService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 12
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_d2

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 45
    :sswitch_a
    const-string v4, "android.hardware.scontext.ISContextService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v4, "android.hardware.scontext.ISContextService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_32

    .line 57
    sget-object v4, Landroid/hardware/scontext/SContextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextAttribute;

    .line 62
    .local v2, "_arg2":Landroid/hardware/scontext/SContextAttribute;
    :goto_2b
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/scontext/ISContextService$Stub;->registerCallback(Landroid/os/IBinder;ILandroid/hardware/scontext/SContextAttribute;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 60
    .end local v2    # "_arg2":Landroid/hardware/scontext/SContextAttribute;
    :cond_32
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_2b

    .line 68
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_34
    const-string v6, "android.hardware.scontext.ISContextService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 72
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/scontext/ISContextService$Stub;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v3

    .line 74
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v3, :cond_4b

    move v4, v5

    :cond_4b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 80
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Z
    :sswitch_4f
    const-string v4, "android.hardware.scontext.ISContextService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 84
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 85
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/scontext/ISContextService$Stub;->initializeService(Landroid/os/IBinder;I)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 91
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :sswitch_63
    const-string v6, "android.hardware.scontext.ISContextService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 95
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8d

    .line 98
    sget-object v6, Landroid/hardware/scontext/SContextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextAttribute;

    .line 103
    .restart local v2    # "_arg2":Landroid/hardware/scontext/SContextAttribute;
    :goto_7e
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/scontext/ISContextService$Stub;->changeParameters(Landroid/os/IBinder;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v3

    .line 104
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v3, :cond_88

    move v4, v5

    :cond_88
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 101
    .end local v2    # "_arg2":Landroid/hardware/scontext/SContextAttribute;
    .end local v3    # "_result":Z
    :cond_8d
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_7e

    .line 110
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/scontext/SContextAttribute;
    :sswitch_8f
    const-string v4, "android.hardware.scontext.ISContextService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/hardware/scontext/ISContextService$Stub;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v3

    .line 112
    .local v3, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_9

    .line 118
    .end local v3    # "_result":Ljava/util/Map;
    :sswitch_a0
    const-string v6, "android.hardware.scontext.ISContextService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 123
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Landroid/hardware/scontext/ISContextService$Stub;->setReferenceData(I[B)Z

    move-result v3

    .line 124
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v3, :cond_b7

    move v4, v5

    :cond_b7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 130
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v3    # "_result":Z
    :sswitch_bc
    const-string v4, "android.hardware.scontext.ISContextService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 134
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 135
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/scontext/ISContextService$Stub;->requestToUpdate(Landroid/os/IBinder;I)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 41
    nop

    :sswitch_data_d2
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_34
        0x3 -> :sswitch_4f
        0x4 -> :sswitch_63
        0x5 -> :sswitch_8f
        0x6 -> :sswitch_a0
        0x7 -> :sswitch_bc
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
