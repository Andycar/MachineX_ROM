.class public abstract Lcom/android/internal/location/ILocationProvider$Stub;
.super Landroid/os/Binder;
.source "ILocationProvider.java"

# interfaces
.implements Lcom/android/internal/location/ILocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/ILocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/ILocationProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.location.ILocationProvider"

.field static final TRANSACTION_disable:I = 0x2

.field static final TRANSACTION_enable:I = 0x1

.field static final TRANSACTION_getProperties:I = 0x4

.field static final TRANSACTION_getStatus:I = 0x5

.field static final TRANSACTION_getStatusUpdateTime:I = 0x6

.field static final TRANSACTION_sendExtraCommand:I = 0x7

.field static final TRANSACTION_setRequest:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.android.internal.location.ILocationProvider"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/location/ILocationProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_3
    return-object v0

    .line 32
    :cond_4
    const-string v1, "com.android.internal.location.ILocationProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/location/ILocationProvider;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Lcom/android/internal/location/ILocationProvider;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Lcom/android/internal/location/ILocationProvider$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/location/ILocationProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_d8

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 48
    :sswitch_a
    const-string v4, "com.android.internal.location.ILocationProvider"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 53
    :sswitch_10
    const-string v4, "com.android.internal.location.ILocationProvider"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/location/ILocationProvider$Stub;->enable()V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 60
    :sswitch_1c
    const-string v4, "com.android.internal.location.ILocationProvider"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/location/ILocationProvider$Stub;->disable()V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 67
    :sswitch_28
    const-string v4, "com.android.internal.location.ILocationProvider"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_50

    .line 70
    sget-object v4, Lcom/android/internal/location/ProviderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/location/ProviderRequest;

    .line 76
    .local v0, "_arg0":Lcom/android/internal/location/ProviderRequest;
    :goto_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_52

    .line 77
    sget-object v4, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 82
    .local v1, "_arg1":Landroid/os/WorkSource;
    :goto_49
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/location/ILocationProvider$Stub;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 73
    .end local v0    # "_arg0":Lcom/android/internal/location/ProviderRequest;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :cond_50
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/internal/location/ProviderRequest;
    goto :goto_3b

    .line 80
    :cond_52
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/WorkSource;
    goto :goto_49

    .line 88
    .end local v0    # "_arg0":Lcom/android/internal/location/ProviderRequest;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :sswitch_54
    const-string v4, "com.android.internal.location.ILocationProvider"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/location/ILocationProvider$Stub;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v2

    .line 90
    .local v2, "_result":Lcom/android/internal/location/ProviderProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v2, :cond_69

    .line 92
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {v2, p3, v5}, Lcom/android/internal/location/ProviderProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 96
    :cond_69
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 102
    .end local v2    # "_result":Lcom/android/internal/location/ProviderProperties;
    :sswitch_6d
    const-string v4, "com.android.internal.location.ILocationProvider"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/android/internal/location/ILocationProvider$Stub;->getStatus(Landroid/os/Bundle;)I

    move-result v2

    .line 106
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    if-eqz v0, :cond_8a

    .line 109
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    invoke-virtual {v0, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 113
    :cond_8a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 119
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v2    # "_result":I
    :sswitch_8f
    const-string v4, "com.android.internal.location.ILocationProvider"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/location/ILocationProvider$Stub;->getStatusUpdateTime()J

    move-result-wide v2

    .line 121
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 127
    .end local v2    # "_result":J
    :sswitch_a0
    const-string v4, "com.android.internal.location.ILocationProvider"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ce

    .line 132
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 137
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_b7
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/location/ILocationProvider$Stub;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    .line 138
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v2, :cond_d0

    move v4, v5

    :goto_c1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    if-eqz v1, :cond_d2

    .line 141
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    invoke-virtual {v1, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 135
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":Z
    :cond_ce
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_b7

    .restart local v2    # "_result":Z
    :cond_d0
    move v4, v6

    .line 139
    goto :goto_c1

    .line 145
    :cond_d2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 44
    nop

    :sswitch_data_d8
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_28
        0x4 -> :sswitch_54
        0x5 -> :sswitch_6d
        0x6 -> :sswitch_8f
        0x7 -> :sswitch_a0
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
