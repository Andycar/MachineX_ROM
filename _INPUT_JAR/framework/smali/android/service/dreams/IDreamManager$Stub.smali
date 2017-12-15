.class public abstract Landroid/service/dreams/IDreamManager$Stub;
.super Landroid/os/Binder;
.source "IDreamManager.java"

# interfaces
.implements Landroid/service/dreams/IDreamManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/IDreamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/IDreamManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.dreams.IDreamManager"

.field static final TRANSACTION_awaken:I = 0x2

.field static final TRANSACTION_dream:I = 0x1

.field static final TRANSACTION_finishSelf:I = 0x8

.field static final TRANSACTION_getDefaultDreamComponent:I = 0x5

.field static final TRANSACTION_getDreamComponents:I = 0x4

.field static final TRANSACTION_isDreaming:I = 0x7

.field static final TRANSACTION_setDreamComponents:I = 0x3

.field static final TRANSACTION_startDozing:I = 0x9

.field static final TRANSACTION_stopDozing:I = 0xa

.field static final TRANSACTION_testDream:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.service.dreams.IDreamManager"

    invoke-virtual {p0, p0, v0}, Landroid/service/dreams/IDreamManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;
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
    const-string v1, "android.service.dreams.IDreamManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/service/dreams/IDreamManager;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/service/dreams/IDreamManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/dreams/IDreamManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 39
    sparse-switch p1, :sswitch_data_da

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 43
    :sswitch_a
    const-string v4, "android.service.dreams.IDreamManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v4, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->dream()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 55
    :sswitch_1c
    const-string v4, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->awaken()V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 62
    :sswitch_28
    const-string v4, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ComponentName;

    .line 65
    .local v0, "_arg0":[Landroid/content/ComponentName;
    invoke-virtual {p0, v0}, Landroid/service/dreams/IDreamManager$Stub;->setDreamComponents([Landroid/content/ComponentName;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 71
    .end local v0    # "_arg0":[Landroid/content/ComponentName;
    :sswitch_3c
    const-string v4, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->getDreamComponents()[Landroid/content/ComponentName;

    move-result-object v3

    .line 73
    .local v3, "_result":[Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v3, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_9

    .line 79
    .end local v3    # "_result":[Landroid/content/ComponentName;
    :sswitch_4c
    const-string v6, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->getDefaultDreamComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 81
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v3, :cond_61

    .line 83
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {v3, p3, v5}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 87
    :cond_61
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 93
    .end local v3    # "_result":Landroid/content/ComponentName;
    :sswitch_65
    const-string v4, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7f

    .line 96
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 101
    .local v0, "_arg0":Landroid/content/ComponentName;
    :goto_78
    invoke-virtual {p0, v0}, Landroid/service/dreams/IDreamManager$Stub;->testDream(Landroid/content/ComponentName;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 99
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_7f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_78

    .line 107
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_81
    const-string v6, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->isDreaming()Z

    move-result v3

    .line 109
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v3, :cond_90

    move v4, v5

    :cond_90
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 115
    .end local v3    # "_result":Z
    :sswitch_95
    const-string v6, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 119
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ad

    move v1, v5

    .line 120
    .local v1, "_arg1":Z
    :goto_a5
    invoke-virtual {p0, v0, v1}, Landroid/service/dreams/IDreamManager$Stub;->finishSelf(Landroid/os/IBinder;Z)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    :cond_ad
    move v1, v4

    .line 119
    goto :goto_a5

    .line 126
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_af
    const-string v4, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 130
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/service/dreams/IDreamManager$Stub;->startDozing(Landroid/os/IBinder;II)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 139
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_c8
    const-string v4, "android.service.dreams.IDreamManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 142
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/service/dreams/IDreamManager$Stub;->stopDozing(Landroid/os/IBinder;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 39
    nop

    :sswitch_data_da
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_28
        0x4 -> :sswitch_3c
        0x5 -> :sswitch_4c
        0x6 -> :sswitch_65
        0x7 -> :sswitch_81
        0x8 -> :sswitch_95
        0x9 -> :sswitch_af
        0xa -> :sswitch_c8
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
