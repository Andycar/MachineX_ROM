.class public abstract Lcom/absolute/android/persistence/IABTPersistedFile$Stub;
.super Landroid/os/Binder;
.source "IABTPersistedFile.java"

# interfaces
.implements Lcom/absolute/android/persistence/IABTPersistedFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/absolute/android/persistence/IABTPersistedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/absolute/android/persistence/IABTPersistedFile$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.absolute.android.persistence.IABTPersistedFile"

.field static final TRANSACTION_close:I = 0x6

.field static final TRANSACTION_delete:I = 0x7

.field static final TRANSACTION_exists:I = 0x1

.field static final TRANSACTION_read:I = 0x4

.field static final TRANSACTION_skip:I = 0x5

.field static final TRANSACTION_write:I = 0x2

.field static final TRANSACTION_writeWithCount:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-virtual {p0, p0, v0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTPersistedFile;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_4

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_3
    return-object v0

    .line 33
    :cond_4
    const-string v1, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/absolute/android/persistence/IABTPersistedFile;

    if-eqz v1, :cond_13

    .line 35
    check-cast v0, Lcom/absolute/android/persistence/IABTPersistedFile;

    goto :goto_3

    .line 37
    :cond_13
    new-instance v0, Lcom/absolute/android/persistence/IABTPersistedFile$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
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

    const/4 v7, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_9e

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 49
    :sswitch_a
    const-string v6, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 54
    :sswitch_10
    const-string v8, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->exists()Z

    move-result v4

    .line 56
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v4, :cond_1f

    move v6, v7

    :cond_1f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 62
    .end local v4    # "_result":Z
    :sswitch_23
    const-string v6, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 65
    .local v0, "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->write([B)I

    move-result v4

    .line 66
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 72
    .end local v0    # "_arg0":[B
    .end local v4    # "_result":I
    :sswitch_37
    const-string v6, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 76
    .restart local v0    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 79
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->writeWithCount([BII)I

    move-result v4

    .line 80
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 86
    .end local v0    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :sswitch_53
    const-string v6, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 89
    .restart local v0    # "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->read([B)I

    move-result v4

    .line 90
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_9

    .line 97
    .end local v0    # "_arg0":[B
    .end local v4    # "_result":I
    :sswitch_6a
    const-string v6, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 100
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->skip(J)J

    move-result-wide v4

    .line 101
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_9

    .line 107
    .end local v0    # "_arg0":J
    .end local v4    # "_result":J
    :sswitch_7e
    const-string v6, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->close()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 114
    :sswitch_8a
    const-string v8, "com.absolute.android.persistence.IABTPersistedFile"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->delete()Z

    move-result v4

    .line 116
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v4, :cond_99

    move v6, v7

    :cond_99
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 45
    :sswitch_data_9e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_37
        0x4 -> :sswitch_53
        0x5 -> :sswitch_6a
        0x6 -> :sswitch_7e
        0x7 -> :sswitch_8a
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
