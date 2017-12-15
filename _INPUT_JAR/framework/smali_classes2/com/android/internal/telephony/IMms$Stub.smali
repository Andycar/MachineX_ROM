.class public abstract Lcom/android/internal/telephony/IMms$Stub;
.super Landroid/os/Binder;
.source "IMms.java"

# interfaces
.implements Lcom/android/internal/telephony/IMms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IMms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IMms$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IMms"

.field static final TRANSACTION_addMultimediaMessageDraft:I = 0xd

.field static final TRANSACTION_addTextMessageDraft:I = 0xc

.field static final TRANSACTION_archiveStoredConversation:I = 0xb

.field static final TRANSACTION_deleteStoredConversation:I = 0x9

.field static final TRANSACTION_deleteStoredMessage:I = 0x8

.field static final TRANSACTION_downloadMessage:I = 0x2

.field static final TRANSACTION_getAutoPersisting:I = 0x10

.field static final TRANSACTION_getCarrierConfigValues:I = 0x5

.field static final TRANSACTION_importMultimediaMessage:I = 0x7

.field static final TRANSACTION_importTextMessage:I = 0x6

.field static final TRANSACTION_sendMessage:I = 0x1

.field static final TRANSACTION_sendStoredMessage:I = 0xe

.field static final TRANSACTION_setAutoPersisting:I = 0xf

.field static final TRANSACTION_updateMmsDownloadStatus:I = 0x4

.field static final TRANSACTION_updateMmsSendStatus:I = 0x3

