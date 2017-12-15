.class public abstract Landroid/os/ILpnetManager$Stub;
.super Landroid/os/Binder;
.source "ILpnetManager.java"

# interfaces
.implements Landroid/os/ILpnetManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ILpnetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ILpnetManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ILpnetManager"

.field static final TRANSACTION_enableDisableSolution:I = 0x5

.field static final TRANSACTION_forceStopPackage:I = 0x9

.field static final TRANSACTION_freezeApps:I = 0x1

.field static final TRANSACTION_gcmNotificationBroadcast:I = 0x4

.field static final TRANSACTION_getLRUList:I = 0x6

.field static final TRANSACTION_getManagedAppList:I = 0x3

.field static final TRANSACTION_runFreezeBasedOnLRU:I = 0x8

.field static final TRANSACTION_unFreezeApps:I = 0x2

.field static final TRANSACTION_updateLruInDB:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.os.ILpnetManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/ILpnetManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ILpnetManager;
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
    const-string v1, "android.os.ILpnetManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/ILpnetManager;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/os/ILpnetManager;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/os/ILpnetManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/ILpnetManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 9
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
    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_b4

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 45
    :sswitch_9
    const-string v3, "android.os.ILpnetManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v3, "android.os.ILpnetManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    .line 53
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 58
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_22
    invoke-virtual {p0, v0}, Landroid/os/ILpnetManager$Stub;->freezeApps(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 56
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_29
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_22

    .line 64
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_2b
    const-string v3, "android.os.ILpnetManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/ILpnetManager$Stub;->unFreezeApps([Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 73
    .end local v0    # "_arg0":[Ljava/lang/String;
    :sswitch_3b
    const-string v3, "android.os.ILpnetManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Landroid/os/ILpnetManager$Stub;->getManagedAppList()Ljava/util/List;

    move-result-object v1

    .line 75
    .local v1, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_8

    .line 81
    .end local v1    # "_result":Ljava/util/List;
    :sswitch_4b
    const-string v3, "android.os.ILpnetManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/ILpnetManager$Stub;->gcmNotificationBroadcast(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 90
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_5b
    const-string v3, "android.os.ILpnetManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6e

    move v0, v2

    .line 93
    .local v0, "_arg0":Z
    :goto_67
    invoke-virtual {p0, v0}, Landroid/os/ILpnetManager$Stub;->enableDisableSolution(Z)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 92
    .end local v0    # "_arg0":Z
    :cond_6e
    const/4 v0, 0x0

    goto :goto_67

    .line 99
    :sswitch_70
    const-string v3, "android.os.ILpnetManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ILpnetManager$Stub;->getLRUList(I)Ljava/util/Map;

    move-result-object v1

    .line 103
    .local v1, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_8

    .line 109
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/Map;
    :sswitch_84
    const-string v3, "android.os.ILpnetManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/ILpnetManager$Stub;->updateLruInDB(I)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 118
    .end local v0    # "_arg0":I
    :sswitch_95
    const-string v3, "android.os.ILpnetManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Landroid/os/ILpnetManager$Stub;->runFreezeBasedOnLRU()V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 125
    :sswitch_a2
    const-string v3, "android.os.ILpnetManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/ILpnetManager$Stub;->forceStopPackage(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    .line 41
    nop

    :sswitch_data_b4
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_3b
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_5b
        0x6 -> :sswitch_70
        0x7 -> :sswitch_84
        0x8 -> :sswitch_95
        0x9 -> :sswitch_a2
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
