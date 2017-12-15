.class public abstract Landroid/os/ITactileAssistService$Stub;
.super Landroid/os/Binder;
.source "ITactileAssistService.java"

# interfaces
.implements Landroid/os/ITactileAssistService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ITactileAssistService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ITactileAssistService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ITactileAssistService"

.field static final TRANSACTION_getActuators:I = 0x1

.field static final TRANSACTION_setDensity:I = 0x6

.field static final TRANSACTION_setEnable:I = 0x2

.field static final TRANSACTION_setInternalEnable:I = 0x3

.field static final TRANSACTION_setLevel:I = 0x4

.field static final TRANSACTION_setSharpness:I = 0x7

.field static final TRANSACTION_setStrength:I = 0x5

.field static final TRANSACTION_storeAppList:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.ITactileAssistService"

    invoke-virtual {p0, p0, v0}, Landroid/os/ITactileAssistService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ITactileAssistService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "android.os.ITactileAssistService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/ITactileAssistService;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/os/ITactileAssistService;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/os/ITactileAssistService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/ITactileAssistService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
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

    .line 39
    sparse-switch p1, :sswitch_data_d6

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 43
    :sswitch_a
    const-string v4, "android.os.ITactileAssistService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v4, "android.os.ITactileAssistService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/ITactileAssistService$Stub;->getActuators()[I

    move-result-object v2

    .line 50
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_9

    .line 56
    .end local v2    # "_result":[I
    :sswitch_20
    const-string v5, "android.os.ITactileAssistService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3a

    move v0, v3

    .line 59
    .local v0, "_arg0":Z
    :goto_2c
    invoke-virtual {p0, v0}, Landroid/os/ITactileAssistService$Stub;->setEnable(Z)Z

    move-result v2

    .line 60
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v2, :cond_36

    move v4, v3

    :cond_36
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v2    # "_result":Z
    :cond_3a
    move v0, v4

    .line 58
    goto :goto_2c

    .line 66
    :sswitch_3c
    const-string v5, "android.os.ITactileAssistService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_56

    move v0, v3

    .line 69
    .restart local v0    # "_arg0":Z
    :goto_48
    invoke-virtual {p0, v0}, Landroid/os/ITactileAssistService$Stub;->setInternalEnable(Z)Z

    move-result v2

    .line 70
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v2, :cond_52

    move v4, v3

    :cond_52
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v2    # "_result":Z
    :cond_56
    move v0, v4

    .line 68
    goto :goto_48

    .line 76
    :sswitch_58
    const-string v5, "android.os.ITactileAssistService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ITactileAssistService$Stub;->setLevel(I)Z

    move-result v2

    .line 80
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v2, :cond_6b

    move v4, v3

    :cond_6b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 86
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_6f
    const-string v5, "android.os.ITactileAssistService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 90
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/os/ITactileAssistService$Stub;->setStrength(II)Z

    move-result v2

    .line 92
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v2, :cond_86

    move v4, v3

    :cond_86
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 98
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :sswitch_8a
    const-string v5, "android.os.ITactileAssistService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/os/ITactileAssistService$Stub;->setDensity(II)Z

    move-result v2

    .line 104
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v2, :cond_a1

    move v4, v3

    :cond_a1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 110
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :sswitch_a6
    const-string v5, "android.os.ITactileAssistService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/os/ITactileAssistService$Stub;->setSharpness(II)Z

    move-result v2

    .line 116
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v2, :cond_bd

    move v4, v3

    :cond_bd
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 122
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :sswitch_c2
    const-string v5, "android.os.ITactileAssistService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/os/ITactileAssistService$Stub;->storeAppList()Z

    move-result v2

    .line 124
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v2, :cond_d1

    move v4, v3

    :cond_d1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 39
    :sswitch_data_d6
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_58
        0x5 -> :sswitch_6f
        0x6 -> :sswitch_8a
        0x7 -> :sswitch_a6
        0x8 -> :sswitch_c2
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
