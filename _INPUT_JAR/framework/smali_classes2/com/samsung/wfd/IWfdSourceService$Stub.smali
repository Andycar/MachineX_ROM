.class public abstract Lcom/samsung/wfd/IWfdSourceService$Stub;
.super Landroid/os/Binder;
.source "IWfdSourceService.java"

# interfaces
.implements Lcom/samsung/wfd/IWfdSourceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/IWfdSourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/IWfdSourceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.wfd.IWfdSourceService"

.field static final TRANSACTION_WFDGetSubtitleStatus:I = 0x1

.field static final TRANSACTION_WFDGetSuspendStatus:I = 0x4

.field static final TRANSACTION_WFDPostSubtitle:I = 0x2

.field static final TRANSACTION_WFDPostSuspend:I = 0x6

.field static final TRANSACTION_WFDSetSubtitleStatus:I = 0x3

.field static final TRANSACTION_WFDSetSuspendStatus:I = 0x5

.field static final TRANSACTION_isDongleRenameAvailable:I = 0x8

.field static final TRANSACTION_renameSink:I = 0x7

.field static final TRANSACTION_setDisplayRotation:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.samsung.wfd.IWfdSourceService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/wfd/IWfdSourceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wfd/IWfdSourceService;
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
    const-string v1, "com.samsung.wfd.IWfdSourceService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/wfd/IWfdSourceService;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/samsung/wfd/IWfdSourceService;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/samsung/wfd/IWfdSourceService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/wfd/IWfdSourceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_de

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 47
    :sswitch_a
    const-string v3, "com.samsung.wfd.IWfdSourceService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v5, "com.samsung.wfd.IWfdSourceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdSourceService$Stub;->WFDGetSubtitleStatus()Z

    move-result v2

    .line 54
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v2, :cond_1f

    move v3, v4

    :cond_1f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 60
    .end local v2    # "_result":Z
    :sswitch_23
    const-string v5, "com.samsung.wfd.IWfdSourceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/wfd/IWfdSourceService$Stub;->WFDPostSubtitle(Ljava/lang/String;I)Z

    move-result v2

    .line 66
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v2, :cond_3a

    move v3, v4

    :cond_3a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 72
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :sswitch_3e
    const-string v5, "com.samsung.wfd.IWfdSourceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_58

    move v0, v4

    .line 75
    .local v0, "_arg0":Z
    :goto_4a
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdSourceService$Stub;->WFDSetSubtitleStatus(Z)Z

    move-result v2

    .line 76
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v2, :cond_54

    move v3, v4

    :cond_54
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v2    # "_result":Z
    :cond_58
    move v0, v3

    .line 74
    goto :goto_4a

    .line 82
    :sswitch_5a
    const-string v5, "com.samsung.wfd.IWfdSourceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdSourceService$Stub;->WFDGetSuspendStatus()Z

    move-result v2

    .line 84
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v2, :cond_69

    move v3, v4

    :cond_69
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 90
    .end local v2    # "_result":Z
    :sswitch_6d
    const-string v5, "com.samsung.wfd.IWfdSourceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_87

    move v0, v4

    .line 93
    .restart local v0    # "_arg0":Z
    :goto_79
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdSourceService$Stub;->WFDSetSuspendStatus(Z)Z

    move-result v2

    .line 94
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v2, :cond_83

    move v3, v4

    :cond_83
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v2    # "_result":Z
    :cond_87
    move v0, v3

    .line 92
    goto :goto_79

    .line 100
    :sswitch_89
    const-string v5, "com.samsung.wfd.IWfdSourceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdSourceService$Stub;->WFDPostSuspend(Ljava/lang/String;)Z

    move-result v2

    .line 104
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v2, :cond_9c

    move v3, v4

    :cond_9c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 110
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_a1
    const-string v3, "com.samsung.wfd.IWfdSourceService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdSourceService$Stub;->renameSink(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 119
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_b2
    const-string v5, "com.samsung.wfd.IWfdSourceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdSourceService$Stub;->isDongleRenameAvailable()Z

    move-result v2

    .line 121
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v2, :cond_c1

    move v3, v4

    :cond_c1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 127
    .end local v2    # "_result":Z
    :sswitch_c6
    const-string v5, "com.samsung.wfd.IWfdSourceService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdSourceService$Stub;->setDisplayRotation(I)Z

    move-result v2

    .line 131
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v2, :cond_d9

    move v3, v4

    :cond_d9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 43
    :sswitch_data_de
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_5a
        0x5 -> :sswitch_6d
        0x6 -> :sswitch_89
        0x7 -> :sswitch_a1
        0x8 -> :sswitch_b2
        0x9 -> :sswitch_c6
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
