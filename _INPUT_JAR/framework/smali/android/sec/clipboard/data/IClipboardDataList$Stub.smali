.class public abstract Landroid/sec/clipboard/data/IClipboardDataList$Stub;
.super Landroid/os/Binder;
.source "IClipboardDataList.java"

# interfaces
.implements Landroid/sec/clipboard/data/IClipboardDataList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/data/IClipboardDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/IClipboardDataList$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.data.IClipboardDataList"

.field static final TRANSACTION_getItem:I = 0x3

.field static final TRANSACTION_getScrapItem:I = 0x4

.field static final TRANSACTION_removeData:I = 0x5

.field static final TRANSACTION_removeScrapData:I = 0x6

.field static final TRANSACTION_scrapSize:I = 0x2

.field static final TRANSACTION_size:I = 0x1

.field static final TRANSACTION_updateData:I = 0x7

.field static final TRANSACTION_updateScrapData:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p0, p0, v0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/data/IClipboardDataList;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    .line 59
    :goto_3
    return-object v0

    .line 55
    :cond_4
    const-string v1, "android.sec.clipboard.data.IClipboardDataList"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/sec/clipboard/data/IClipboardDataList;

    if-eqz v1, :cond_13

    .line 57
    check-cast v0, Landroid/sec/clipboard/data/IClipboardDataList;

    goto :goto_3

    .line 59
    :cond_13
    new-instance v0, Landroid/sec/clipboard/data/IClipboardDataList$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 68
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

    .line 77
    sparse-switch p1, :sswitch_data_ea

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 81
    :sswitch_a
    const-string v3, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 86
    :sswitch_10
    const-string v3, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->size()I

    move-result v2

    .line 88
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 94
    .end local v2    # "_result":I
    :sswitch_20
    const-string v3, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->scrapSize()I

    move-result v2

    .line 96
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 102
    .end local v2    # "_result":I
    :sswitch_30
    const-string v5, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 106
    .local v2, "_result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v2, :cond_49

    .line 108
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    invoke-virtual {v2, p3, v4}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 112
    :cond_49
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 118
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_4d
    const-string v5, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->getScrapItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 122
    .restart local v2    # "_result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v2, :cond_66

    .line 124
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {v2, p3, v4}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 128
    :cond_66
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 134
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_6a
    const-string v5, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->removeData(I)Z

    move-result v2

    .line 138
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v2, :cond_7d

    move v3, v4

    :cond_7d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 144
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_81
    const-string v5, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 147
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->removeScrapData(I)Z

    move-result v2

    .line 148
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v2, :cond_94

    move v3, v4

    :cond_94
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 154
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_99
    const-string v5, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_bf

    .line 159
    sget-object v5, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 164
    .local v1, "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :goto_b0
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v2

    .line 165
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v2, :cond_ba

    move v3, v4

    :cond_ba
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 162
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    .end local v2    # "_result":Z
    :cond_bf
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_b0

    .line 171
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_c1
    const-string v5, "android.sec.clipboard.data.IClipboardDataList"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e7

    .line 176
    sget-object v5, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 181
    .restart local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :goto_d8
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;->updateScrapData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v2

    .line 182
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v2, :cond_e2

    move v3, v4

    :cond_e2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 179
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    .end local v2    # "_result":Z
    :cond_e7
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_d8

    .line 77
    nop

    :sswitch_data_ea
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_30
        0x4 -> :sswitch_4d
        0x5 -> :sswitch_6a
        0x6 -> :sswitch_81
        0x7 -> :sswitch_99
        0x8 -> :sswitch_c1
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
