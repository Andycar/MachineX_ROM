.class public abstract Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
.super Landroid/os/Binder;
.source "IPrivateModeManager.java"

# interfaces
.implements Lcom/samsung/android/privatemode/IPrivateModeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/privatemode/IPrivateModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/privatemode/IPrivateModeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.privatemode.IPrivateModeManager"

.field static final TRANSACTION_registerClient:I = 0x1

.field static final TRANSACTION_unRegisterClient:I = 0x3

.field static final TRANSACTION_unregisterClient:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.android.privatemode.IPrivateModeManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/privatemode/IPrivateModeManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.samsung.android.privatemode.IPrivateModeManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/privatemode/IPrivateModeManager;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/samsung/android/privatemode/IPrivateModeManager;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/samsung/android/privatemode/IPrivateModeManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/privatemode/IPrivateModeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
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

    .line 38
    sparse-switch p1, :sswitch_data_70

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 42
    :sswitch_a
    const-string v3, "com.samsung.android.privatemode.IPrivateModeManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v3, "com.samsung.android.privatemode.IPrivateModeManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/privatemode/IPrivateModeClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/privatemode/IPrivateModeClient;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Lcom/samsung/android/privatemode/IPrivateModeClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_36

    .line 52
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 57
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_2b
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;->registerClient(Lcom/samsung/android/privatemode/IPrivateModeClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v2

    .line 58
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_9

    .line 55
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":Landroid/os/IBinder;
    :cond_36
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_2b

    .line 64
    .end local v0    # "_arg0":Lcom/samsung/android/privatemode/IPrivateModeClient;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_38
    const-string v5, "com.samsung.android.privatemode.IPrivateModeManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 67
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;->unregisterClient(Landroid/os/IBinder;)Z

    move-result v2

    .line 68
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v2, :cond_4b

    move v3, v4

    :cond_4b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 74
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :sswitch_4f
    const-string v5, "com.samsung.android.privatemode.IPrivateModeManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 78
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6d

    move v1, v4

    .line 79
    .local v1, "_arg1":Z
    :goto_5f
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;->unRegisterClient(Landroid/os/IBinder;Z)Z

    move-result v2

    .line 80
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v2, :cond_69

    move v3, v4

    :cond_69
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :cond_6d
    move v1, v3

    .line 78
    goto :goto_5f

    .line 38
    nop

    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_38
        0x3 -> :sswitch_4f
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
