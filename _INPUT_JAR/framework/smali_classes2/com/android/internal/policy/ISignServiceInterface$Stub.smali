.class public abstract Lcom/android/internal/policy/ISignServiceInterface$Stub;
.super Landroid/os/Binder;
.source "ISignServiceInterface.java"

# interfaces
.implements Lcom/android/internal/policy/ISignServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/ISignServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/ISignServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.ISignServiceInterface"

.field static final TRANSACTION_addOnePoint:I = 0x5

.field static final TRANSACTION_addSignatureModel:I = 0xe

.field static final TRANSACTION_checkSignatureData:I = 0x17

.field static final TRANSACTION_delUser:I = 0xb

.field static final TRANSACTION_endOneStroke:I = 0x6

.field static final TRANSACTION_endWriting:I = 0x4

.field static final TRANSACTION_getEngineStatus:I = 0x2

.field static final TRANSACTION_getEngineWorkStatus:I = 0x1a

.field static final TRANSACTION_getModelNum:I = 0xd

.field static final TRANSACTION_getOriginalPointsPath:I = 0x18

.field static final TRANSACTION_getRegisterViewH:I = 0x16

.field static final TRANSACTION_getRegisterViewW:I = 0x15

.field static final TRANSACTION_getRegisterViewX:I = 0x13

.field static final TRANSACTION_getRegisterViewY:I = 0x14

.field static final TRANSACTION_initEngine:I = 0x1

.field static final TRANSACTION_isPenDown:I = 0xa

.field static final TRANSACTION_isUsingOldData:I = 0x1b

.field static final TRANSACTION_isWriting:I = 0x9

.field static final TRANSACTION_readSignatureData:I = 0x10

.field static final TRANSACTION_replaceSignatureData:I = 0x11

.field static final TRANSACTION_reset:I = 0x7

.field static final TRANSACTION_saveSignatureData:I = 0xf

.field static final TRANSACTION_setEngineStatus:I = 0x19

.field static final TRANSACTION_setPointZero:I = 0x8

.field static final TRANSACTION_setRegisterViewXY:I = 0x12

.field static final TRANSACTION_startWriting:I = 0x3

.field static final TRANSACTION_verify:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/ISignServiceInterface;
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
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/policy/ISignServiceInterface;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/android/internal/policy/ISignServiceInterface;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/android/internal/policy/ISignServiceInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_21e

    .line 297
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 43
    :sswitch_a
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v8, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->initEngine()Z

    move-result v0

    .line 50
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v0, :cond_1f

    move v1, v7

    :cond_1f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 56
    .end local v0    # "_result":Z
    :sswitch_23
    const-string v8, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getEngineStatus()Z

    move-result v0

    .line 58
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v0, :cond_32

    move v1, v7

    :cond_32
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 64
    .end local v0    # "_result":Z
    :sswitch_36
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 68
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 69
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->startWriting(II)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 75
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_4a
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->endWriting()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 82
    :sswitch_56
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 86
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 88
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 90
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg3":I
    move-object v1, p0

    .line 91
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->addOnePoint(IIJI)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 97
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":J
    .end local v6    # "_arg3":I
    :sswitch_73
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->endOneStroke()V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 104
    :sswitch_7f
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->reset()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 111
    :sswitch_8c
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->setPointZero()V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 118
    :sswitch_99
    const-string v8, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->isWriting()Z

    move-result v0

    .line 120
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v0, :cond_a8

    move v1, v7

    :cond_a8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 126
    .end local v0    # "_result":Z
    :sswitch_ad
    const-string v8, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->isPenDown()Z

    move-result v0

    .line 128
    .restart local v0    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v0, :cond_bc

    move v1, v7

    :cond_bc
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 134
    .end local v0    # "_result":Z
    :sswitch_c1
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->delUser(I)I

    move-result v0

    .line 138
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 144
    .end local v0    # "_result":I
    .end local v2    # "_arg0":I
    :sswitch_d6
    const-string v8, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 150
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_f6

    move v4, v7

    .line 151
    .local v4, "_arg2":Z
    :goto_ea
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->verify(IIZ)I

    move-result v0

    .line 152
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_result":I
    .end local v4    # "_arg2":Z
    :cond_f6
    move v4, v1

    .line 150
    goto :goto_ea

    .line 158
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_f8
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getModelNum(I)I

    move-result v0

    .line 162
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 168
    .end local v0    # "_result":I
    .end local v2    # "_arg0":I
    :sswitch_10d
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->addSignatureModel(I)I

    move-result v0

    .line 172
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 178
    .end local v0    # "_result":I
    .end local v2    # "_arg0":I
    :sswitch_122
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->saveSignatureData()I

    move-result v0

    .line 180
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 186
    .end local v0    # "_result":I
    :sswitch_133
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->readSignatureData(Ljava/lang/String;)I

    move-result v0

    .line 190
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 196
    .end local v0    # "_result":I
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_148
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->replaceSignatureData()I

    move-result v0

    .line 198
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 204
    .end local v0    # "_result":I
    :sswitch_159
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 210
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 212
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 213
    .restart local v6    # "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->setRegisterViewXY(IIII)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 219
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v6    # "_arg3":I
    :sswitch_176
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getRegisterViewX()I

    move-result v0

    .line 221
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 227
    .end local v0    # "_result":I
    :sswitch_187
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getRegisterViewY()I

    move-result v0

    .line 229
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 235
    .end local v0    # "_result":I
    :sswitch_198
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getRegisterViewW()I

    move-result v0

    .line 237
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 243
    .end local v0    # "_result":I
    :sswitch_1a9
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getRegisterViewH()I

    move-result v0

    .line 245
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 251
    .end local v0    # "_result":I
    :sswitch_1ba
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 255
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 256
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->checkSignatureData(II)I

    move-result v0

    .line 257
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 263
    .end local v0    # "_result":I
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_1d3
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 266
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getOriginalPointsPath(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 273
    .end local v0    # "_result":Ljava/lang/String;
    .end local v2    # "_arg0":I
    :sswitch_1e8
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 276
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->setEngineStatus(I)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 282
    .end local v2    # "_arg0":I
    :sswitch_1f9
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getEngineWorkStatus()I

    move-result v0

    .line 284
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 290
    .end local v0    # "_result":I
    :sswitch_20a
    const-string v8, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->isUsingOldData()Z

    move-result v0

    .line 292
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v0, :cond_219

    move v1, v7

    :cond_219
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 39
    :sswitch_data_21e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_36
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_56
        0x6 -> :sswitch_73
        0x7 -> :sswitch_7f
        0x8 -> :sswitch_8c
        0x9 -> :sswitch_99
        0xa -> :sswitch_ad
        0xb -> :sswitch_c1
        0xc -> :sswitch_d6
        0xd -> :sswitch_f8
        0xe -> :sswitch_10d
        0xf -> :sswitch_122
        0x10 -> :sswitch_133
        0x11 -> :sswitch_148
        0x12 -> :sswitch_159
        0x13 -> :sswitch_176
        0x14 -> :sswitch_187
        0x15 -> :sswitch_198
        0x16 -> :sswitch_1a9
        0x17 -> :sswitch_1ba
        0x18 -> :sswitch_1d3
        0x19 -> :sswitch_1e8
        0x1a -> :sswitch_1f9
        0x1b -> :sswitch_20a
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
