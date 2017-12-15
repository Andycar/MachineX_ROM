.class public abstract Landroid/os/ICustomFrequencyManager$Stub;
.super Landroid/os/Binder;
.source "ICustomFrequencyManager.java"

# interfaces
.implements Landroid/os/ICustomFrequencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ICustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ICustomFrequencyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ICustomFrequencyManager"

.field static final TRANSACTION_acquireDVFSLock:I = 0x17

.field static final TRANSACTION_acquirePersistentDVFSLock:I = 0x19

.field static final TRANSACTION_checkCPUBoostRange:I = 0x15

.field static final TRANSACTION_checkFrameRateRange:I = 0xa

.field static final TRANSACTION_checkGPUFrequencyRange:I = 0x2

.field static final TRANSACTION_checkSysBusFrequencyRange:I = 0x6

.field static final TRANSACTION_deleteBatteryStatsDatabase:I = 0x25

.field static final TRANSACTION_disableCPUCState:I = 0x13

.field static final TRANSACTION_enableCPUCState:I = 0x14

.field static final TRANSACTION_getAbusiveAppList:I = 0x29

.field static final TRANSACTION_getBatteryDeltaSum:I = 0x26

.field static final TRANSACTION_getBatteryRemainingUsageTime:I = 0x23

.field static final TRANSACTION_getBatteryStatistics:I = 0x24

.field static final TRANSACTION_getBatteryTotalCapacity:I = 0x27

.field static final TRANSACTION_getDvfsPolicyByHint:I = 0x2a

.field static final TRANSACTION_getFrequentlyUsedAppListByLocation:I = 0x2f

.field static final TRANSACTION_getGameThrottlingLevel:I = 0x2d

.field static final TRANSACTION_getSavedTimeAfterKillingApp:I = 0x28

.field static final TRANSACTION_getStandbyTimeInPowerSavingMode:I = 0x21

.field static final TRANSACTION_getStandbyTimeInUltraPowerSavingMode:I = 0x20

.field static final TRANSACTION_getSupportedCPUCoreNum:I = 0x10

.field static final TRANSACTION_getSupportedCPUFrequency:I = 0x16

.field static final TRANSACTION_getSupportedGPUFrequency:I = 0x1

.field static final TRANSACTION_getSupportedLCDFrequency:I = 0x9

.field static final TRANSACTION_getSupportedSysBusFrequency:I = 0x5

.field static final TRANSACTION_mpdUpdate:I = 0xf

.field static final TRANSACTION_notifyWmAniationState:I = 0x1d

.field static final TRANSACTION_releaseCPUCore:I = 0x12

.field static final TRANSACTION_releaseDVFSLock:I = 0x18

.field static final TRANSACTION_releaseGPU:I = 0x4

.field static final TRANSACTION_releasePersistentDVFSLock:I = 0x1a

.field static final TRANSACTION_releaseSysBus:I = 0x8

.field static final TRANSACTION_requestCPUCore:I = 0x11

.field static final TRANSACTION_requestCPUUpdate:I = 0xe

.field static final TRANSACTION_requestGPU:I = 0x3

.field static final TRANSACTION_requestLCDFrameRate:I = 0xb

.field static final TRANSACTION_requestMMCBurstRate:I = 0x1b

.field static final TRANSACTION_requestMpParameterUpdate:I = 0xd

.field static final TRANSACTION_requestSysBus:I = 0x7

.field static final TRANSACTION_restoreLCDFrameRate:I = 0xc

.field static final TRANSACTION_restoreMMCBurstRate:I = 0x1c

.field static final TRANSACTION_reviewPackage:I = 0x1f

.field static final TRANSACTION_sendCommandToSSRM:I = 0x1e

.field static final TRANSACTION_setGameFps:I = 0x2c

.field static final TRANSACTION_setGamePowerSaving:I = 0x2b

.field static final TRANSACTION_setGameTurboMode:I = 0x2e