.field static final TRANSACTION_updateStoredMessageStatus:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.android.internal.telephony.IMms"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IMms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;
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
    const-string v1, "com.android.internal.telephony.IMms"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/IMms;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/android/internal/telephony/IMms;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/IMms$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IMms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 37
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
    .line 41
    sparse-switch p1, :sswitch_data_3a2

    .line 377
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_7
    return v5

    .line 45
    :sswitch_8
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v5, 0x1

    goto :goto_7

    .line 50
    :sswitch_11
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 54
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 56
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5e

    .line 57
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 63
    .local v9, "_arg2":Landroid/net/Uri;
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 65
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_60

    .line 66
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 72
    .local v11, "_arg4":Landroid/os/Bundle;
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_62

    .line 73
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/PendingIntent;

    .local v12, "_arg5":Landroid/app/PendingIntent;
    :goto_54
    move-object/from16 v5, p0

    .line 78
    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/IMms$Stub;->sendMessage(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    const/4 v5, 0x1

    goto :goto_7

    .line 60
    .end local v9    # "_arg2":Landroid/net/Uri;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/os/Bundle;
    .end local v12    # "_arg5":Landroid/app/PendingIntent;
    :cond_5e
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/net/Uri;
    goto :goto_30

    .line 69
    .restart local v10    # "_arg3":Ljava/lang/String;
    :cond_60
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/os/Bundle;
    goto :goto_44

    .line 76
    :cond_62
    const/4 v12, 0x0

    .restart local v12    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_54

    .line 84
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Landroid/net/Uri;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/os/Bundle;
    .end local v12    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_64
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 88
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 90
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 92
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b2

    .line 93
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 99
    .local v10, "_arg3":Landroid/net/Uri;
    :goto_87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b4

    .line 100
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 106
    .restart local v11    # "_arg4":Landroid/os/Bundle;
    :goto_97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b6

    .line 107
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/PendingIntent;

    .restart local v12    # "_arg5":Landroid/app/PendingIntent;
    :goto_a7
    move-object/from16 v5, p0

    .line 112
    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/IMms$Stub;->downloadMessage(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 96
    .end local v10    # "_arg3":Landroid/net/Uri;
    .end local v11    # "_arg4":Landroid/os/Bundle;
    .end local v12    # "_arg5":Landroid/app/PendingIntent;
    :cond_b2
    const/4 v10, 0x0

    .restart local v10    # "_arg3":Landroid/net/Uri;
    goto :goto_87

    .line 103
    :cond_b4
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/os/Bundle;
    goto :goto_97

    .line 110
    :cond_b6
    const/4 v12, 0x0

    .restart local v12    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_a7

    .line 118
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Landroid/net/Uri;
    .end local v11    # "_arg4":Landroid/os/Bundle;
    .end local v12    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_b8
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 122
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 124
    .local v8, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 125
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9}, Lcom/android/internal/telephony/IMms$Stub;->updateMmsSendStatus(I[BI)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 131
    .end local v6    # "_arg0":I
    .end local v8    # "_arg1":[B
    .end local v9    # "_arg2":I
    :sswitch_d6
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 135
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 136
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/IMms$Stub;->updateMmsDownloadStatus(II)V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 142
    .end local v6    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_f0
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 145
    .local v6, "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/IMms$Stub;->getCarrierConfigValues(J)Landroid/os/Bundle;

    move-result-object v4

    .line 146
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v4, :cond_115

    .line 148
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    :goto_112
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 152
    :cond_115
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_112

    .line 158
    .end local v4    # "_result":Landroid/os/Bundle;
    .end local v6    # "_arg0":J
    :sswitch_11c
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 164
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 166
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 168
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 170
    .local v18, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_168

    const/4 v12, 0x1

    .line 172
    .local v12, "_arg5":Z
    :goto_13e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16a

    const/16 v21, 0x1

    .local v21, "_arg6":Z
    :goto_146
    move-object/from16 v13, p0

    move-object v14, v6

    move-object v15, v8

    move/from16 v16, v9

    move-object/from16 v17, v10

    move/from16 v20, v12

    .line 173
    invoke-virtual/range {v13 .. v21}, Lcom/android/internal/telephony/IMms$Stub;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v4

    .line 174
    .local v4, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v4, :cond_16d

    .line 176
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 182
    :goto_165
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 170
    .end local v4    # "_result":Landroid/net/Uri;
    .end local v12    # "_arg5":Z
    .end local v21    # "_arg6":Z
    :cond_168
    const/4 v12, 0x0

    goto :goto_13e

    .line 172
    .restart local v12    # "_arg5":Z
    :cond_16a
    const/16 v21, 0x0

    goto :goto_146

    .line 180
    .restart local v4    # "_result":Landroid/net/Uri;
    .restart local v21    # "_arg6":Z
    :cond_16d
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_165

    .line 186
    .end local v4    # "_result":Landroid/net/Uri;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v12    # "_arg5":Z
    .end local v18    # "_arg4":J
    .end local v21    # "_arg6":Z
    :sswitch_174
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 190
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c9

    .line 191
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 197
    .local v8, "_arg1":Landroid/net/Uri;
    :goto_18f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 199
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 201
    .local v26, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1cb

    const/4 v11, 0x1

    .line 203
    .local v11, "_arg4":Z
    :goto_19e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1cd

    const/4 v12, 0x1

    .restart local v12    # "_arg5":Z
    :goto_1a5
    move-object/from16 v22, p0

    move-object/from16 v23, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move/from16 v28, v11

    move/from16 v29, v12

    .line 204
    invoke-virtual/range {v22 .. v29}, Lcom/android/internal/telephony/IMms$Stub;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v4

    .line 205
    .restart local v4    # "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v4, :cond_1cf

    .line 207
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 213
    :goto_1c6
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 194
    .end local v4    # "_result":Landroid/net/Uri;
    .end local v8    # "_arg1":Landroid/net/Uri;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v11    # "_arg4":Z
    .end local v12    # "_arg5":Z
    .end local v26    # "_arg3":J
    :cond_1c9
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/net/Uri;
    goto :goto_18f

    .line 201
    .restart local v9    # "_arg2":Ljava/lang/String;
    .restart local v26    # "_arg3":J
    :cond_1cb
    const/4 v11, 0x0

    goto :goto_19e

    .line 203
    .restart local v11    # "_arg4":Z
    :cond_1cd
    const/4 v12, 0x0

    goto :goto_1a5

    .line 211
    .restart local v4    # "_result":Landroid/net/Uri;
    .restart local v12    # "_arg5":Z
    :cond_1cf
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c6

    .line 217
    .end local v4    # "_result":Landroid/net/Uri;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/net/Uri;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v11    # "_arg4":Z
    .end local v12    # "_arg5":Z
    .end local v26    # "_arg3":J
    :sswitch_1d6
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 221
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_205

    .line 222
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 227
    .restart local v8    # "_arg1":Landroid/net/Uri;
    :goto_1f1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/IMms$Stub;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v4

    .line 228
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v4, :cond_207

    const/4 v5, 0x1

    :goto_1fd
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 225
    .end local v4    # "_result":Z
    .end local v8    # "_arg1":Landroid/net/Uri;
    :cond_205
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/net/Uri;
    goto :goto_1f1

    .line 229
    .restart local v4    # "_result":Z
    :cond_207
    const/4 v5, 0x0

    goto :goto_1fd

    .line 234
    .end local v4    # "_result":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/net/Uri;
    :sswitch_209
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 238
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .line 239
    .local v30, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/IMms$Stub;->deleteStoredConversation(Ljava/lang/String;J)Z

    move-result v4

    .line 240
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    if-eqz v4, :cond_22e

    const/4 v5, 0x1

    :goto_226
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 241
    :cond_22e
    const/4 v5, 0x0

    goto :goto_226

    .line 246
    .end local v4    # "_result":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg1":J
    :sswitch_230
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 250
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_26f

    .line 251
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 257
    .restart local v8    # "_arg1":Landroid/net/Uri;
    :goto_24b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_271

    .line 258
    sget-object v5, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 263
    .local v9, "_arg2":Landroid/content/ContentValues;
    :goto_25b
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9}, Lcom/android/internal/telephony/IMms$Stub;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v4

    .line 264
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    if-eqz v4, :cond_273

    const/4 v5, 0x1

    :goto_267
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 254
    .end local v4    # "_result":Z
    .end local v8    # "_arg1":Landroid/net/Uri;
    .end local v9    # "_arg2":Landroid/content/ContentValues;
    :cond_26f
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/net/Uri;
    goto :goto_24b

    .line 261
    :cond_271
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/content/ContentValues;
    goto :goto_25b

    .line 265
    .restart local v4    # "_result":Z
    :cond_273
    const/4 v5, 0x0

    goto :goto_267

    .line 270
    .end local v4    # "_result":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/net/Uri;
    .end local v9    # "_arg2":Landroid/content/ContentValues;
    :sswitch_275
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 274
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .line 276
    .restart local v30    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a1

    const/4 v9, 0x1

    .line 277
    .local v9, "_arg2":Z
    :goto_28b
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v6, v1, v2, v9}, Lcom/android/internal/telephony/IMms$Stub;->archiveStoredConversation(Ljava/lang/String;JZ)Z

    move-result v4

    .line 278
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    if-eqz v4, :cond_2a3

    const/4 v5, 0x1

    :goto_299
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 276
    .end local v4    # "_result":Z
    .end local v9    # "_arg2":Z
    :cond_2a1
    const/4 v9, 0x0

    goto :goto_28b

    .line 279
    .restart local v4    # "_result":Z
    .restart local v9    # "_arg2":Z
    :cond_2a3
    const/4 v5, 0x0

    goto :goto_299

    .line 284
    .end local v4    # "_result":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":Z
    .end local v30    # "_arg1":J
    :sswitch_2a5
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 288
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 290
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 291
    .local v9, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9}, Lcom/android/internal/telephony/IMms$Stub;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 292
    .local v4, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v4, :cond_2d2

    .line 294
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 300
    :goto_2cf
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 298
    :cond_2d2
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2cf

    .line 304
    .end local v4    # "_result":Landroid/net/Uri;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    :sswitch_2d9
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 308
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_30e

    .line 309
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 314
    .local v8, "_arg1":Landroid/net/Uri;
    :goto_2f4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/IMms$Stub;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 315
    .restart local v4    # "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v4, :cond_310

    .line 317
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 323
    :goto_30b
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 312
    .end local v4    # "_result":Landroid/net/Uri;
    .end local v8    # "_arg1":Landroid/net/Uri;
    :cond_30e
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/net/Uri;
    goto :goto_2f4

    .line 321
    .restart local v4    # "_result":Landroid/net/Uri;
    :cond_310
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30b

    .line 327
    .end local v4    # "_result":Landroid/net/Uri;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/net/Uri;
    :sswitch_317
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 331
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 333
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_361

    .line 334
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 340
    .local v9, "_arg2":Landroid/net/Uri;
    :goto_336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_363

    .line 341
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 347
    .local v10, "_arg3":Landroid/os/Bundle;
    :goto_346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_365

    .line 348
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .local v11, "_arg4":Landroid/app/PendingIntent;
    :goto_356
    move-object/from16 v5, p0

    .line 353
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/IMms$Stub;->sendStoredMessage(JLjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 337
    .end local v9    # "_arg2":Landroid/net/Uri;
    .end local v10    # "_arg3":Landroid/os/Bundle;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    :cond_361
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/net/Uri;
    goto :goto_336

    .line 344
    :cond_363
    const/4 v10, 0x0

    .restart local v10    # "_arg3":Landroid/os/Bundle;
    goto :goto_346

    .line 351
    :cond_365
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_356

    .line 359
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Landroid/net/Uri;
    .end local v10    # "_arg3":Landroid/os/Bundle;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    :sswitch_367
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 363
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_384

    const/4 v8, 0x1

    .line 364
    .local v8, "_arg1":Z
    :goto_379
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/IMms$Stub;->setAutoPersisting(Ljava/lang/String;Z)V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 363
    .end local v8    # "_arg1":Z
    :cond_384
    const/4 v8, 0x0

    goto :goto_379

    .line 370
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_386
    const-string v5, "com.android.internal.telephony.IMms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IMms$Stub;->getAutoPersisting()Z

    move-result v4

    .line 372
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    if-eqz v4, :cond_39f

    const/4 v5, 0x1

    :goto_397
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 373
    :cond_39f
    const/4 v5, 0x0

    goto :goto_397

    .line 41
    nop

    :sswitch_data_3a2
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_64
        0x3 -> :sswitch_b8
        0x4 -> :sswitch_d6
        0x5 -> :sswitch_f0
        0x6 -> :sswitch_11c
        0x7 -> :sswitch_174
        0x8 -> :sswitch_1d6
        0x9 -> :sswitch_209
        0xa -> :sswitch_230
        0xb -> :sswitch_275
        0xc -> :sswitch_2a5
        0xd -> :sswitch_2d9
        0xe -> :sswitch_317
        0xf -> :sswitch_367
        0x10 -> :sswitch_386
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
