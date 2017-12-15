.class public abstract Lcom/samsung/felicaremotelock/IFelica$Stub;
.super Landroid/os/Binder;
.source "IFelica.java"

# interfaces
.implements Lcom/samsung/felicaremotelock/IFelica;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/felicaremotelock/IFelica;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/felicaremotelock/IFelica$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.felicaremotelock.IFelica"

.field static final TRANSACTION_getLockState:I = 0x3

.field static final TRANSACTION_lock:I = 0x1

.field static final TRANSACTION_unlock:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.samsung.felicaremotelock.IFelica"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/felicaremotelock/IFelica$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/felicaremotelock/IFelica;
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
    const-string v1, "com.samsung.felicaremotelock.IFelica"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/felicaremotelock/IFelica;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/samsung/felicaremotelock/IFelica;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/samsung/felicaremotelock/IFelica$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/felicaremotelock/IFelica$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_46

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_9
    return v2

    .line 47
    :sswitch_a
    const-string v1, "com.samsung.felicaremotelock.IFelica"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v3, "com.samsung.felicaremotelock.IFelica"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/felicaremotelock/IFelica$Stub;->lock()Z

    move-result v0

    .line 54
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v0, :cond_1f

    move v1, v2

    :cond_1f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 60
    .end local v0    # "_result":Z
    :sswitch_23
    const-string v3, "com.samsung.felicaremotelock.IFelica"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/samsung/felicaremotelock/IFelica$Stub;->unlock()Z

    move-result v0

    .line 62
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v0, :cond_32

    move v1, v2

    :cond_32
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 68
    .end local v0    # "_result":Z
    :sswitch_36
    const-string v1, "com.samsung.felicaremotelock.IFelica"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/felicaremotelock/IFelica$Stub;->getLockState()I

    move-result v0

    .line 70
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 43
    :sswitch_data_46
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_36
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
