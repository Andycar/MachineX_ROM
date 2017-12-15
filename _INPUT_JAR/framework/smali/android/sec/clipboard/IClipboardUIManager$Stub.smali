.class public abstract Landroid/sec/clipboard/IClipboardUIManager$Stub;
.super Landroid/os/Binder;
.source "IClipboardUIManager.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardUIManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardUIManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.IClipboardUIManager"

.field static final TRANSACTION_dismiss:I = 0x2

.field static final TRANSACTION_getClipboardUIMode:I = 0x9

.field static final TRANSACTION_getIconXpos:I = 0x7

.field static final TRANSACTION_getIconYpos:I = 0x8

.field static final TRANSACTION_hideFloatingIconForScrap:I = 0x6

.field static final TRANSACTION_isShowing:I = 0x3

.field static final TRANSACTION_sendCropRectforAni:I = 0xa

.field static final TRANSACTION_setPasteTargetViewType:I = 0x4

.field static final TRANSACTION_show:I = 0x1

.field static final TRANSACTION_showFloatingIconForScrap:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p0, p0, v0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardUIManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 37
    if-nez p0, :cond_4

    .line 38
    const/4 v0, 0x0

    .line 44
    :goto_3
    return-object v0

    .line 40
    :cond_4
    const-string v1, "android.sec.clipboard.IClipboardUIManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/sec/clipboard/IClipboardUIManager;

    if-eqz v1, :cond_13

    .line 42
    check-cast v0, Landroid/sec/clipboard/IClipboardUIManager;

    goto :goto_3

    .line 44
    :cond_13
    new-instance v0, Landroid/sec/clipboard/IClipboardUIManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/clipboard/IClipboardUIManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 53
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
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 62
    sparse-switch p1, :sswitch_data_da

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 66
    :sswitch_a
    const-string v0, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 71
    :sswitch_10
    const-string v0, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 76
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->show(ILandroid/os/IBinder;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 82
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :sswitch_24
    const-string v8, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3b

    move v2, v7

    .line 87
    .local v2, "_arg1":Z
    :goto_34
    invoke-virtual {p0, v1, v2}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->dismiss(IZ)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v2    # "_arg1":Z
    :cond_3b
    move v2, v0

    .line 86
    goto :goto_34

    .line 93
    .end local v1    # "_arg0":I
    :sswitch_3d
    const-string v8, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->isShowing()Z

    move-result v6

    .line 95
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v6, :cond_4c

    move v0, v7

    :cond_4c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 101
    .end local v6    # "_result":Z
    :sswitch_50
    const-string v0, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 105
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v2

    .line 106
    .local v2, "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-virtual {p0, v1, v2}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->setPasteTargetViewType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 112
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    :sswitch_68
    const-string v0, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->showFloatingIconForScrap()V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 119
    :sswitch_74
    const-string v0, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->hideFloatingIconForScrap()V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 126
    :sswitch_80
    const-string v0, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->getIconXpos()F

    move-result v6

    .line 128
    .local v6, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_9

    .line 134
    .end local v6    # "_result":F
    :sswitch_91
    const-string v0, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->getIconYpos()F

    move-result v6

    .line 136
    .restart local v6    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_9

    .line 142
    .end local v6    # "_result":F
    :sswitch_a2
    const-string v0, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->getClipboardUIMode()I

    move-result v6

    .line 144
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 150
    .end local v6    # "_result":I
    :sswitch_b3
    const-string v8, "android.sec.clipboard.IClipboardUIManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 154
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 156
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 158
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 160
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_d8

    move v5, v7

    .local v5, "_arg4":Z
    :goto_cf
    move-object v0, p0

    .line 161
    invoke-virtual/range {v0 .. v5}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->sendCropRectforAni(IIIIZ)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v5    # "_arg4":Z
    :cond_d8
    move v5, v0

    .line 160
    goto :goto_cf

    .line 62
    :sswitch_data_da
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_24
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_50
        0x5 -> :sswitch_68
        0x6 -> :sswitch_74
        0x7 -> :sswitch_80
        0x8 -> :sswitch_91
        0x9 -> :sswitch_a2
        0xa -> :sswitch_b3
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
