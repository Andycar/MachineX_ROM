.class public abstract Landroid/sec/clipboard/IClipboardService$Stub;
.super Landroid/os/Binder;
.source "IClipboardService.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.IClipboardService"

.field static final TRANSACTION_AddClipboardFormatListener:I = 0x1

.field static final TRANSACTION_GetClipboardData:I = 0x4

.field static final TRANSACTION_GetClipboardFormatName:I = 0x3

.field static final TRANSACTION_IsShowUIClipboardData:I = 0x6

.field static final TRANSACTION_ObserverUpdate:I = 0x7

.field static final TRANSACTION_RegistClipboardWorkingFormUiInterface:I = 0x9

.field static final TRANSACTION_RegistScrapWorkingFormUiInterface:I = 0xa

.field static final TRANSACTION_RegisterClipboardFormat:I = 0x8

.field static final TRANSACTION_RemoveClipboardFormatListener:I = 0xb

.field static final TRANSACTION_SetClipboardData:I = 0xe

.field static final TRANSACTION_SetClipboardDataOriginalToEx:I = 0xf

.field static final TRANSACTION_SetClipboardDataWithoutSendingOrginalClipboard:I = 0x16

.field static final TRANSACTION_SetSyncClipboardData:I = 0xd

.field static final TRANSACTION_ShowUIClipboardData:I = 0x10

.field static final TRANSACTION_UpdateClipboardDB:I = 0x12

.field static final TRANSACTION_UpdateUIClipboardData:I = 0x11

.field static final TRANSACTION_callPasteMenuFromApp:I = 0x15

.field static final TRANSACTION_dismissUIDataDialog:I = 0x2

.field static final TRANSACTION_getClipedStrings:I = 0x13

.field static final TRANSACTION_getDataSize:I = 0x5

.field static final TRANSACTION_getScrapDataNumber:I = 0x19

.field static final TRANSACTION_iscalledPasteMenuFromApp:I = 0x14

.field static final TRANSACTION_showUIDataDialog:I = 0xc

.field static final TRANSACTION_unRegistClipboardWorkingFormUiInterface:I = 0x17

