.class public abstract Landroid/wipower/IWipower$Stub;
.super Landroid/os/Binder;
.source "IWipower.java"

# interfaces
.implements Landroid/wipower/IWipower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/wipower/IWipower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/wipower/IWipower$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.wipower.IWipower"

.field static final TRANSACTION_enableAlert:I = 0x6

.field static final TRANSACTION_enableData:I = 0x7

.field static final TRANSACTION_enablePowerApply:I = 0x8

.field static final TRANSACTION_getCurrentLimit:I = 0x5

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_registerCallback:I = 0x9

.field static final TRANSACTION_setCurrentLimit:I = 0x4

.field static final TRANSACTION_startCharging:I = 0x2

.field static final TRANSACTION_stopCharging:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.wipower.IWipower"

    invoke-virtual {p0, p0, v0}, Landroid/wipower/IWipower$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/wipower/IWipower;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "android.wipower.IWipower"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/wipower/IWipower;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/wipower/IWipower;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/wipower/IWipower$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/wipower/IWipower$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
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

    .line 43
    sparse-switch p1, :sswitch_data_100

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 47
    :sswitch_a
    const-string v4, "android.wipower.IWipower"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v4, "android.wipower.IWipower"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/wipower/IWipower$Stub;->getState()I

    move-result v3

    .line 54
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 60
    .end local v3    # "_result":I
    :sswitch_20
    const-string v6, "android.wipower.IWipower"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/wipower/IWipower$Stub;->startCharging()Z

    move-result v3

    .line 62
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v3, :cond_2f

    move v4, v5

    :cond_2f
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 68
    .end local v3    # "_result":Z
    :sswitch_33
    const-string v6, "android.wipower.IWipower"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/wipower/IWipower$Stub;->stopCharging()Z

    move-result v3

    .line 70
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v3, :cond_42

    move v4, v5

    :cond_42
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 76
    .end local v3    # "_result":Z
    :sswitch_46
    const-string v6, "android.wipower.IWipower"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 79
    .local v0, "_arg0":B
    invoke-virtual {p0, v0}, Landroid/wipower/IWipower$Stub;->setCurrentLimit(B)Z

    move-result v3

    .line 80
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v3, :cond_59

    move v4, v5

    :cond_59
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 86
    .end local v0    # "_arg0":B
    .end local v3    # "_result":Z
    :sswitch_5d
    const-string v4, "android.wipower.IWipower"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/wipower/IWipower$Stub;->getCurrentLimit()B

    move-result v3

    .line 88
    .local v3, "_result":B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_9

    .line 94
    .end local v3    # "_result":B
    :sswitch_6d
    const-string v6, "android.wipower.IWipower"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_87

    move v0, v5

    .line 97
    .local v0, "_arg0":Z
    :goto_79
    invoke-virtual {p0, v0}, Landroid/wipower/IWipower$Stub;->enableAlert(Z)Z

    move-result v3

    .line 98
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v3, :cond_83

    move v4, v5

    :cond_83
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_87
    move v0, v4

    .line 96
    goto :goto_79

    .line 104
    :sswitch_89
    const-string v6, "android.wipower.IWipower"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a4

    move v0, v5

    .line 107
    .restart local v0    # "_arg0":Z
    :goto_95
    invoke-virtual {p0, v0}, Landroid/wipower/IWipower$Stub;->enableData(Z)Z

    move-result v3

    .line 108
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v3, :cond_9f

    move v4, v5

    :cond_9f
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_a4
    move v0, v4

    .line 106
    goto :goto_95

    .line 114
    :sswitch_a6
    const-string v6, "android.wipower.IWipower"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_cf

    move v0, v5

    .line 118
    .restart local v0    # "_arg0":Z
    :goto_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d1

    move v1, v5

    .line 120
    .local v1, "_arg1":Z
    :goto_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d3

    move v2, v5

    .line 121
    .local v2, "_arg2":Z
    :goto_c0
    invoke-virtual {p0, v0, v1, v2}, Landroid/wipower/IWipower$Stub;->enablePowerApply(ZZZ)Z

    move-result v3

    .line 122
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v3, :cond_ca

    move v4, v5

    :cond_ca
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :cond_cf
    move v0, v4

    .line 116
    goto :goto_b2

    .restart local v0    # "_arg0":Z
    :cond_d1
    move v1, v4

    .line 118
    goto :goto_b9

    .restart local v1    # "_arg1":Z
    :cond_d3
    move v2, v4

    .line 120
    goto :goto_c0

    .line 128
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :sswitch_d5
    const-string v4, "android.wipower.IWipower"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/wipower/IWipowerManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/wipower/IWipowerManagerCallback;

    move-result-object v0

    .line 131
    .local v0, "_arg0":Landroid/wipower/IWipowerManagerCallback;
    invoke-virtual {p0, v0}, Landroid/wipower/IWipower$Stub;->registerCallback(Landroid/wipower/IWipowerManagerCallback;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 137
    .end local v0    # "_arg0":Landroid/wipower/IWipowerManagerCallback;
    :sswitch_ea
    const-string v4, "android.wipower.IWipower"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/wipower/IWipowerManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/wipower/IWipowerManagerCallback;

    move-result-object v0

    .line 140
    .restart local v0    # "_arg0":Landroid/wipower/IWipowerManagerCallback;
    invoke-virtual {p0, v0}, Landroid/wipower/IWipower$Stub;->unregisterCallback(Landroid/wipower/IWipowerManagerCallback;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 43
    nop

    :sswitch_data_100
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_33
        0x4 -> :sswitch_46
        0x5 -> :sswitch_5d
        0x6 -> :sswitch_6d
        0x7 -> :sswitch_89
        0x8 -> :sswitch_a6
        0x9 -> :sswitch_d5
        0xa -> :sswitch_ea
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
