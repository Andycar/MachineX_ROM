.class public abstract Landroid/ktuca/IKtUcaIF$Stub;
.super Landroid/os/Binder;
.source "IKtUcaIF.java"

# interfaces
.implements Landroid/ktuca/IKtUcaIF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ktuca/IKtUcaIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ktuca/IKtUcaIF$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.ktuca.IKtUcaIF"

.field static final TRANSACTION_KUCA_CHInit:I = 0x13

.field static final TRANSACTION_KUCA_Close:I = 0x10

.field static final TRANSACTION_KUCA_CloseT:I = 0x19

.field static final TRANSACTION_KUCA_KUH_Establish:I = 0x15

.field static final TRANSACTION_KUCA_KUH_Release:I = 0x16

.field static final TRANSACTION_KUCA_KUH_Transmit:I = 0x17

.field static final TRANSACTION_KUCA_Open:I = 0xe

.field static final TRANSACTION_KUCA_OpenT:I = 0x18

.field static final TRANSACTION_KUCA_Transmit:I = 0xf

.field static final TRANSACTION_KUCA_UCAVersion:I = 0x12

.field static final TRANSACTION_KUCA_getHandle:I = 0x3

.field static final TRANSACTION_KUCA_getICCID:I = 0x6

.field static final TRANSACTION_KUCA_getIMSI:I = 0x5

.field static final TRANSACTION_KUCA_getMDN:I = 0x8

.field static final TRANSACTION_KUCA_getMODEL:I = 0x9

.field static final TRANSACTION_KUCA_getMSISDN:I = 0x4

.field static final TRANSACTION_KUCA_getPUID:I = 0x7

.field static final TRANSACTION_KUCA_getPinStatus:I = 0xc

.field static final TRANSACTION_KUCA_getSIMInfo:I = 0xa

.field static final TRANSACTION_KUCA_getSimStatus:I = 0x11

.field static final TRANSACTION_KUCA_printCHInfo:I = 0x14

.field static final TRANSACTION_KUCA_usimAUTH:I = 0xb

.field static final TRANSACTION_KUCA_verifyPin:I = 0xd

.field static final TRANSACTION_getResource:I = 0x1

