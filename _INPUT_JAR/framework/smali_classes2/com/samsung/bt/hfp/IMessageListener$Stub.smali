.class public abstract Lcom/samsung/bt/hfp/IMessageListener$Stub;
.super Landroid/os/Binder;
.source "IMessageListener.java"

# interfaces
.implements Lcom/samsung/bt/hfp/IMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bt/hfp/IMessageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/bt/hfp/IMessageListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.bt.hfp.IMessageListener"

.field static final TRANSACTION_onReceived:I = 0x1

.field static final TRANSACTION_onSetRemoteType:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.samsung.bt.hfp.IMessageListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/bt/hfp/IMessageListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/bt/hfp/IMessageListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 32
    if-nez p0, :cond_4

    .line 33
    const/4 v0, 0x0

    .line 39
    :goto_3
    return-object v0

    .line 35
    :cond_4
    const-string v1, "com.samsung.bt.hfp.IMessageListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/bt/hfp/IMessageListener;

    if-eqz v1, :cond_13

    .line 37
    check-cast v0, Lcom/samsung/bt/hfp/IMessageListener;

    goto :goto_3

    .line 39
    :cond_13
    new-instance v0, Lcom/samsung/bt/hfp/IMessageListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/bt/hfp/IMessageListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 43
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

    .line 47
    sparse-switch p1, :sswitch_data_44

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 51
    :sswitch_9
    const-string v3, "com.samsung.bt.hfp.IMessageListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 56
    :sswitch_f
    const-string v3, "com.samsung.bt.hfp.IMessageListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/bt/hfp/IMessageListener$Stub;->onReceived(ILjava/lang/String;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 67
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_23
    const-string v3, "com.samsung.bt.hfp.IMessageListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_41

    .line 72
    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 77
    .local v1, "_arg1":Landroid/bluetooth/BluetoothDevice;
    :goto_3a
    invoke-virtual {p0, v0, v1}, Lcom/samsung/bt/hfp/IMessageListener$Stub;->onSetRemoteType(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 75
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :cond_41
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_3a

    .line 47
    nop

    :sswitch_data_44
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_23
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
