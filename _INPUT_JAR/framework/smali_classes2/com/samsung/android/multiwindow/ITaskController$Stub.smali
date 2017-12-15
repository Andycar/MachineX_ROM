.class public abstract Lcom/samsung/android/multiwindow/ITaskController$Stub;
.super Landroid/os/Binder;
.source "ITaskController.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/ITaskController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/ITaskController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/ITaskController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multiwindow.ITaskController"

.field static final TRANSACTION_onTaskRemoved:I = 0x3

.field static final TRANSACTION_onTaskStarted:I = 0x1

.field static final TRANSACTION_onTaskStopped:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.samsung.android.multiwindow.ITaskController"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/multiwindow/ITaskController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/ITaskController;
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
    const-string v1, "com.samsung.android.multiwindow.ITaskController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/multiwindow/ITaskController;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/samsung/android/multiwindow/ITaskController;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/samsung/android/multiwindow/ITaskController$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/ITaskController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_3e

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 45
    :sswitch_9
    const-string v3, "com.samsung.android.multiwindow.ITaskController"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v3, "com.samsung.android.multiwindow.ITaskController"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 53
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Ljava/util/List;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/ITaskController$Stub;->onTaskStarted(Ljava/util/List;)V

    goto :goto_8

    .line 59
    .end local v0    # "_arg0":Ljava/util/List;
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    :sswitch_24
    const-string v3, "com.samsung.android.multiwindow.ITaskController"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/ITaskController$Stub;->onTaskStopped(I)V

    goto :goto_8

    .line 67
    .end local v0    # "_arg0":I
    :sswitch_31
    const-string v3, "com.samsung.android.multiwindow.ITaskController"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/ITaskController$Stub;->onTaskRemoved(I)V

    goto :goto_8

    .line 41
    :sswitch_data_3e
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_24
        0x3 -> :sswitch_31
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