.field static final TRANSACTION_releaseResource:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p0, p0, v0}, Landroid/ktuca/IKtUcaIF$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/ktuca/IKtUcaIF;
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
    const-string v1, "android.ktuca.IKtUcaIF"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/ktuca/IKtUcaIF;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/ktuca/IKtUcaIF;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/ktuca/IKtUcaIF$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 17
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
    sparse-switch p1, :sswitch_data_454

    .line 645
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 42
    :sswitch_8
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_7

    .line 47
    :sswitch_f
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/ktuca/IKtUcaIF$Stub;->getResource()I

    move-result v10

    .line 49
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    const/4 v0, 0x1

    goto :goto_7

    .line 55
    .end local v10    # "_result":I
    :sswitch_20
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/ktuca/IKtUcaIF$Stub;->releaseResource()I

    move-result v10

    .line 57
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v0, 0x1

    goto :goto_7

    .line 63
    .end local v10    # "_result":I
    :sswitch_31
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 67
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 69
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 71
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 73
    .local v4, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .local v5, "_arg4":[I
    move-object v0, p0

    .line 74
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getHandle([B[B[B[B[I)J

    move-result-wide v10

    .line 75
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 78
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 79
    const/4 v0, 0x1

    goto :goto_7

    .line 83
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[I
    .end local v10    # "_result":J
    :sswitch_5d
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 87
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 88
    .local v6, "_arg1_length":I
    if-gez v6, :cond_90

    .line 89
    const/4 v2, 0x0

    .line 95
    .restart local v2    # "_arg1":[B
    :goto_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 96
    .local v7, "_arg2_length":I
    if-gez v7, :cond_93

    .line 97
    const/4 v3, 0x0

    .line 103
    .local v3, "_arg2":[I
    :goto_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 105
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, "_arg4":[B
    move-object v0, p0

    .line 106
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMSISDN([B[B[II[B)J

    move-result-wide v10

    .line 107
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 110
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 111
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 92
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_90
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_6d

    .line 100
    .restart local v7    # "_arg2_length":I
    :cond_93
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_74

    .line 115
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_96
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 119
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 120
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_c9

    .line 121
    const/4 v2, 0x0

    .line 127
    .restart local v2    # "_arg1":[B
    :goto_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 128
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_cc

    .line 129
    const/4 v3, 0x0

    .line 135
    .restart local v3    # "_arg2":[I
    :goto_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 137
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5    # "_arg4":[B
    move-object v0, p0

    .line 138
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getIMSI([B[B[II[B)J

    move-result-wide v10

    .line 139
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 142
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 143
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 124
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_c9
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_a6

    .line 132
    .restart local v7    # "_arg2_length":I
    :cond_cc
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_ad

    .line 147
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_cf
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 151
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 152
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_102

    .line 153
    const/4 v2, 0x0

    .line 159
    .restart local v2    # "_arg1":[B
    :goto_df
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 160
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_105

    .line 161
    const/4 v3, 0x0

    .line 167
    .restart local v3    # "_arg2":[I
    :goto_e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 169
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5    # "_arg4":[B
    move-object v0, p0

    .line 170
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getICCID([B[B[II[B)J

    move-result-wide v10

    .line 171
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 173
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 174
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 175
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 156
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_102
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_df

    .line 164
    .restart local v7    # "_arg2_length":I
    :cond_105
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_e6

    .line 179
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_108
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 183
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 184
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_13b

    .line 185
    const/4 v2, 0x0

    .line 191
    .restart local v2    # "_arg1":[B
    :goto_118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 192
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_13e

    .line 193
    const/4 v3, 0x0

    .line 199
    .restart local v3    # "_arg2":[I
    :goto_11f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 201
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5    # "_arg4":[B
    move-object v0, p0

    .line 202
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getPUID([B[B[II[B)J

    move-result-wide v10

    .line 203
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 205
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 206
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 207
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 188
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_13b
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_118

    .line 196
    .restart local v7    # "_arg2_length":I
    :cond_13e
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_11f

    .line 211
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_141
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 215
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 216
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_174

    .line 217
    const/4 v2, 0x0

    .line 223
    .restart local v2    # "_arg1":[B
    :goto_151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 224
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_177

    .line 225
    const/4 v3, 0x0

    .line 231
    .restart local v3    # "_arg2":[I
    :goto_158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 233
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5    # "_arg4":[B
    move-object v0, p0

    .line 234
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMDN([B[B[II[B)J

    move-result-wide v10

    .line 235
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 237
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 238
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 239
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 220
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_174
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_151

    .line 228
    .restart local v7    # "_arg2_length":I
    :cond_177
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_158

    .line 243
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_17a
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 247
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 248
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_1ad

    .line 249
    const/4 v2, 0x0

    .line 255
    .restart local v2    # "_arg1":[B
    :goto_18a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 256
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_1b0

    .line 257
    const/4 v3, 0x0

    .line 263
    .restart local v3    # "_arg2":[I
    :goto_191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 265
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5    # "_arg4":[B
    move-object v0, p0

    .line 266
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMODEL([B[B[II[B)J

    move-result-wide v10

    .line 267
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 269
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 270
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 271
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 252
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[B
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_1ad
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_18a

    .line 260
    .restart local v7    # "_arg2_length":I
    :cond_1b0
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_191

    .line 275
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_1b3
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 279
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 280
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_1dd

    .line 281
    const/4 v2, 0x0

    .line 287
    .restart local v2    # "_arg1":[B
    :goto_1c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 288
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_1e0

    .line 289
    const/4 v3, 0x0

    .line 294
    .restart local v3    # "_arg2":[I
    :goto_1ca
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getSIMInfo([B[B[I)J

    move-result-wide v10

    .line 295
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 297
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 298
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 299
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 284
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_1dd
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_1c3

    .line 292
    .restart local v7    # "_arg2_length":I
    :cond_1e0
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_1ca

    .line 303
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_1e3
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 307
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 309
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 311
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 312
    .local v8, "_arg3_length":I
    if-gez v8, :cond_216

    .line 313
    const/4 v4, 0x0

    .line 319
    .local v4, "_arg3":[B
    :goto_1fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 320
    .local v9, "_arg4_length":I
    if-gez v9, :cond_219

    .line 321
    const/4 v5, 0x0

    .local v5, "_arg4":[I
    :goto_202
    move-object v0, p0

    .line 326
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_usimAUTH([B[B[B[B[I)J

    move-result-wide v10

    .line 327
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 329
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 330
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 331
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 316
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[I
    .end local v9    # "_arg4_length":I
    .end local v10    # "_result":J
    :cond_216
    new-array v4, v8, [B

    .restart local v4    # "_arg3":[B
    goto :goto_1fb

    .line 324
    .restart local v9    # "_arg4_length":I
    :cond_219
    new-array v5, v9, [I

    .restart local v5    # "_arg4":[I
    goto :goto_202

    .line 335
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[I
    .end local v8    # "_arg3_length":I
    .end local v9    # "_arg4_length":I
    :sswitch_21c
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 339
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 341
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 342
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_24a

    .line 343
    const/4 v3, 0x0

    .line 349
    .restart local v3    # "_arg2":[B
    :goto_230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 350
    .restart local v8    # "_arg3_length":I
    if-gez v8, :cond_24d

    .line 351
    const/4 v4, 0x0

    .line 356
    .local v4, "_arg3":[I
    :goto_237
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getPinStatus([BI[B[I)J

    move-result-wide v10

    .line 357
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 359
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 360
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 361
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 346
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[I
    .end local v8    # "_arg3_length":I
    .end local v10    # "_result":J
    :cond_24a
    new-array v3, v7, [B

    .restart local v3    # "_arg2":[B
    goto :goto_230

    .line 354
    .restart local v8    # "_arg3_length":I
    :cond_24d
    new-array v4, v8, [I

    .restart local v4    # "_arg3":[I
    goto :goto_237

    .line 365
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[I
    .end local v7    # "_arg2_length":I
    .end local v8    # "_arg3_length":I
    :sswitch_250
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 369
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 371
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 374
    .restart local v8    # "_arg3_length":I
    if-gez v8, :cond_283

    .line 375
    const/4 v4, 0x0

    .line 381
    .local v4, "_arg3":[B
    :goto_268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 382
    .restart local v9    # "_arg4_length":I
    if-gez v9, :cond_286

    .line 383
    const/4 v5, 0x0

    .restart local v5    # "_arg4":[I
    :goto_26f
    move-object v0, p0

    .line 388
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_verifyPin([BILjava/lang/String;[B[I)J

    move-result-wide v10

    .line 389
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 391
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 392
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 393
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 378
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[I
    .end local v9    # "_arg4_length":I
    .end local v10    # "_result":J
    :cond_283
    new-array v4, v8, [B

    .restart local v4    # "_arg3":[B
    goto :goto_268

    .line 386
    .restart local v9    # "_arg4_length":I
    :cond_286
    new-array v5, v9, [I

    .restart local v5    # "_arg4":[I
    goto :goto_26f

    .line 397
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[I
    .end local v8    # "_arg3_length":I
    .end local v9    # "_arg4_length":I
    :sswitch_289
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 401
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 402
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_2b3

    .line 403
    const/4 v2, 0x0

    .line 409
    .local v2, "_arg1":[B
    :goto_299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 410
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_2b6

    .line 411
    const/4 v3, 0x0

    .line 416
    .local v3, "_arg2":[I
    :goto_2a0
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Open([B[B[I)J

    move-result-wide v10

    .line 417
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 419
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 420
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 421
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 406
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_2b3
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_299

    .line 414
    .restart local v7    # "_arg2_length":I
    :cond_2b6
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_2a0

    .line 425
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_2b9
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 429
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 431
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 433
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 434
    .restart local v8    # "_arg3_length":I
    if-gez v8, :cond_2ec

    .line 435
    const/4 v4, 0x0

    .line 441
    .restart local v4    # "_arg3":[B
    :goto_2d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 442
    .restart local v9    # "_arg4_length":I
    if-gez v9, :cond_2ef

    .line 443
    const/4 v5, 0x0

    .restart local v5    # "_arg4":[I
    :goto_2d8
    move-object v0, p0

    .line 448
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Transmit([B[BI[B[I)J

    move-result-wide v10

    .line 449
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 451
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 452
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 453
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 438
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[I
    .end local v9    # "_arg4_length":I
    .end local v10    # "_result":J
    :cond_2ec
    new-array v4, v8, [B

    .restart local v4    # "_arg3":[B
    goto :goto_2d1

    .line 446
    .restart local v9    # "_arg4_length":I
    :cond_2ef
    new-array v5, v9, [I

    .restart local v5    # "_arg4":[I
    goto :goto_2d8

    .line 457
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[I
    .end local v8    # "_arg3_length":I
    .end local v9    # "_arg4_length":I
    :sswitch_2f2
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 461
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 462
    .local v2, "_arg1":B
    invoke-virtual {p0, v1, v2}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Close([BB)J

    move-result-wide v10

    .line 463
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 465
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 469
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":B
    .end local v10    # "_result":J
    :sswitch_30c
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 473
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 474
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_32c

    .line 475
    const/4 v2, 0x0

    .line 480
    .local v2, "_arg1":[B
    :goto_31c
    invoke-virtual {p0, v1, v2}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getSimStatus([B[B)J

    move-result-wide v10

    .line 481
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 483
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 484
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 478
    .end local v2    # "_arg1":[B
    .end local v10    # "_result":J
    :cond_32c
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_31c

    .line 488
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v6    # "_arg1_length":I
    :sswitch_32f
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 492
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 493
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_359

    .line 494
    const/4 v2, 0x0

    .line 500
    .restart local v2    # "_arg1":[B
    :goto_33f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 501
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_35c

    .line 502
    const/4 v3, 0x0

    .line 507
    .local v3, "_arg2":[I
    :goto_346
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_UCAVersion([B[B[I)J

    move-result-wide v10

    .line 508
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 510
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 511
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 512
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 497
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_359
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_33f

    .line 505
    .restart local v7    # "_arg2_length":I
    :cond_35c
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_346

    .line 516
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_35f
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 520
    .local v1, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 521
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_389

    .line 522
    const/4 v2, 0x0

    .line 528
    .restart local v2    # "_arg1":[B
    :goto_36f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 529
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_38c

    .line 530
    const/4 v3, 0x0

    .line 535
    .restart local v3    # "_arg2":[I
    :goto_376
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_CHInit(B[B[I)J

    move-result-wide v10

    .line 536
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 538
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 539
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 540
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 525
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_389
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_36f

    .line 533
    .restart local v7    # "_arg2_length":I
    :cond_38c
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_376

    .line 544
    .end local v1    # "_arg0":B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_38f
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 547
    .restart local v1    # "_arg0":B
    invoke-virtual {p0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_printCHInfo(B)J

    move-result-wide v10

    .line 548
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 550
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 554
    .end local v1    # "_arg0":B
    .end local v10    # "_result":J
    :sswitch_3a5
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 557
    .restart local v1    # "_arg0":B
    invoke-virtual {p0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Establish(B)J

    move-result-wide v10

    .line 558
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 560
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 564
    .end local v1    # "_arg0":B
    .end local v10    # "_result":J
    :sswitch_3bb
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 567
    .restart local v1    # "_arg0":B
    invoke-virtual {p0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Release(B)J

    move-result-wide v10

    .line 568
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 570
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 574
    .end local v1    # "_arg0":B
    .end local v10    # "_result":J
    :sswitch_3d1
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 578
    .restart local v1    # "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 580
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 582
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 583
    .restart local v8    # "_arg3_length":I
    if-gez v8, :cond_404

    .line 584
    const/4 v4, 0x0

    .line 590
    .restart local v4    # "_arg3":[B
    :goto_3e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 591
    .restart local v9    # "_arg4_length":I
    if-gez v9, :cond_407

    .line 592
    const/4 v5, 0x0

    .restart local v5    # "_arg4":[I
    :goto_3f0
    move-object v0, p0

    .line 597
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Transmit(B[BI[B[I)J

    move-result-wide v10

    .line 598
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 600
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 601
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 602
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 587
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[I
    .end local v9    # "_arg4_length":I
    .end local v10    # "_result":J
    :cond_404
    new-array v4, v8, [B

    .restart local v4    # "_arg3":[B
    goto :goto_3e9

    .line 595
    .restart local v9    # "_arg4_length":I
    :cond_407
    new-array v5, v9, [I

    .restart local v5    # "_arg4":[I
    goto :goto_3f0

    .line 606
    .end local v1    # "_arg0":B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[I
    .end local v8    # "_arg3_length":I
    .end local v9    # "_arg4_length":I
    :sswitch_40a
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 610
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 611
    .restart local v6    # "_arg1_length":I
    if-gez v6, :cond_434

    .line 612
    const/4 v2, 0x0

    .line 618
    .restart local v2    # "_arg1":[B
    :goto_41a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 619
    .restart local v7    # "_arg2_length":I
    if-gez v7, :cond_437

    .line 620
    const/4 v3, 0x0

    .line 625
    .local v3, "_arg2":[I
    :goto_421
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_OpenT([B[B[I)J

    move-result-wide v10

    .line 626
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 628
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 629
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 630
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 615
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v7    # "_arg2_length":I
    .end local v10    # "_result":J
    :cond_434
    new-array v2, v6, [B

    .restart local v2    # "_arg1":[B
    goto :goto_41a

    .line 623
    .restart local v7    # "_arg2_length":I
    :cond_437
    new-array v3, v7, [I

    .restart local v3    # "_arg2":[I
    goto :goto_421

    .line 634
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[I
    .end local v6    # "_arg1_length":I
    .end local v7    # "_arg2_length":I
    :sswitch_43a
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 638
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 639
    .local v2, "_arg1":B
    invoke-virtual {p0, v1, v2}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_CloseT([BB)J

    move-result-wide v10

    .line 640
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 642
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 38
    :sswitch_data_454
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x3 -> :sswitch_31
        0x4 -> :sswitch_5d
        0x5 -> :sswitch_96
        0x6 -> :sswitch_cf
        0x7 -> :sswitch_108
        0x8 -> :sswitch_141
        0x9 -> :sswitch_17a
        0xa -> :sswitch_1b3
        0xb -> :sswitch_1e3
        0xc -> :sswitch_21c
        0xd -> :sswitch_250
        0xe -> :sswitch_289
        0xf -> :sswitch_2b9
        0x10 -> :sswitch_2f2
        0x11 -> :sswitch_30c
        0x12 -> :sswitch_32f
        0x13 -> :sswitch_35f
        0x14 -> :sswitch_38f
        0x15 -> :sswitch_3a5
        0x16 -> :sswitch_3bb
        0x17 -> :sswitch_3d1
        0x18 -> :sswitch_40a
        0x19 -> :sswitch_43a
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