.field static final TRANSACTION_setHglPolicy:I = 0x22


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.ICustomFrequencyManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;
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
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/os/ICustomFrequencyManager;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/os/ICustomFrequencyManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/ICustomFrequencyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_40c

    .line 547
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 43
    :sswitch_a
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedGPUFrequency()[I

    move-result-object v8

    .line 50
    .local v8, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_9

    .line 56
    .end local v8    # "_result":[I
    :sswitch_20
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->checkGPUFrequencyRange(I)Z

    move-result v8

    .line 60
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v8, :cond_33

    move v1, v7

    :cond_33
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 66
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_37
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 70
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 72
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 74
    .local v6, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->requestGPU(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 81
    .end local v0    # "_arg3":Ljava/lang/String;
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":Landroid/os/IBinder;
    :sswitch_53
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 85
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 87
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6}, Landroid/os/ICustomFrequencyManager$Stub;->releaseGPU(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 94
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_6b
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedSysBusFrequency()[I

    move-result-object v8

    .line 96
    .local v8, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_9

    .line 102
    .end local v8    # "_result":[I
    :sswitch_7b
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->checkSysBusFrequencyRange(I)Z

    move-result v8

    .line 106
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v8, :cond_8e

    move v1, v7

    :cond_8e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 112
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_93
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 118
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 120
    .local v6, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->requestSysBus(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 127
    .end local v0    # "_arg3":Ljava/lang/String;
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":Landroid/os/IBinder;
    :sswitch_b0
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 133
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6}, Landroid/os/ICustomFrequencyManager$Stub;->releaseSysBus(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 140
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_c9
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedLCDFrequency()[I

    move-result-object v8

    .line 142
    .local v8, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 148
    .end local v8    # "_result":[I
    :sswitch_da
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->checkFrameRateRange(I)Z

    move-result v8

    .line 152
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v8, :cond_ed

    move v1, v7

    :cond_ed
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 158
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_f2
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 162
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 164
    .restart local v4    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 165
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6}, Landroid/os/ICustomFrequencyManager$Stub;->requestLCDFrameRate(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 171
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_10b
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 175
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->restoreLCDFrameRate(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 182
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_120
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->requestMpParameterUpdate(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 191
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_131
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 196
    .local v4, "_arg1":I
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->requestCPUUpdate(II)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 202
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_146
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 205
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->mpdUpdate(I)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 211
    .end local v2    # "_arg0":I
    :sswitch_157
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedCPUCoreNum()[I

    move-result-object v8

    .line 213
    .local v8, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 219
    .end local v8    # "_result":[I
    :sswitch_168
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 225
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 227
    .local v6, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .restart local v0    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->requestCPUCore(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 234
    .end local v0    # "_arg3":Ljava/lang/String;
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":Landroid/os/IBinder;
    :sswitch_185
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 238
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 240
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6}, Landroid/os/ICustomFrequencyManager$Stub;->releaseCPUCore(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 247
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_19e
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 251
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->disableCPUCState(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 258
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_1b3
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 262
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 263
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->enableCPUCState(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 269
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_1c8
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 272
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->checkCPUBoostRange(I)Z

    move-result v8

    .line 273
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    if-eqz v8, :cond_1db

    move v1, v7

    :cond_1db
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 279
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_1e0
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedCPUFrequency()[I

    move-result-object v8

    .line 281
    .local v8, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 287
    .end local v8    # "_result":[I
    :sswitch_1f1
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 291
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 293
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 295
    .local v6, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .restart local v0    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->acquireDVFSLock(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 302
    .end local v0    # "_arg3":Ljava/lang/String;
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":Landroid/os/IBinder;
    :sswitch_20e
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 306
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->releaseDVFSLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 313
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_223
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 317
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 319
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 321
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 322
    .restart local v0    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->acquirePersistentDVFSLock(IIILjava/lang/String;)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 328
    .end local v0    # "_arg3":Ljava/lang/String;
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v6    # "_arg2":I
    :sswitch_240
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 332
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->releasePersistentDVFSLock(ILjava/lang/String;)V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 339
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_255
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 343
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 345
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v4, v6}, Landroid/os/ICustomFrequencyManager$Stub;->requestMMCBurstRate(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 352
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_26e
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 355
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->restoreMMCBurstRate(Landroid/os/IBinder;)V

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 361
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_27f
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 365
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_297

    move v4, v7

    .line 366
    .local v4, "_arg1":Z
    :goto_28f
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/ICustomFrequencyManager$Stub;->notifyWmAniationState(JZ)V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v4    # "_arg1":Z
    :cond_297
    move v4, v1

    .line 365
    goto :goto_28f

    .line 372
    .end local v2    # "_arg0":J
    :sswitch_299
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 377
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 383
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_2ae
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 387
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 388
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/os/ICustomFrequencyManager$Stub;->reviewPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 394
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_2c3
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getStandbyTimeInUltraPowerSavingMode()I

    move-result v8

    .line 396
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 402
    .end local v8    # "_result":I
    :sswitch_2d4
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getStandbyTimeInPowerSavingMode()I

    move-result v8

    .line 404
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 410
    .end local v8    # "_result":I
    :sswitch_2e5
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 413
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->setHglPolicy(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 419
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_2f6
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 422
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->getBatteryRemainingUsageTime(I)I

    move-result v8

    .line 423
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 429
    .end local v2    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_30b
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 432
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->getBatteryStatistics(I)[B

    move-result-object v8

    .line 433
    .local v8, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 439
    .end local v2    # "_arg0":I
    .end local v8    # "_result":[B
    :sswitch_320
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->deleteBatteryStatsDatabase()Z

    move-result v8

    .line 441
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    if-eqz v8, :cond_32f

    move v1, v7

    :cond_32f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 447
    .end local v8    # "_result":Z
    :sswitch_334
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 450
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->getBatteryDeltaSum(I)I

    move-result v8

    .line 451
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 457
    .end local v2    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_349
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getBatteryTotalCapacity()I

    move-result v8

    .line 459
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 465
    .end local v8    # "_result":I
    :sswitch_35a
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->getSavedTimeAfterKillingApp(Ljava/lang/String;)J

    move-result-wide v8

    .line 469
    .local v8, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 475
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":J
    :sswitch_36f
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getAbusiveAppList()[Ljava/lang/String;

    move-result-object v8

    .line 477
    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 483
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_380
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 486
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 487
    .local v8, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    if-eqz v8, :cond_39a

    .line 489
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    invoke-virtual {v8, p3, v7}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 493
    :cond_39a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 499
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Landroid/content/Intent;
    :sswitch_39f
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3b3

    move v2, v7

    .line 502
    .local v2, "_arg0":Z
    :goto_3ab
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->setGamePowerSaving(Z)V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2    # "_arg0":Z
    :cond_3b3
    move v2, v1

    .line 501
    goto :goto_3ab

    .line 508
    :sswitch_3b5
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 511
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->setGameFps(I)V

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 517
    .end local v2    # "_arg0":I
    :sswitch_3c6
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Landroid/os/ICustomFrequencyManager$Stub;->getGameThrottlingLevel()I

    move-result v8

    .line 519
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 525
    .end local v8    # "_result":I
    :sswitch_3d7
    const-string v10, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3eb

    move v2, v7

    .line 528
    .local v2, "_arg0":Z
    :goto_3e3
    invoke-virtual {p0, v2}, Landroid/os/ICustomFrequencyManager$Stub;->setGameTurboMode(Z)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2    # "_arg0":Z
    :cond_3eb
    move v2, v1

    .line 527
    goto :goto_3e3

    .line 534
    :sswitch_3ed
    const-string v1, "android.os.ICustomFrequencyManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 538
    .local v2, "_arg0":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 540
    .local v4, "_arg1":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg2":I
    move-object v1, p0

    .line 541
    invoke-virtual/range {v1 .. v6}, Landroid/os/ICustomFrequencyManager$Stub;->getFrequentlyUsedAppListByLocation(DDI)[Ljava/lang/String;

    move-result-object v8

    .line 542
    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 39
    nop

    :sswitch_data_40c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_37
        0x4 -> :sswitch_53
        0x5 -> :sswitch_6b
        0x6 -> :sswitch_7b
        0x7 -> :sswitch_93
        0x8 -> :sswitch_b0
        0x9 -> :sswitch_c9
        0xa -> :sswitch_da
        0xb -> :sswitch_f2
        0xc -> :sswitch_10b
        0xd -> :sswitch_120
        0xe -> :sswitch_131
        0xf -> :sswitch_146
        0x10 -> :sswitch_157
        0x11 -> :sswitch_168
        0x12 -> :sswitch_185
        0x13 -> :sswitch_19e
        0x14 -> :sswitch_1b3
        0x15 -> :sswitch_1c8
        0x16 -> :sswitch_1e0
        0x17 -> :sswitch_1f1
        0x18 -> :sswitch_20e
        0x19 -> :sswitch_223
        0x1a -> :sswitch_240
        0x1b -> :sswitch_255
        0x1c -> :sswitch_26e
        0x1d -> :sswitch_27f
        0x1e -> :sswitch_299
        0x1f -> :sswitch_2ae
        0x20 -> :sswitch_2c3
        0x21 -> :sswitch_2d4
        0x22 -> :sswitch_2e5
        0x23 -> :sswitch_2f6
        0x24 -> :sswitch_30b
        0x25 -> :sswitch_320
        0x26 -> :sswitch_334
        0x27 -> :sswitch_349
        0x28 -> :sswitch_35a
        0x29 -> :sswitch_36f
        0x2a -> :sswitch_380
        0x2b -> :sswitch_39f
        0x2c -> :sswitch_3b5
        0x2d -> :sswitch_3c6
        0x2e -> :sswitch_3d7
        0x2f -> :sswitch_3ed
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
