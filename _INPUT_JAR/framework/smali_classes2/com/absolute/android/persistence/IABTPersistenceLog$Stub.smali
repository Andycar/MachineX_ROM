.class public abstract Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;
.super Landroid/os/Binder;
.source "IABTPersistenceLog.java"

# interfaces
.implements Lcom/absolute/android/persistence/IABTPersistenceLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/absolute/android/persistence/IABTPersistenceLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/absolute/android/persistence/IABTPersistenceLog$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.absolute.android.persistence.IABTPersistenceLog"

.field static final TRANSACTION_clear:I = 0x3

.field static final TRANSACTION_getIterator:I = 0x1

.field static final TRANSACTION_getMaxLogSizeKB:I = 0x6

.field static final TRANSACTION_getNumberOfLogs:I = 0x5

.field static final TRANSACTION_logMessage:I = 0x2

.field static final TRANSACTION_setSize:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.absolute.android.persistence.IABTPersistenceLog"

    invoke-virtual {p0, p0, v0}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTPersistenceLog;
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
    const-string v1, "com.absolute.android.persistence.IABTPersistenceLog"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/absolute/android/persistence/IABTPersistenceLog;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/absolute/android/persistence/IABTPersistenceLog;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_8c

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_8
    return v4

    .line 47
    :sswitch_9
    const-string v4, "com.absolute.android.persistence.IABTPersistenceLog"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 48
    goto :goto_8

    .line 52
    :sswitch_10
    const-string v4, "com.absolute.android.persistence.IABTPersistenceLog"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;->getIterator(I)Lcom/absolute/android/persistence/IABTLogIterator;

    move-result-object v3

    .line 56
    .local v3, "_result":Lcom/absolute/android/persistence/IABTLogIterator;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v3, :cond_2b

    invoke-interface {v3}, Lcom/absolute/android/persistence/IABTLogIterator;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_26
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v4, v5

    .line 58
    goto :goto_8

    .line 57
    :cond_2b
    const/4 v4, 0x0

    goto :goto_26

    .line 62
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Lcom/absolute/android/persistence/IABTLogIterator;
    :sswitch_2d
    const-string v4, "com.absolute.android.persistence.IABTPersistenceLog"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 71
    goto :goto_8

    .line 75
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_46
    const-string v4, "com.absolute.android.persistence.IABTPersistenceLog"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;->clear()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 78
    goto :goto_8

    .line 82
    :sswitch_53
    const-string v4, "com.absolute.android.persistence.IABTPersistenceLog"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;->setSize(II)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 89
    goto :goto_8

    .line 93
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_68
    const-string v4, "com.absolute.android.persistence.IABTPersistenceLog"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;->getNumberOfLogs()I

    move-result v3

    .line 95
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 97
    goto :goto_8

    .line 101
    .end local v3    # "_result":I
    :sswitch_79
    const-string v4, "com.absolute.android.persistence.IABTPersistenceLog"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;->getMaxLogSizeKB()I

    move-result v3

    .line 103
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 105
    goto/16 :goto_8

    .line 43
    nop

    :sswitch_data_8c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_46
        0x4 -> :sswitch_53
        0x5 -> :sswitch_68
        0x6 -> :sswitch_79
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
