.class public abstract Lcom/samsung/android/service/reactive/IReactiveService$Stub;
.super Landroid/os/Binder;
.source "IReactiveService.java"

# interfaces
.implements Lcom/samsung/android/service/reactive/IReactiveService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/reactive/IReactiveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/reactive/IReactiveService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.service.reactive.IReactiveService"

.field static final TRANSACTION_getErrorCode:I = 0x9

.field static final TRANSACTION_getFlag:I = 0x2

.field static final TRANSACTION_getServiceSupport:I = 0x1

.field static final TRANSACTION_getString:I = 0x4

.field static final TRANSACTION_removeString:I = 0x6

.field static final TRANSACTION_sessionAccept:I = 0x7

.field static final TRANSACTION_sessionComplete:I = 0x8

.field static final TRANSACTION_setFlag:I = 0x3

.field static final TRANSACTION_setString:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/reactive/IReactiveService;
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
    const-string v1, "com.samsung.android.service.reactive.IReactiveService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/service/reactive/IReactiveService;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Lcom/samsung/android/service/reactive/IReactiveService;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Lcom/samsung/android/service/reactive/IReactiveService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_be

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_8
    return v4

    .line 46
    :sswitch_9
    const-string v5, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 51
    :sswitch_f
    const-string v5, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->getServiceSupport()I

    move-result v3

    .line 53
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 59
    .end local v3    # "_result":I
    :sswitch_1f
    const-string v5, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->getFlag(I)I

    move-result v3

    .line 63
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 69
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_33
    const-string v5, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->setFlag(IILjava/lang/String;)I

    move-result v3

    .line 77
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 83
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_4f
    const-string v5, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->getString()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 91
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_5f
    const-string v5, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->setString(Ljava/lang/String;)I

    move-result v3

    .line 95
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 101
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_73
    const-string v5, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->removeString()I

    move-result v3

    .line 103
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 109
    .end local v3    # "_result":I
    :sswitch_83
    const-string v5, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 112
    .local v0, "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->sessionAccept([B)[B

    move-result-object v3

    .line 113
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_8

    .line 119
    .end local v0    # "_arg0":[B
    .end local v3    # "_result":[B
    :sswitch_98
    const-string v5, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 122
    .restart local v0    # "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->sessionComplete([B)I

    move-result v3

    .line 123
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 129
    .end local v0    # "_arg0":[B
    .end local v3    # "_result":I
    :sswitch_ad
    const-string v5, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->getErrorCode()I

    move-result v3

    .line 131
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 42
    :sswitch_data_be
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_33
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_5f
        0x6 -> :sswitch_73
        0x7 -> :sswitch_83
        0x8 -> :sswitch_98
        0x9 -> :sswitch_ad
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