.field static final TRANSACTION_updateScrapData:I = 0x18


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p0, p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;
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
    const-string v1, "android.sec.clipboard.IClipboardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_13

    .line 42
    check-cast v0, Landroid/sec/clipboard/IClipboardService;

    goto :goto_3

    .line 44
    :cond_13
    new-instance v0, Landroid/sec/clipboard/IClipboardService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/clipboard/IClipboardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 62
    sparse-switch p1, :sswitch_data_276

    .line 349
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 66
    :sswitch_a
    const-string v5, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 71
    :sswitch_10
    const-string v7, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/sec/clipboard/IClipboardFormatListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardFormatListener;

    move-result-object v0

    .line 74
    .local v0, "_arg0":Landroid/sec/clipboard/IClipboardFormatListener;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z

    move-result v3

    .line 75
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v3, :cond_27

    move v5, v6

    :cond_27
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 81
    .end local v0    # "_arg0":Landroid/sec/clipboard/IClipboardFormatListener;
    .end local v3    # "_result":Z
    :sswitch_2b
    const-string v5, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->dismissUIDataDialog()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 88
    :sswitch_37
    const-string v5, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->GetClipboardFormatName(I)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 98
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_4b
    const-string v7, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    .line 102
    .local v3, "_result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v3, :cond_64

    .line 104
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {v3, p3, v6}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 108
    :cond_64
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 114
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_68
    const-string v5, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->getDataSize()I

    move-result v3

    .line 116
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 122
    .end local v3    # "_result":I
    :sswitch_78
    const-string v7, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->IsShowUIClipboardData()Z

    move-result v3

    .line 124
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v3, :cond_87

    move v5, v6

    :cond_87
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 130
    .end local v3    # "_result":Z
    :sswitch_8c
    const-string v5, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ab

    .line 135
    sget-object v5, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 140
    .local v1, "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :goto_a3
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardService$Stub;->ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 138
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :cond_ab
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_a3

    .line 146
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_ad
    const-string v5, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->RegisterClipboardFormat(Ljava/lang/String;)I

    move-result v3

    .line 150
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 156
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_c2
    const-string v5, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    move-result-object v0

    .line 159
    .local v0, "_arg0":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 165
    .end local v0    # "_arg0":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :sswitch_d7
    const-string v5, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    move-result-object v0

    .line 168
    .restart local v0    # "_arg0":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->RegistScrapWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 174
    .end local v0    # "_arg0":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :sswitch_ec
    const-string v7, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/sec/clipboard/IClipboardFormatListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardFormatListener;

    move-result-object v0

    .line 177
    .local v0, "_arg0":Landroid/sec/clipboard/IClipboardFormatListener;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z

    move-result v3

    .line 178
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v3, :cond_103

    move v5, v6

    :cond_103
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 184
    .end local v0    # "_arg0":Landroid/sec/clipboard/IClipboardFormatListener;
    .end local v3    # "_result":Z
    :sswitch_108
    const-string v5, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->showUIDataDialog()V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 191
    :sswitch_115
    const-string v5, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->unRegistClipboardWorkingFormUiInterface()V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 198
    :sswitch_122
    const-string v7, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_144

    .line 201
    sget-object v7, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 206
    .local v0, "_arg0":Ljava/lang/CharSequence;
    :goto_135
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->SetSyncClipboardData(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 207
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v3, :cond_13f

    move v5, v6

    :cond_13f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 204
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    .end local v3    # "_result":Z
    :cond_144
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Ljava/lang/CharSequence;
    goto :goto_135

    .line 213
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_146
    const-string v7, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_170

    .line 218
    sget-object v7, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 224
    .restart local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :goto_15d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/sec/clipboard/IClipboardService$Stub;->SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)Z

    move-result v3

    .line 226
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v3, :cond_16b

    move v5, v6

    :cond_16b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 221
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :cond_170
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_15d

    .line 232
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_172
    const-string v7, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 236
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_198

    .line 237
    sget-object v7, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 242
    .restart local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :goto_189
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardService$Stub;->SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v3

    .line 243
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v3, :cond_193

    move v5, v6

    :cond_193
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 240
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    .end local v3    # "_result":Z
    :cond_198
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_189

    .line 249
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_19a
    const-string v5, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 253
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v1

    .line 254
    .local v1, "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardService$Stub;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 260
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    :sswitch_1b3
    const-string v5, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 264
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v1

    .line 265
    .restart local v1    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardService$Stub;->UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 271
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/sec/clipboard/IClipboardDataPasteEvent;
    :sswitch_1cc
    const-string v5, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->UpdateClipboardDB(I)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 280
    .end local v0    # "_arg0":I
    :sswitch_1dd
    const-string v5, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 284
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 285
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardService$Stub;->getClipedStrings(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 286
    .local v4, "_result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 292
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_1f6
    const-string v7, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->iscalledPasteMenuFromApp()Z

    move-result v3

    .line 294
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    if-eqz v3, :cond_205

    move v5, v6

    :cond_205
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 300
    .end local v3    # "_result":Z
    :sswitch_20a
    const-string v5, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 303
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->callPasteMenuFromApp(I)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 309
    .end local v0    # "_arg0":I
    :sswitch_21b
    const-string v7, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 313
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_245

    .line 314
    sget-object v7, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 320
    .local v1, "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :goto_232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 321
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/sec/clipboard/IClipboardService$Stub;->SetClipboardDataWithoutSendingOrginalClipboard(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)Z

    move-result v3

    .line 322
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    if-eqz v3, :cond_240

    move v5, v6

    :cond_240
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 317
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :cond_245
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_232

    .line 328
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_247
    const-string v5, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_262

    .line 331
    sget-object v5, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;

    .line 336
    .local v0, "_arg0":Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;
    :goto_25a
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->updateScrapData(Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;)V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 334
    .end local v0    # "_arg0":Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;
    :cond_262
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;
    goto :goto_25a

    .line 342
    .end local v0    # "_arg0":Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;
    :sswitch_264
    const-string v5, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->getScrapDataNumber()I

    move-result v3

    .line 344
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 62
    nop

    :sswitch_data_276
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_37
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_68
        0x6 -> :sswitch_78
        0x7 -> :sswitch_8c
        0x8 -> :sswitch_ad
        0x9 -> :sswitch_c2
        0xa -> :sswitch_d7
        0xb -> :sswitch_ec
        0xc -> :sswitch_108
        0xd -> :sswitch_122
        0xe -> :sswitch_146
        0xf -> :sswitch_172
        0x10 -> :sswitch_19a
        0x11 -> :sswitch_1b3
        0x12 -> :sswitch_1cc
        0x13 -> :sswitch_1dd
        0x14 -> :sswitch_1f6
        0x15 -> :sswitch_20a
        0x16 -> :sswitch_21b
        0x17 -> :sswitch_115
        0x18 -> :sswitch_247
        0x19 -> :sswitch_264
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
