.class public abstract Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.super Landroid/os/Binder;
.source "IPhoneSubInfo.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneSubInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneSubInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneSubInfo"

.field static final TRANSACTION_getBtid:I = 0x30

.field static final TRANSACTION_getCompleteVoiceMailNumber:I = 0x13

.field static final TRANSACTION_getCompleteVoiceMailNumberForSubscriber:I = 0x14

.field static final TRANSACTION_getDeviceId:I = 0x1

.field static final TRANSACTION_getDeviceIdForSubscriber:I = 0x2

.field static final TRANSACTION_getDeviceSvn:I = 0x4

.field static final TRANSACTION_getDrxValue:I = 0x27

.field static final TRANSACTION_getGroupIdLevel1:I = 0x7

.field static final TRANSACTION_getGroupIdLevel1ForSubscriber:I = 0x8

.field static final TRANSACTION_getIccSerialNumber:I = 0x9

.field static final TRANSACTION_getIccSerialNumberForSubscriber:I = 0xa

.field static final TRANSACTION_getIccSimChallengeResponse:I = 0x1d

.field static final TRANSACTION_getImeiForSubscriber:I = 0x3

.field static final TRANSACTION_getImsRegisteredFeature:I = 0x24

.field static final TRANSACTION_getIsimAid:I = 0x2e

.field static final TRANSACTION_getIsimChallengeResponse:I = 0x1c

.field static final TRANSACTION_getIsimDomain:I = 0x18

.field static final TRANSACTION_getIsimImpi:I = 0x17

.field static final TRANSACTION_getIsimImpu:I = 0x19

.field static final TRANSACTION_getIsimIst:I = 0x1a

.field static final TRANSACTION_getIsimPcscf:I = 0x1b

.field static final TRANSACTION_getKeyLifetime:I = 0x31

.field static final TRANSACTION_getLine1AlphaTag:I = 0xd

.field static final TRANSACTION_getLine1AlphaTagForSubscriber:I = 0xe

.field static final TRANSACTION_getLine1Number:I = 0xb

.field static final TRANSACTION_getLine1NumberForSubscriber:I = 0xc

.field static final TRANSACTION_getLine1NumberType:I = 0x2c

.field static final TRANSACTION_getMsisdn:I = 0xf

.field static final TRANSACTION_getMsisdnForSubscriber:I = 0x10

.field static final TRANSACTION_getPsismsc:I = 0x20

.field static final TRANSACTION_getRand:I = 0x2f

.field static final TRANSACTION_getReducedCycleTime:I = 0x29

.field static final TRANSACTION_getSktImsiM:I = 0x2a

.field static final TRANSACTION_getSktIrm:I = 0x2b

.field static final TRANSACTION_getSponImsi:I = 0x32

.field static final TRANSACTION_getSubscriberId:I = 0x5

.field static final TRANSACTION_getSubscriberIdForSubscriber:I = 0x6

.field static final TRANSACTION_getSubscriberIdType:I = 0x2d

.field static final TRANSACTION_getVoiceMailAlphaTag:I = 0x15

.field static final TRANSACTION_getVoiceMailAlphaTagForSubscriber:I = 0x16

.field static final TRANSACTION_getVoiceMailNumber:I = 0x11

.field static final TRANSACTION_getVoiceMailNumberForSubscriber:I = 0x12

.field static final TRANSACTION_hasCall:I = 0x25

.field static final TRANSACTION_hasIsim:I = 0x1f

.field static final TRANSACTION_isGbaSupported:I = 0x1e

.field static final TRANSACTION_isImsRegistered:I = 0x21

.field static final TRANSACTION_isVolteRegistered:I = 0x22

.field static final TRANSACTION_isWfcRegistered:I = 0x23

.field static final TRANSACTION_setDrxMode:I = 0x26

.field static final TRANSACTION_setPcoValue:I = 0x33

