.class public abstract Lcom/samsung/android/smartface/ISmartFaceService$Stub;
.super Landroid/os/Binder;
.source "ISmartFaceService.java"

# interfaces
.implements Lcom/samsung/android/smartface/ISmartFaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartface/ISmartFaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/smartface/ISmartFaceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.smartface.ISmartFaceService"

.field static final TRANSACTION_getSupportedServices:I = 0x6

.field static final TRANSACTION_register:I = 0x1

.field static final TRANSACTION_registerAsync:I = 0x3

.field static final TRANSACTION_setValue:I = 0x5

.field static final TRANSACTION_unregister:I = 0x2

.field static final TRANSACTION_unregisterAsync:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.android.smartface.ISmartFaceService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceService;
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
    const-string v1, "com.samsung.android.smartface.ISmartFaceService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/smartface/ISmartFaceService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/samsung/android/smartface/ISmartFaceService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/samsung/android/smartface/ISmartFaceService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/smartface/ISmartFaceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_98

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_8
    return v5

    .line 42
    :sswitch_9
    const-string v4, "com.samsung.android.smartface.ISmartFaceService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v4, "com.samsung.android.smartface.ISmartFaceService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/smartface/ISmartFaceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceClient;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->register(Lcom/samsung/android/smartface/ISmartFaceClient;I)Z

    move-result v3

    .line 53
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v3, :cond_2e

    move v4, v5

    :goto_2a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_2e
    const/4 v4, 0x0

    goto :goto_2a

    .line 59
    .end local v0    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Z
    :sswitch_30
    const-string v4, "com.samsung.android.smartface.ISmartFaceService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/smartface/ISmartFaceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceClient;

    move-result-object v0

    .line 62
    .restart local v0    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->unregister(Lcom/samsung/android/smartface/ISmartFaceClient;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 68
    .end local v0    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    :sswitch_44
    const-string v4, "com.samsung.android.smartface.ISmartFaceService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/smartface/ISmartFaceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceClient;

    move-result-object v0

    .line 72
    .restart local v0    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->registerAsync(Lcom/samsung/android/smartface/ISmartFaceClient;I)V

    goto :goto_8

    .line 78
    .end local v0    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    .end local v1    # "_arg1":I
    :sswitch_59
    const-string v4, "com.samsung.android.smartface.ISmartFaceService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/smartface/ISmartFaceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceClient;

    move-result-object v0

    .line 81
    .restart local v0    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->unregisterAsync(Lcom/samsung/android/smartface/ISmartFaceClient;)V

    goto :goto_8

    .line 86
    .end local v0    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    :sswitch_6a
    const-string v4, "com.samsung.android.smartface.ISmartFaceService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/smartface/ISmartFaceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceClient;

    move-result-object v0

    .line 90
    .restart local v0    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->setValue(Lcom/samsung/android/smartface/ISmartFaceClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 99
    .end local v0    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_86
    const-string v4, "com.samsung.android.smartface.ISmartFaceService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->getSupportedServices()I

    move-result v3

    .line 101
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 38
    nop

    :sswitch_data_98
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_30
        0x3 -> :sswitch_44
        0x4 -> :sswitch_59
        0x5 -> :sswitch_6a
        0x6 -> :sswitch_86
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
