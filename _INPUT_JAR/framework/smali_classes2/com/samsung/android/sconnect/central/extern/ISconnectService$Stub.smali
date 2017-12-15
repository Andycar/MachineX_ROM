.class public abstract Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub;
.super Landroid/os/Binder;
.source "ISconnectService.java"

# interfaces
.implements Lcom/samsung/android/sconnect/central/extern/ISconnectService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sconnect/central/extern/ISconnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.sconnect.central.extern.ISconnectService"

.field static final TRANSACTION_notifyShareVia:I = 0x6

.field static final TRANSACTION_refreshDiscovery:I = 0x1

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_sendFile:I = 0x5

.field static final TRANSACTION_stopDiscovery:I = 0x2

.field static final TRANSACTION_unregisterCallback:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.android.sconnect.central.extern.ISconnectService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sconnect/central/extern/ISconnectService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.samsung.android.sconnect.central.extern.ISconnectService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/sconnect/central/extern/ISconnectService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/samsung/android/sconnect/central/extern/ISconnectService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_8a

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 42
    :sswitch_a
    const-string v4, "com.samsung.android.sconnect.central.extern.ISconnectService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v4, "com.samsung.android.sconnect.central.extern.ISconnectService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub;->refreshDiscovery()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 54
    :sswitch_1c
    const-string v4, "com.samsung.android.sconnect.central.extern.ISconnectService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub;->stopDiscovery()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 61
    :sswitch_28
    const-string v4, "com.samsung.android.sconnect.central.extern.ISconnectService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sconnect/central/extern/ISconnectCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;

    move-result-object v0

    .line 64
    .local v0, "_arg0":Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;
    invoke-virtual {p0, v0}, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub;->registerCallback(Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 70
    .end local v0    # "_arg0":Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;
    :sswitch_3c
    const-string v4, "com.samsung.android.sconnect.central.extern.ISconnectService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sconnect/central/extern/ISconnectCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;

    move-result-object v0

    .line 73
    .restart local v0    # "_arg0":Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;
    invoke-virtual {p0, v0}, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub;->unregisterCallback(Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 79
    .end local v0    # "_arg0":Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;
    :sswitch_50
    const-string v4, "com.samsung.android.sconnect.central.extern.ISconnectService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub;->sendFile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_9

    .line 93
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[Ljava/lang/String;
    :sswitch_6b
    const-string v5, "com.samsung.android.sconnect.central.extern.ISconnectService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_85

    move v0, v3

    .line 97
    .local v0, "_arg0":Z
    :goto_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_87

    move v1, v3

    .line 98
    .local v1, "_arg1":Z
    :goto_7e
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sconnect/central/extern/ISconnectService$Stub;->notifyShareVia(ZZ)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :cond_85
    move v0, v4

    .line 95
    goto :goto_77

    .restart local v0    # "_arg0":Z
    :cond_87
    move v1, v4

    .line 97
    goto :goto_7e

    .line 38
    nop

    :sswitch_data_8a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_28
        0x4 -> :sswitch_3c
        0x5 -> :sswitch_50
        0x6 -> :sswitch_6b
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