.field static final TRANSACTION_setReducedCycleTime:I = 0x28


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
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

    .line 42
    sparse-switch p1, :sswitch_data_3d6

    .line 499
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 46
    :sswitch_a
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 51
    :sswitch_10
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 59
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_20
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 62
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceIdForSubscriber(J)Ljava/lang/String;

    move-result-object v4

    .line 63
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 69
    .end local v0    # "_arg0":J
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_34
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 72
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getImeiForSubscriber(J)Ljava/lang/String;

    move-result-object v4

    .line 73
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 79
    .end local v0    # "_arg0":J
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_48
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceSvn()Ljava/lang/String;

    move-result-object v4

    .line 81
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 87
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_58
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 89
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 95
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_68
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 98
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberIdForSubscriber(J)Ljava/lang/String;

    move-result-object v4

    .line 99
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 105
    .end local v0    # "_arg0":J
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_7c
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v4

    .line 107
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 113
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_8d
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 116
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getGroupIdLevel1ForSubscriber(J)Ljava/lang/String;

    move-result-object v4

    .line 117
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 123
    .end local v0    # "_arg0":J
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_a2
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v4

    .line 125
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 131
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_b3
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 134
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumberForSubscriber(J)Ljava/lang/String;

    move-result-object v4

    .line 135
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 141
    .end local v0    # "_arg0":J
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_c8
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    .line 143
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 149
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_d9
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 152
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1NumberForSubscriber(J)Ljava/lang/String;

    move-result-object v4

    .line 153
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 159
    .end local v0    # "_arg0":J
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_ee
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v4

    .line 161
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 167
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_ff
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 170
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTagForSubscriber(J)Ljava/lang/String;

    move-result-object v4

    .line 171
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 177
    .end local v0    # "_arg0":J
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_114
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    .line 179
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 185
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_125
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 188
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMsisdnForSubscriber(J)Ljava/lang/String;

    move-result-object v4

    .line 189
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 195
    .end local v0    # "_arg0":J
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_13a
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v4

    .line 197
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 203
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_14b
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 206
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumberForSubscriber(J)Ljava/lang/String;

    move-result-object v4

    .line 207
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 213
    .end local v0    # "_arg0":J
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_160
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v4

    .line 215
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 221
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_171
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 224
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getCompleteVoiceMailNumberForSubscriber(J)Ljava/lang/String;

    move-result-object v4

    .line 225
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 231
    .end local v0    # "_arg0":J
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_186
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v4

    .line 233
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 239
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_197
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 242
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTagForSubscriber(J)Ljava/lang/String;

    move-result-object v4

    .line 243
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 249
    .end local v0    # "_arg0":J
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_1ac
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpi()Ljava/lang/String;

    move-result-object v4

    .line 251
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 257
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_1bd
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimDomain()Ljava/lang/String;

    move-result-object v4

    .line 259
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 265
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_1ce
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpu()[Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 273
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_1df
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimIst()Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 281
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_1f0
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 289
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_201
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 299
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_216
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 303
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 305
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSimChallengeResponse(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 307
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 313
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_233
    const-string v7, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->isGbaSupported()Z

    move-result v4

    .line 315
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v4, :cond_242

    move v5, v6

    :cond_242
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 321
    .end local v4    # "_result":Z
    :sswitch_247
    const-string v7, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->hasIsim()Z

    move-result v4

    .line 323
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    if-eqz v4, :cond_256

    move v5, v6

    :cond_256
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 329
    .end local v4    # "_result":Z
    :sswitch_25b
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getPsismsc()[B

    move-result-object v4

    .line 331
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 337
    .end local v4    # "_result":[B
    :sswitch_26c
    const-string v7, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->isImsRegistered()Z

    move-result v4

    .line 339
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    if-eqz v4, :cond_27b

    move v5, v6

    :cond_27b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 345
    .end local v4    # "_result":Z
    :sswitch_280
    const-string v7, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->isVolteRegistered()Z

    move-result v4

    .line 347
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v4, :cond_28f

    move v5, v6

    :cond_28f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 353
    .end local v4    # "_result":Z
    :sswitch_294
    const-string v7, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->isWfcRegistered()Z

    move-result v4

    .line 355
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    if-eqz v4, :cond_2a3

    move v5, v6

    :cond_2a3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 361
    .end local v4    # "_result":Z
    :sswitch_2a8
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getImsRegisteredFeature()I

    move-result v4

    .line 363
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 369
    .end local v4    # "_result":I
    :sswitch_2b9
    const-string v7, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->hasCall(Ljava/lang/String;)Z

    move-result v4

    .line 373
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v4, :cond_2cc

    move v5, v6

    :cond_2cc
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 379
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_2d1
    const-string v7, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 382
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setDrxMode(I)Z

    move-result v4

    .line 383
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v4, :cond_2e4

    move v5, v6

    :cond_2e4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 389
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_2e9
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDrxValue()I

    move-result v4

    .line 391
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 397
    .end local v4    # "_result":I
    :sswitch_2fa
    const-string v7, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 400
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setReducedCycleTime(I)Z

    move-result v4

    .line 401
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    if-eqz v4, :cond_30d

    move v5, v6

    :cond_30d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 407
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_312
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getReducedCycleTime()I

    move-result v4

    .line 409
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 415
    .end local v4    # "_result":I
    :sswitch_323
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSktImsiM()Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 423
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_334
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSktIrm()Ljava/lang/String;

    move-result-object v4

    .line 425
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 431
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_345
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 434
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1NumberType(I)Ljava/lang/String;

    move-result-object v4

    .line 435
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 441
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_35a
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 444
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberIdType(I)Ljava/lang/String;

    move-result-object v4

    .line 445
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 451
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_36f
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimAid()Ljava/lang/String;

    move-result-object v4

    .line 453
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 459
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_380
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getRand()[B

    move-result-object v4

    .line 461
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 467
    .end local v4    # "_result":[B
    :sswitch_391
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getBtid()Ljava/lang/String;

    move-result-object v4

    .line 469
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 475
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_3a2
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getKeyLifetime()Ljava/lang/String;

    move-result-object v4

    .line 477
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 483
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_3b3
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSponImsi()[Ljava/lang/String;

    move-result-object v4

    .line 485
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 491
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_3c4
    const-string v5, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 494
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setPcoValue(I)V

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 42
    nop

    :sswitch_data_3d6
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_34
        0x4 -> :sswitch_48
        0x5 -> :sswitch_58
        0x6 -> :sswitch_68
        0x7 -> :sswitch_7c
        0x8 -> :sswitch_8d
        0x9 -> :sswitch_a2
        0xa -> :sswitch_b3
        0xb -> :sswitch_c8
        0xc -> :sswitch_d9
        0xd -> :sswitch_ee
        0xe -> :sswitch_ff
        0xf -> :sswitch_114
        0x10 -> :sswitch_125
        0x11 -> :sswitch_13a
        0x12 -> :sswitch_14b
        0x13 -> :sswitch_160
        0x14 -> :sswitch_171
        0x15 -> :sswitch_186
        0x16 -> :sswitch_197
        0x17 -> :sswitch_1ac
        0x18 -> :sswitch_1bd
        0x19 -> :sswitch_1ce
        0x1a -> :sswitch_1df
        0x1b -> :sswitch_1f0
        0x1c -> :sswitch_201
        0x1d -> :sswitch_216
        0x1e -> :sswitch_233
        0x1f -> :sswitch_247
        0x20 -> :sswitch_25b
        0x21 -> :sswitch_26c
        0x22 -> :sswitch_280
        0x23 -> :sswitch_294
        0x24 -> :sswitch_2a8
        0x25 -> :sswitch_2b9
        0x26 -> :sswitch_2d1
        0x27 -> :sswitch_2e9
        0x28 -> :sswitch_2fa
        0x29 -> :sswitch_312
        0x2a -> :sswitch_323
        0x2b -> :sswitch_334
        0x2c -> :sswitch_345
        0x2d -> :sswitch_35a
        0x2e -> :sswitch_36f
        0x2f -> :sswitch_380
        0x30 -> :sswitch_391
        0x31 -> :sswitch_3a2
        0x32 -> :sswitch_3b3
        0x33 -> :sswitch_3c4
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
