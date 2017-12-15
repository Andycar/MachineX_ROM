.class public abstract Lcom/android/internal/app/IVRManagerService$Stub;
.super Landroid/os/Binder;
.source "IVRManagerService.java"

# interfaces
.implements Lcom/android/internal/app/IVRManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVRManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVRManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVRManagerService"

.field static final TRANSACTION_GetPowerLevelState:I = 0xa

.field static final TRANSACTION_SetVrClocks:I = 0x9

.field static final TRANSACTION_enforceCallingPermission:I = 0x1d

.field static final TRANSACTION_getOption:I = 0xc

.field static final TRANSACTION_getSystemOption:I = 0x10

.field static final TRANSACTION_getVRBright:I = 0x14

.field static final TRANSACTION_getVRColorTemperature:I = 0x16

.field static final TRANSACTION_isConnected:I = 0x1

.field static final TRANSACTION_isVRComfortableViewEnabled:I = 0x1a

.field static final TRANSACTION_isVRDarkAdaptationEnabled:I = 0x18

.field static final TRANSACTION_isVRLowPersistenceEnabled:I = 0x1c

.field static final TRANSACTION_isVRMode:I = 0x12

.field static final TRANSACTION_relFreq:I = 0x7

.field static final TRANSACTION_releaseCPUMhz:I = 0x4

.field static final TRANSACTION_releaseGPUMhz:I = 0x6

.field static final TRANSACTION_return2EnableFreqLev:I = 0x8

.field static final TRANSACTION_setCPUClockMhz:I = 0x3

.field static final TRANSACTION_setGPUClockMhz:I = 0x5

.field static final TRANSACTION_setOption:I = 0xb

.field static final TRANSACTION_setSystemOption:I = 0xf

.field static final TRANSACTION_setThreadSchedFifo:I = 0x2

.field static final TRANSACTION_setVRBright:I = 0x13

.field static final TRANSACTION_setVRColorTemperature:I = 0x15

.field static final TRANSACTION_setVRComfortableView:I = 0x19

.field static final TRANSACTION_setVRDarkAdaptation:I = 0x17

.field static final TRANSACTION_setVRLowPersistence:I = 0x1b

.field static final TRANSACTION_setVRMode:I = 0x11

.field static final TRANSACTION_setVRPerformanceMode:I = 0xe

