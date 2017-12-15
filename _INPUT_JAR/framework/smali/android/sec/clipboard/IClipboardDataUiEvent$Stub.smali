.class public abstract Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;
.super Landroid/os/Binder;
.source "IClipboardDataUiEvent.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataUiEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardDataUiEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardDataUiEvent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.IClipboardDataUiEvent"

.field static final TRANSACTION_getClipboarddata:I = 0x6

.field static final TRANSACTION_removeItem:I = 0x1

.field static final TRANSACTION_removeScrapItem:I = 0x2

.field static final TRANSACTION_selectItem:I = 0x3

.field static final TRANSACTION_selectScrapItem:I = 0x4

.field static final TRANSACTION_setClipboarddata:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-virtual {p0, p0, v0}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataUiEvent;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    .line 43
    :goto_3
    return-object v0

    .line 39
    :cond_4
    const-string v1, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/sec/clipboard/IClipboardDataUiEvent;

    if-eqz v1, :cond_13

    .line 41
    check-cast v0, Landroid/sec/clipboard/IClipboardDataUiEvent;

    goto :goto_3

    .line 43
    :cond_13
    new-instance v0, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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
    const/4 v3, 0x1

    .line 57
    sparse-switch p1, :sswitch_data_a4

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 61
    :sswitch_9
    const-string v4, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 66
    :sswitch_f
    const-string v4, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;->removeItem(I)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 75
    .end local v0    # "_arg0":I
    :sswitch_1f
    const-string v4, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;->removeScrapItem(I)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 84
    .end local v0    # "_arg0":I
    :sswitch_2f
    const-string v4, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v1

    .line 89
    .local v1, "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;->selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 95
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    :sswitch_47
    const-string v4, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v1

    .line 100
    .restart local v1    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;->selectScrapItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 106
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    :sswitch_5f
    const-string v4, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_79

    .line 109
    sget-object v4, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    .line 114
    .local v0, "_arg0":Landroid/content/ClipData;
    :goto_72
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;->setClipboarddata(Landroid/content/ClipData;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 112
    .end local v0    # "_arg0":Landroid/content/ClipData;
    :cond_79
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ClipData;
    goto :goto_72

    .line 120
    .end local v0    # "_arg0":Landroid/content/ClipData;
    :sswitch_7b
    const-string v4, "android.sec.clipboard.IClipboardDataUiEvent"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v1

    .line 125
    .restart local v1    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;->getClipboarddata(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 126
    .local v2, "_result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v2, :cond_9d

    .line 128
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-virtual {v2, p3, v3}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_8

    .line 132
    :cond_9d
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 57
    nop

    :sswitch_data_a4
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_47
        0x5 -> :sswitch_5f
        0x6 -> :sswitch_7b
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
