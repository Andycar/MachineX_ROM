.class public abstract Lcom/samsung/android/mdnie/IMdnieManager$Stub;
.super Landroid/os/Binder;
.source "IMdnieManager.java"

# interfaces
.implements Lcom/samsung/android/mdnie/IMdnieManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdnie/IMdnieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdnie/IMdnieManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mdnie.IMdnieManager"

.field static final TRANSACTION_getContentMode:I = 0x3

.field static final TRANSACTION_getScreenMode:I = 0x2

.field static final TRANSACTION_getVisionMode:I = 0x1

.field static final TRANSACTION_setAdjustVisionMode:I = 0x5

.field static final TRANSACTION_setContentMode:I = 0x7

.field static final TRANSACTION_setScreenMode:I = 0x6

.field static final TRANSACTION_setVisionMode:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/mdnie/IMdnieManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mdnie/IMdnieManager;
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
    const-string v1, "com.samsung.android.mdnie.IMdnieManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/mdnie/IMdnieManager;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/samsung/android/mdnie/IMdnieManager;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/samsung/android/mdnie/IMdnieManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/mdnie/IMdnieManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_a2

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 43
    :sswitch_a
    const-string v3, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v3, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/mdnie/IMdnieManager$Stub;->getVisionMode()I

    move-result v2

    .line 50
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 56
    .end local v2    # "_result":I
    :sswitch_20
    const-string v3, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/mdnie/IMdnieManager$Stub;->getScreenMode()I

    move-result v2

    .line 58
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 64
    .end local v2    # "_result":I
    :sswitch_30
    const-string v3, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/mdnie/IMdnieManager$Stub;->getContentMode()I

    move-result v2

    .line 66
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 72
    .end local v2    # "_result":I
    :sswitch_40
    const-string v5, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdnie/IMdnieManager$Stub;->setVisionMode(I)Z

    move-result v2

    .line 76
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v2, :cond_53

    move v3, v4

    :cond_53
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 82
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_57
    const-string v5, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 87
    .local v1, "_arg1":[I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/mdnie/IMdnieManager$Stub;->setAdjustVisionMode(I[I)Z

    move-result v2

    .line 88
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v2, :cond_6e

    move v3, v4

    :cond_6e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 94
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_result":Z
    :sswitch_72
    const-string v5, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdnie/IMdnieManager$Stub;->setScreenMode(I)Z

    move-result v2

    .line 98
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v2, :cond_85

    move v3, v4

    :cond_85
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 104
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_89
    const-string v5, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdnie/IMdnieManager$Stub;->setContentMode(I)Z

    move-result v2

    .line 108
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v2, :cond_9c

    move v3, v4

    :cond_9c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 39
    nop

    :sswitch_data_a2
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_30
        0x4 -> :sswitch_40
        0x5 -> :sswitch_57
        0x6 -> :sswitch_72
        0x7 -> :sswitch_89
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
