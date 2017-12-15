.class public abstract Lcom/samsung/android/hermes/IKerykeion$Stub;
.super Landroid/os/Binder;
.source "IKerykeion.java"

# interfaces
.implements Lcom/samsung/android/hermes/IKerykeion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hermes/IKerykeion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hermes/IKerykeion$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.hermes.IKerykeion"

.field static final TRANSACTION_dismiss:I = 0x6

.field static final TRANSACTION_restart:I = 0x3

.field static final TRANSACTION_setIKerykeionCallBack:I = 0x4

.field static final TRANSACTION_show:I = 0x5

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_stop:I = 0x2

.field static final TRANSACTION_training:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.android.hermes.IKerykeion"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/hermes/IKerykeion$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hermes/IKerykeion;
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
    const-string v1, "com.samsung.android.hermes.IKerykeion"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/hermes/IKerykeion;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/samsung/android/hermes/IKerykeion;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/samsung/android/hermes/IKerykeion$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/hermes/IKerykeion$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 38
    sparse-switch p1, :sswitch_data_ae

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 42
    :sswitch_9
    const-string v4, "com.samsung.android.hermes.IKerykeion"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v4, "com.samsung.android.hermes.IKerykeion"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3b

    .line 52
    sget-object v4, Lcom/samsung/android/hermes/KerykeionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hermes/KerykeionRequest;

    .line 58
    .local v1, "_arg1":Lcom/samsung/android/hermes/KerykeionRequest;
    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d

    .line 59
    sget-object v4, Lcom/samsung/android/hermes/KerykeionPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hermes/KerykeionPosition;

    .line 64
    .local v2, "_arg2":Lcom/samsung/android/hermes/KerykeionPosition;
    :goto_34
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/hermes/IKerykeion$Stub;->start(Ljava/lang/String;Lcom/samsung/android/hermes/KerykeionRequest;Lcom/samsung/android/hermes/KerykeionPosition;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 55
    .end local v1    # "_arg1":Lcom/samsung/android/hermes/KerykeionRequest;
    .end local v2    # "_arg2":Lcom/samsung/android/hermes/KerykeionPosition;
    :cond_3b
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/hermes/KerykeionRequest;
    goto :goto_26

    .line 62
    :cond_3d
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/samsung/android/hermes/KerykeionPosition;
    goto :goto_34

    .line 70
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/samsung/android/hermes/KerykeionRequest;
    .end local v2    # "_arg2":Lcom/samsung/android/hermes/KerykeionPosition;
    :sswitch_3f
    const-string v4, "com.samsung.android.hermes.IKerykeion"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/hermes/IKerykeion$Stub;->stop(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 79
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4f
    const-string v4, "com.samsung.android.hermes.IKerykeion"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/hermes/IKerykeion$Stub;->restart()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 86
    :sswitch_5b
    const-string v4, "com.samsung.android.hermes.IKerykeion"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 91
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hermes/IKerykeion$Stub;->setIKerykeionCallBack(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 97
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :sswitch_6f
    const-string v4, "com.samsung.android.hermes.IKerykeion"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8e

    .line 102
    sget-object v4, Lcom/samsung/android/hermes/KerykeionPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hermes/KerykeionPosition;

    .line 107
    .local v1, "_arg1":Lcom/samsung/android/hermes/KerykeionPosition;
    :goto_86
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hermes/IKerykeion$Stub;->show(Ljava/lang/String;Lcom/samsung/android/hermes/KerykeionPosition;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 105
    .end local v1    # "_arg1":Lcom/samsung/android/hermes/KerykeionPosition;
    :cond_8e
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/hermes/KerykeionPosition;
    goto :goto_86

    .line 113
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/samsung/android/hermes/KerykeionPosition;
    :sswitch_90
    const-string v4, "com.samsung.android.hermes.IKerykeion"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/hermes/IKerykeion$Stub;->dismiss()V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 120
    :sswitch_9d
    const-string v4, "com.samsung.android.hermes.IKerykeion"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/hermes/IKerykeion$Stub;->training(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 38
    :sswitch_data_ae
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_3f
        0x3 -> :sswitch_4f
        0x4 -> :sswitch_5b
        0x5 -> :sswitch_6f
        0x6 -> :sswitch_90
        0x7 -> :sswitch_9d
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
