.class public abstract Lcom/samsung/android/toolbox/ITwToolBoxService$Stub;
.super Landroid/os/Binder;
.source "ITwToolBoxService.java"

# interfaces
.implements Lcom/samsung/android/toolbox/ITwToolBoxService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/ITwToolBoxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/toolbox/ITwToolBoxService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.toolbox.ITwToolBoxService"

.field static final TRANSACTION_getToolList:I = 0x5

.field static final TRANSACTION_isContain:I = 0x3

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_sendMessage:I = 0x4

.field static final TRANSACTION_setToolList:I = 0x6

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.toolbox.ITwToolBoxService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/toolbox/ITwToolBoxService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/toolbox/ITwToolBoxService;
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
    const-string v1, "com.samsung.android.toolbox.ITwToolBoxService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/toolbox/ITwToolBoxService;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/samsung/android/toolbox/ITwToolBoxService;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/samsung/android/toolbox/ITwToolBoxService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/ITwToolBoxService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 12
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_9a

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 43
    :sswitch_a
    const-string v4, "com.samsung.android.toolbox.ITwToolBoxService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v6, "com.samsung.android.toolbox.ITwToolBoxService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;
    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/ITwToolBoxService$Stub;->registerCallback(Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;)Z

    move-result v3

    .line 52
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v3, :cond_27

    move v4, v5

    :cond_27
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 58
    .end local v0    # "_arg0":Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;
    .end local v3    # "_result":Z
    :sswitch_2b
    const-string v6, "com.samsung.android.toolbox.ITwToolBoxService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    move-result-object v0

    .line 61
    .restart local v0    # "_arg0":Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;
    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/ITwToolBoxService$Stub;->unregisterCallback(Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;)Z

    move-result v3

    .line 62
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v3, :cond_42

    move v4, v5

    :cond_42
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 68
    .end local v0    # "_arg0":Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;
    .end local v3    # "_result":Z
    :sswitch_46
    const-string v6, "com.samsung.android.toolbox.ITwToolBoxService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/toolbox/ITwToolBoxService$Stub;->isContain(II)Z

    move-result v3

    .line 74
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v3, :cond_5d

    move v4, v5

    :cond_5d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 80
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Z
    :sswitch_61
    const-string v4, "com.samsung.android.toolbox.ITwToolBoxService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 87
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/toolbox/ITwToolBoxService$Stub;->sendMessage(Ljava/lang/String;II)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 93
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_79
    const-string v4, "com.samsung.android.toolbox.ITwToolBoxService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/toolbox/ITwToolBoxService$Stub;->getToolList()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 101
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_89
    const-string v4, "com.samsung.android.toolbox.ITwToolBoxService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/ITwToolBoxService$Stub;->setToolList(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 39
    :sswitch_data_9a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_46
        0x4 -> :sswitch_61
        0x5 -> :sswitch_79
        0x6 -> :sswitch_89
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
