.class public abstract Landroid/os/IOemExtendedApi3LM$Stub;
.super Landroid/os/Binder;
.source "IOemExtendedApi3LM.java"

# interfaces
.implements Landroid/os/IOemExtendedApi3LM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IOemExtendedApi3LM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IOemExtendedApi3LM$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IOemExtendedApi3LM"

.field static final TRANSACTION_clear:I = 0x2

.field static final TRANSACTION_getEmergencyLockState:I = 0xa

.field static final TRANSACTION_getFelicaState:I = 0x4

.field static final TRANSACTION_getInfraredState:I = 0x8

.field static final TRANSACTION_getOneSegState:I = 0x6

.field static final TRANSACTION_getVersion:I = 0x1

.field static final TRANSACTION_setEmergencyLock:I = 0xc

.field static final TRANSACTION_setEmergencyLockState:I = 0xb

.field static final TRANSACTION_setFelicaState:I = 0x5

.field static final TRANSACTION_setInfraredState:I = 0x9

.field static final TRANSACTION_setOneSegState:I = 0x7

.field static final TRANSACTION_setisSimulatorPermitted:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p0, p0, v0}, Landroid/os/IOemExtendedApi3LM$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IOemExtendedApi3LM;
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
    const-string v1, "android.os.IOemExtendedApi3LM"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IOemExtendedApi3LM;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/os/IOemExtendedApi3LM;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/os/IOemExtendedApi3LM$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IOemExtendedApi3LM$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_f0

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 42
    :sswitch_a
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/os/IOemExtendedApi3LM$Stub;->getVersion()I

    move-result v3

    .line 49
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 55
    .end local v3    # "_result":I
    :sswitch_20
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/os/IOemExtendedApi3LM$Stub;->clear()V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 62
    :sswitch_2c
    const-string v6, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3f

    move v0, v4

    .line 65
    .local v0, "_arg0":Z
    :goto_38
    invoke-virtual {p0, v0}, Landroid/os/IOemExtendedApi3LM$Stub;->setisSimulatorPermitted(Z)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0    # "_arg0":Z
    :cond_3f
    move v0, v5

    .line 64
    goto :goto_38

    .line 71
    :sswitch_41
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/os/IOemExtendedApi3LM$Stub;->getFelicaState()I

    move-result v3

    .line 73
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 79
    .end local v3    # "_result":I
    :sswitch_51
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IOemExtendedApi3LM$Stub;->setFelicaState(I)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 88
    .end local v0    # "_arg0":I
    :sswitch_61
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/os/IOemExtendedApi3LM$Stub;->getOneSegState()I

    move-result v3

    .line 90
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 96
    .end local v3    # "_result":I
    :sswitch_71
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IOemExtendedApi3LM$Stub;->setOneSegState(I)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 105
    .end local v0    # "_arg0":I
    :sswitch_81
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/os/IOemExtendedApi3LM$Stub;->getInfraredState()I

    move-result v3

    .line 107
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 113
    .end local v3    # "_result":I
    :sswitch_92
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IOemExtendedApi3LM$Stub;->setInfraredState(I)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 122
    .end local v0    # "_arg0":I
    :sswitch_a3
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/os/IOemExtendedApi3LM$Stub;->getEmergencyLockState()I

    move-result v3

    .line 124
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 130
    .end local v3    # "_result":I
    :sswitch_b4
    const-string v5, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IOemExtendedApi3LM$Stub;->setEmergencyLockState(I)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 139
    .end local v0    # "_arg0":I
    :sswitch_c5
    const-string v6, "android.os.IOemExtendedApi3LM"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_eb

    move v0, v4

    .line 143
    .local v0, "_arg0":Z
    :goto_d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ed

    move v2, v4

    .line 146
    .local v2, "_arg2":Z
    :goto_dc
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IOemExtendedApi3LM$Stub;->setEmergencyLock(ZLjava/lang/String;Z)Z

    move-result v3

    .line 147
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v3, :cond_e6

    move v5, v4

    :cond_e6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :cond_eb
    move v0, v5

    .line 141
    goto :goto_d1

    .restart local v0    # "_arg0":Z
    .restart local v1    # "_arg1":Ljava/lang/String;
    :cond_ed
    move v2, v5

    .line 145
    goto :goto_dc

    .line 38
    nop

    :sswitch_data_f0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_41
        0x5 -> :sswitch_51
        0x6 -> :sswitch_61
        0x7 -> :sswitch_71
        0x8 -> :sswitch_81
        0x9 -> :sswitch_92
        0xa -> :sswitch_a3
        0xb -> :sswitch_b4
        0xc -> :sswitch_c5
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
