.class public abstract Lcom/android/internal/telephony/ISub$Stub;
.super Landroid/os/Binder;
.source "ISub.java"

# interfaces
.implements Lcom/android/internal/telephony/ISub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISub$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISub"

.field static final TRANSACTION_activateSubId:I = 0x21

.field static final TRANSACTION_addSubInfoRecord:I = 0x8

.field static final TRANSACTION_clearDefaultsForInactiveSubIds:I = 0x1b

.field static final TRANSACTION_clearSubInfo:I = 0x12

.field static final TRANSACTION_deactivateSubId:I = 0x22

.field static final TRANSACTION_getActiveSubIdList:I = 0x1c

.field static final TRANSACTION_getActiveSubInfoCount:I = 0x7

.field static final TRANSACTION_getActiveSubInfoList:I = 0x5

.field static final TRANSACTION_getAllSubInfoCount:I = 0x6

.field static final TRANSACTION_getAllSubInfoList:I = 0x4

.field static final TRANSACTION_getDefaultDataSubId:I = 0x14

.field static final TRANSACTION_getDefaultSmsSubId:I = 0x19

.field static final TRANSACTION_getDefaultSubId:I = 0x11

.field static final TRANSACTION_getDefaultVoiceSubId:I = 0x17

.field static final TRANSACTION_getPhoneId:I = 0x13

.field static final TRANSACTION_getSlotId:I = 0xf

.field static final TRANSACTION_getSubId:I = 0x10

.field static final TRANSACTION_getSubInfoForSubscriber:I = 0x1

.field static final TRANSACTION_getSubInfoUsingIccId:I = 0x2

.field static final TRANSACTION_getSubInfoUsingSlotId:I = 0x3

.field static final TRANSACTION_getSubState:I = 0x24

.field static final TRANSACTION_isSMSPromptEnabled:I = 0x1d

.field static final TRANSACTION_isVoicePromptEnabled:I = 0x1f

.field static final TRANSACTION_setColor:I = 0x9

.field static final TRANSACTION_setDataRoaming:I = 0xe

.field static final TRANSACTION_setDefaultDataSubId:I = 0x15

.field static final TRANSACTION_setDefaultDataSubIdForMMS:I = 0x16

.field static final TRANSACTION_setDefaultSmsSubId:I = 0x1a

.field static final TRANSACTION_setDefaultVoiceSubId:I = 0x18

.field static final TRANSACTION_setDisplayName:I = 0xa

.field static final TRANSACTION_setDisplayNameUsingSrc:I = 0xb

.field static final TRANSACTION_setDisplayNumber:I = 0xc

.field static final TRANSACTION_setDisplayNumberFormat:I = 0xd

.field static final TRANSACTION_setSMSPromptEnabled:I = 0x1e

.field static final TRANSACTION_setSubState:I = 0x23