.field static final TRANSACTION_setVideoMode:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVRManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVRManagerService;
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
    const-string v1, "com.android.internal.app.IVRManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/app/IVRManagerService;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/android/internal/app/IVRManagerService;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/android/internal/app/IVRManagerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/app/IVRManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 39
    sparse-switch p1, :sswitch_data_286

    .line 335
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 43
    :sswitch_a
    const-string v5, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v7, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/app/IVRManagerService$Stub;->isConnected()Z

    move-result v4

    .line 50
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v4, :cond_1f

    move v5, v6

    :cond_1f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 56
    .end local v4    # "_result":Z
    :sswitch_23
    const-string v7, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 64
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 65
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/app/IVRManagerService$Stub;->setThreadSchedFifo(Ljava/lang/String;III)Z

    move-result v4

    .line 66
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v4, :cond_42

    move v5, v6

    :cond_42
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 72
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :sswitch_46
    const-string v5, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 78
    .local v1, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/IVRManagerService$Stub;->setCPUClockMhz(Ljava/lang/String;[II)[I

    move-result-object v4

    .line 80
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_9

    .line 86
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":I
    .end local v4    # "_result":[I
    :sswitch_62
    const-string v5, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IVRManagerService$Stub;->releaseCPUMhz(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 95
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_72
    const-string v5, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 100
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IVRManagerService$Stub;->setGPUClockMhz(Ljava/lang/String;I)I

    move-result v4

    .line 101
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 107
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_8a
    const-string v5, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IVRManagerService$Stub;->releaseGPUMhz(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 116
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_9b
    const-string v7, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IVRManagerService$Stub;->relFreq(Ljava/lang/String;)Z

    move-result v4

    .line 120
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v4, :cond_ae

    move v5, v6

    :cond_ae
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 126
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_b3
    const-string v5, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/internal/app/IVRManagerService$Stub;->return2EnableFreqLev()[I

    move-result-object v4

    .line 128
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 134
    .end local v4    # "_result":[I
    :sswitch_c4
    const-string v5, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/IVRManagerService$Stub;->SetVrClocks(Ljava/lang/String;II)[I

    move-result-object v4

    .line 142
    .restart local v4    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 148
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v4    # "_result":[I
    :sswitch_e1
    const-string v5, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/app/IVRManagerService$Stub;->GetPowerLevelState()I

    move-result v4

    .line 150
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 156
    .end local v4    # "_result":I
    :sswitch_f2
    const-string v5, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IVRManagerService$Stub;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 167
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_107
    const-string v5, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IVRManagerService$Stub;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 177
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_11c
    const-string v7, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 183
    .local v1, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_13f

    move v2, v6

    .line 184
    .local v2, "_arg2":Z
    :goto_130
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/IVRManagerService$Stub;->setVideoMode(Ljava/lang/String;FZ)Z

    move-result v4

    .line 185
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v4, :cond_13a

    move v5, v6

    :cond_13a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v2    # "_arg2":Z
    .end local v4    # "_result":Z
    :cond_13f
    move v2, v5

    .line 183
    goto :goto_130

    .line 191
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":F
    :sswitch_141
    const-string v7, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_155

    move v0, v6

    .line 194
    .local v0, "_arg0":Z
    :goto_14d
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IVRManagerService$Stub;->setVRPerformanceMode(Z)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_155
    move v0, v5

    .line 193
    goto :goto_14d

    .line 200
    :sswitch_157
    const-string v5, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IVRManagerService$Stub;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 211
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_16c
    const-string v5, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IVRManagerService$Stub;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 221
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_181
    const-string v7, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_195

    move v0, v6

    .line 224
    .local v0, "_arg0":Z
    :goto_18d
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IVRManagerService$Stub;->setVRMode(Z)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_195
    move v0, v5

    .line 223
    goto :goto_18d

    .line 230
    :sswitch_197
    const-string v7, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/app/IVRManagerService$Stub;->isVRMode()Z

    move-result v4

    .line 232
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v4, :cond_1a6

    move v5, v6

    :cond_1a6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 238
    .end local v4    # "_result":Z
    :sswitch_1ab
    const-string v5, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 241
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IVRManagerService$Stub;->setVRBright(I)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 247
    .end local v0    # "_arg0":I
    :sswitch_1bc
    const-string v5, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/internal/app/IVRManagerService$Stub;->getVRBright()I

    move-result v4

    .line 249
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 255
    .end local v4    # "_result":I
    :sswitch_1cd
    const-string v5, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 258
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IVRManagerService$Stub;->setVRColorTemperature(I)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 264
    .end local v0    # "_arg0":I
    :sswitch_1de
    const-string v5, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/app/IVRManagerService$Stub;->getVRColorTemperature()I

    move-result v4

    .line 266
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 272
    .end local v4    # "_result":I
    :sswitch_1ef
    const-string v7, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_203

    move v0, v6

    .line 275
    .local v0, "_arg0":Z
    :goto_1fb
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IVRManagerService$Stub;->setVRDarkAdaptation(Z)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_203
    move v0, v5

    .line 274
    goto :goto_1fb

    .line 281
    :sswitch_205
    const-string v7, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/app/IVRManagerService$Stub;->isVRDarkAdaptationEnabled()Z

    move-result v4

    .line 283
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v4, :cond_214

    move v5, v6

    :cond_214
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 289
    .end local v4    # "_result":Z
    :sswitch_219
    const-string v7, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_22d

    move v0, v6

    .line 292
    .restart local v0    # "_arg0":Z
    :goto_225
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IVRManagerService$Stub;->setVRComfortableView(Z)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_22d
    move v0, v5

    .line 291
    goto :goto_225

    .line 298
    :sswitch_22f
    const-string v7, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/app/IVRManagerService$Stub;->isVRComfortableViewEnabled()Z

    move-result v4

    .line 300
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    if-eqz v4, :cond_23e

    move v5, v6

    :cond_23e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 306
    .end local v4    # "_result":Z
    :sswitch_243
    const-string v7, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_257

    move v0, v6

    .line 309
    .restart local v0    # "_arg0":Z
    :goto_24f
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IVRManagerService$Stub;->setVRLowPersistence(Z)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_257
    move v0, v5

    .line 308
    goto :goto_24f

    .line 315
    :sswitch_259
    const-string v7, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/internal/app/IVRManagerService$Stub;->isVRLowPersistenceEnabled()Z

    move-result v4

    .line 317
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    if-eqz v4, :cond_268

    move v5, v6

    :cond_268
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 323
    .end local v4    # "_result":Z
    :sswitch_26d
    const-string v5, "com.android.internal.app.IVRManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 327
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 329
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/IVRManagerService$Stub;->enforceCallingPermission(IILjava/lang/String;)V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 39
    :sswitch_data_286
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_46
        0x4 -> :sswitch_62
        0x5 -> :sswitch_72
        0x6 -> :sswitch_8a
        0x7 -> :sswitch_9b
        0x8 -> :sswitch_b3
        0x9 -> :sswitch_c4
        0xa -> :sswitch_e1
        0xb -> :sswitch_f2
        0xc -> :sswitch_107
        0xd -> :sswitch_11c
        0xe -> :sswitch_141
        0xf -> :sswitch_157
        0x10 -> :sswitch_16c
        0x11 -> :sswitch_181
        0x12 -> :sswitch_197
        0x13 -> :sswitch_1ab
        0x14 -> :sswitch_1bc
        0x15 -> :sswitch_1cd
        0x16 -> :sswitch_1de
        0x17 -> :sswitch_1ef
        0x18 -> :sswitch_205
        0x19 -> :sswitch_219
        0x1a -> :sswitch_22f
        0x1b -> :sswitch_243
        0x1c -> :sswitch_259
        0x1d -> :sswitch_26d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
