.class public abstract Landroid/content/pm/IPersonaFileHandler$Stub;
.super Landroid/os/Binder;
.source "IPersonaFileHandler.java"

# interfaces
.implements Landroid/content/pm/IPersonaFileHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPersonaFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPersonaFileHandler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPersonaFileHandler"

.field static final TRANSACTION_changeEncryptionKey:I = 0x6

.field static final TRANSACTION_createPartition:I = 0x1

.field static final TRANSACTION_isEncrypted:I = 0x7

.field static final TRANSACTION_mount:I = 0x3

.field static final TRANSACTION_mountFS:I = 0x4

.field static final TRANSACTION_removePartition:I = 0x2

.field static final TRANSACTION_unmount:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.content.pm.IPersonaFileHandler"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPersonaFileHandler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaFileHandler;
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
    const-string v1, "android.content.pm.IPersonaFileHandler"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/pm/IPersonaFileHandler;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/content/pm/IPersonaFileHandler;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/content/pm/IPersonaFileHandler$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/pm/IPersonaFileHandler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_112

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 45
    :sswitch_a
    const-string v0, "android.content.pm.IPersonaFileHandler"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v0, "android.content.pm.IPersonaFileHandler"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    move v3, v7

    .line 58
    .local v3, "_arg2":Z
    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 59
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPersonaFileHandler$Stub;->createPartition(ILjava/lang/String;ZI)Z

    move-result v6

    .line 60
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v6, :cond_32

    move v8, v7

    :cond_32
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v6    # "_result":Z
    :cond_36
    move v3, v8

    .line 56
    goto :goto_24

    .line 66
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_38
    const-string v0, "android.content.pm.IPersonaFileHandler"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_56

    move v2, v7

    .line 71
    .local v2, "_arg1":Z
    :goto_48
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPersonaFileHandler$Stub;->removePartition(IZ)Z

    move-result v6

    .line 72
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v6, :cond_52

    move v8, v7

    :cond_52
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v2    # "_arg1":Z
    .end local v6    # "_result":Z
    :cond_56
    move v2, v8

    .line 70
    goto :goto_48

    .line 78
    .end local v1    # "_arg0":I
    :sswitch_58
    const-string v0, "android.content.pm.IPersonaFileHandler"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 82
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7e

    move v3, v7

    .line 86
    .restart local v3    # "_arg2":Z
    :goto_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 87
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPersonaFileHandler$Stub;->mount(ILjava/lang/String;ZI)Z

    move-result v6

    .line 88
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v6, :cond_7a

    move v8, v7

    :cond_7a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v6    # "_result":Z
    :cond_7e
    move v3, v8

    .line 84
    goto :goto_6c

    .line 94
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_80
    const-string v0, "android.content.pm.IPersonaFileHandler"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 100
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_af

    move v3, v7

    .line 102
    .restart local v3    # "_arg2":Z
    :goto_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 104
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b1

    move v5, v7

    .local v5, "_arg4":Z
    :goto_9f
    move-object v0, p0

    .line 105
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPersonaFileHandler$Stub;->mountFS(ILjava/lang/String;ZIZ)Z

    move-result v6

    .line 106
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v6, :cond_aa

    move v8, v7

    :cond_aa
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    .end local v6    # "_result":Z
    :cond_af
    move v3, v8

    .line 100
    goto :goto_94

    .restart local v3    # "_arg2":Z
    .restart local v4    # "_arg3":I
    :cond_b1
    move v5, v8

    .line 104
    goto :goto_9f

    .line 112
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    :sswitch_b3
    const-string v0, "android.content.pm.IPersonaFileHandler"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaFileHandler$Stub;->unmount(I)Z

    move-result v6

    .line 116
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v6, :cond_c6

    move v8, v7

    :cond_c6
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 122
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_cb
    const-string v0, "android.content.pm.IPersonaFileHandler"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 126
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 128
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f7

    move v4, v7

    .line 132
    .local v4, "_arg3":Z
    :goto_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 133
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPersonaFileHandler$Stub;->changeEncryptionKey(ILjava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    .line 134
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v6, :cond_f2

    move v8, v7

    :cond_f2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Z
    :cond_f7
    move v4, v8

    .line 130
    goto :goto_e3

    .line 140
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_f9
    const-string v0, "android.content.pm.IPersonaFileHandler"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 143
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaFileHandler$Stub;->isEncrypted(I)Z

    move-result v6

    .line 144
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v6, :cond_10c

    move v8, v7

    :cond_10c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 41
    nop

    :sswitch_data_112
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_38
        0x3 -> :sswitch_58
        0x4 -> :sswitch_80
        0x5 -> :sswitch_b3
        0x6 -> :sswitch_cb
        0x7 -> :sswitch_f9
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