.field static final TRANSACTION_setVoicePromptEnabled:I = 0x20


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISub$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;
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
    const-string v1, "com.android.internal.telephony.ISub"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/ISub;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/android/internal/telephony/ISub;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/ISub$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ISub$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 16
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
    .line 38
    sparse-switch p1, :sswitch_data_310

    .line 395
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 42
    :sswitch_8
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_7

    .line 47
    :sswitch_f
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 50
    .local v6, "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v8

    .line 51
    .local v8, "_result":Landroid/telephony/SubInfoRecord;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v8, :cond_2b

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/telephony/SubInfoRecord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 59
    :goto_29
    const/4 v0, 0x1

    goto :goto_7

    .line 57
    :cond_2b
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 63
    .end local v6    # "_arg0":J
    .end local v8    # "_result":Landroid/telephony/SubInfoRecord;
    :sswitch_30
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getSubInfoUsingIccId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 67
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 69
    const/4 v0, 0x1

    goto :goto_7

    .line 73
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :sswitch_45
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getSubInfoUsingSlotId(I)Ljava/util/List;

    move-result-object v10

    .line 77
    .restart local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 79
    const/4 v0, 0x1

    goto :goto_7

    .line 83
    .end local v1    # "_arg0":I
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :sswitch_5a
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getAllSubInfoList()Ljava/util/List;

    move-result-object v10

    .line 85
    .restart local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 87
    const/4 v0, 0x1

    goto :goto_7

    .line 91
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :sswitch_6b
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v10

    .line 93
    .restart local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 95
    const/4 v0, 0x1

    goto :goto_7

    .line 99
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :sswitch_7c
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getAllSubInfoCount()I

    move-result v8

    .line 101
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 107
    .end local v8    # "_result":I
    :sswitch_8e
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubInfoCount()I

    move-result v8

    .line 109
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 115
    .end local v8    # "_result":I
    :sswitch_a0
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->addSubInfoRecord(Ljava/lang/String;I)I

    move-result v8

    .line 121
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 127
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_ba
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 131
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 132
    .local v2, "_arg1":J
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->setColor(IJ)I

    move-result v8

    .line 133
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 139
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v8    # "_result":I
    :sswitch_d4
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 144
    .restart local v2    # "_arg1":J
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayName(Ljava/lang/String;J)I

    move-result v8

    .line 145
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 151
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v8    # "_result":I
    :sswitch_ee
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 157
    .restart local v2    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, "_arg2":J
    move-object v0, p0

    .line 158
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNameUsingSrc(Ljava/lang/String;JJ)I

    move-result v8

    .line 159
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 165
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    .end local v8    # "_result":I
    :sswitch_10d
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 170
    .restart local v2    # "_arg1":J
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNumber(Ljava/lang/String;J)I

    move-result v8

    .line 171
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 177
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v8    # "_result":I
    :sswitch_127
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 181
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 182
    .restart local v2    # "_arg1":J
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNumberFormat(IJ)I

    move-result v8

    .line 183
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 189
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v8    # "_result":I
    :sswitch_141
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 194
    .restart local v2    # "_arg1":J
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->setDataRoaming(IJ)I

    move-result v8

    .line 195
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 201
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v8    # "_result":I
    :sswitch_15b
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 204
    .restart local v6    # "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->getSlotId(J)I

    move-result v8

    .line 205
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 211
    .end local v6    # "_arg0":J
    .end local v8    # "_result":I
    :sswitch_171
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getSubId(I)[J

    move-result-object v8

    .line 215
    .local v8, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 217
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 221
    .end local v1    # "_arg0":I
    .end local v8    # "_result":[J
    :sswitch_187
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSubId()J

    move-result-wide v8

    .line 223
    .local v8, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 225
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 229
    .end local v8    # "_result":J
    :sswitch_199
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->clearSubInfo()I

    move-result v8

    .line 231
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 237
    .end local v8    # "_result":I
    :sswitch_1ab
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 240
    .restart local v6    # "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->getPhoneId(J)I

    move-result v8

    .line 241
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 247
    .end local v6    # "_arg0":J
    .end local v8    # "_result":I
    :sswitch_1c1
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultDataSubId()J

    move-result-wide v8

    .line 249
    .local v8, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 251
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 255
    .end local v8    # "_result":J
    :sswitch_1d3
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 258
    .restart local v6    # "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultDataSubId(J)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 264
    .end local v6    # "_arg0":J
    :sswitch_1e5
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 267
    .restart local v6    # "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultDataSubIdForMMS(J)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 273
    .end local v6    # "_arg0":J
    :sswitch_1f7
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultVoiceSubId()J

    move-result-wide v8

    .line 275
    .restart local v8    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 277
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 281
    .end local v8    # "_result":J
    :sswitch_209
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 284
    .restart local v6    # "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultVoiceSubId(J)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 290
    .end local v6    # "_arg0":J
    :sswitch_21b
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSmsSubId()J

    move-result-wide v8

    .line 292
    .restart local v8    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 294
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 298
    .end local v8    # "_result":J
    :sswitch_22d
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 301
    .restart local v6    # "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultSmsSubId(J)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 307
    .end local v6    # "_arg0":J
    :sswitch_23f
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->clearDefaultsForInactiveSubIds()V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 314
    :sswitch_24d
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubIdList()[J

    move-result-object v8

    .line 316
    .local v8, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 318
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 322
    .end local v8    # "_result":[J
    :sswitch_25f
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->isSMSPromptEnabled()Z

    move-result v8

    .line 324
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    if-eqz v8, :cond_274

    const/4 v0, 0x1

    :goto_26e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 325
    :cond_274
    const/4 v0, 0x0

    goto :goto_26e

    .line 330
    .end local v8    # "_result":Z
    :sswitch_276
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28b

    const/4 v1, 0x1

    .line 333
    .local v1, "_arg0":Z
    :goto_282
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setSMSPromptEnabled(Z)V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 332
    .end local v1    # "_arg0":Z
    :cond_28b
    const/4 v1, 0x0

    goto :goto_282

    .line 339
    :sswitch_28d
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->isVoicePromptEnabled()Z

    move-result v8

    .line 341
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    if-eqz v8, :cond_2a2

    const/4 v0, 0x1

    :goto_29c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 342
    :cond_2a2
    const/4 v0, 0x0

    goto :goto_29c

    .line 347
    .end local v8    # "_result":Z
    :sswitch_2a4
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b9

    const/4 v1, 0x1

    .line 350
    .restart local v1    # "_arg0":Z
    :goto_2b0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setVoicePromptEnabled(Z)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 349
    .end local v1    # "_arg0":Z
    :cond_2b9
    const/4 v1, 0x0

    goto :goto_2b0

    .line 356
    :sswitch_2bb
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 359
    .restart local v6    # "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->activateSubId(J)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 365
    .end local v6    # "_arg0":J
    :sswitch_2cd
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 368
    .restart local v6    # "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->deactivateSubId(J)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 374
    .end local v6    # "_arg0":J
    :sswitch_2df
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 378
    .restart local v6    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 379
    .local v2, "_arg1":I
    invoke-virtual {p0, v6, v7, v2}, Lcom/android/internal/telephony/ISub$Stub;->setSubState(JI)I

    move-result v8

    .line 380
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 386
    .end local v2    # "_arg1":I
    .end local v6    # "_arg0":J
    .end local v8    # "_result":I
    :sswitch_2f9
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 389
    .restart local v6    # "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->getSubState(J)I

    move-result v8

    .line 390
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 38
    nop

    :sswitch_data_310
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_30
        0x3 -> :sswitch_45
        0x4 -> :sswitch_5a
        0x5 -> :sswitch_6b
        0x6 -> :sswitch_7c
        0x7 -> :sswitch_8e
        0x8 -> :sswitch_a0
        0x9 -> :sswitch_ba
        0xa -> :sswitch_d4
        0xb -> :sswitch_ee
        0xc -> :sswitch_10d
        0xd -> :sswitch_127
        0xe -> :sswitch_141
        0xf -> :sswitch_15b
        0x10 -> :sswitch_171
        0x11 -> :sswitch_187
        0x12 -> :sswitch_199
        0x13 -> :sswitch_1ab
        0x14 -> :sswitch_1c1
        0x15 -> :sswitch_1d3
        0x16 -> :sswitch_1e5
        0x17 -> :sswitch_1f7
        0x18 -> :sswitch_209
        0x19 -> :sswitch_21b
        0x1a -> :sswitch_22d
        0x1b -> :sswitch_23f
        0x1c -> :sswitch_24d
        0x1d -> :sswitch_25f
        0x1e -> :sswitch_276
        0x1f -> :sswitch_28d
        0x20 -> :sswitch_2a4
        0x21 -> :sswitch_2bb
        0x22 -> :sswitch_2cd
        0x23 -> :sswitch_2df
        0x24 -> :sswitch_2f9
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
