.class public abstract Landroid/app/IAppTask$Stub;
.super Landroid/os/Binder;
.source "IAppTask.java"

# interfaces
.implements Landroid/app/IAppTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAppTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAppTask$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IAppTask"

.field static final TRANSACTION_finishAndRemoveTask:I = 0x1

.field static final TRANSACTION_getTaskInfo:I = 0x2

.field static final TRANSACTION_moveToFront:I = 0x3

.field static final TRANSACTION_setExcludeFromRecents:I = 0x5

.field static final TRANSACTION_startActivity:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.app.IAppTask"

    invoke-virtual {p0, p0, v0}, Landroid/app/IAppTask$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IAppTask;
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
    const-string v1, "android.app.IAppTask"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/IAppTask;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/app/IAppTask;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/app/IAppTask$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/IAppTask$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 13
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
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_92

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 43
    :sswitch_a
    const-string v0, "android.app.IAppTask"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v0, "android.app.IAppTask"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/app/IAppTask$Stub;->finishAndRemoveTask()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 55
    :sswitch_1c
    const-string v0, "android.app.IAppTask"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/IAppTask$Stub;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v6

    .line 57
    .local v6, "_result":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v6, :cond_31

    .line 59
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v6, p3, v7}, Landroid/app/ActivityManager$RecentTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 63
    :cond_31
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 69
    .end local v6    # "_result":Landroid/app/ActivityManager$RecentTaskInfo;
    :sswitch_35
    const-string v0, "android.app.IAppTask"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Landroid/app/IAppTask$Stub;->moveToFront()V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 76
    :sswitch_41
    const-string v0, "android.app.IAppTask"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 80
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7a

    .line 83
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 89
    .local v3, "_arg2":Landroid/content/Intent;
    :goto_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7c

    .line 92
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .local v5, "_arg4":Landroid/os/Bundle;
    :goto_6e
    move-object v0, p0

    .line 97
    invoke-virtual/range {v0 .. v5}, Landroid/app/IAppTask$Stub;->startActivity(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v6

    .line 98
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 86
    .end local v3    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v6    # "_result":I
    :cond_7a
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/content/Intent;
    goto :goto_5c

    .line 95
    .restart local v4    # "_arg3":Ljava/lang/String;
    :cond_7c
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/Bundle;
    goto :goto_6e

    .line 104
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :sswitch_7e
    const-string v0, "android.app.IAppTask"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8a

    move v1, v7

    .line 107
    .local v1, "_arg0":Z
    :cond_8a
    invoke-virtual {p0, v1}, Landroid/app/IAppTask$Stub;->setExcludeFromRecents(Z)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 39
    :sswitch_data_92
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_35
        0x4 -> :sswitch_41
        0x5 -> :sswitch_7e
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
