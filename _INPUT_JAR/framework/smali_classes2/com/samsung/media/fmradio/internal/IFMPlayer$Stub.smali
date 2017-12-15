.class public abstract Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;
.super Landroid/os/Binder;
.source "IFMPlayer.java"

# interfaces
.implements Lcom/samsung/media/fmradio/internal/IFMPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/media/fmradio/internal/IFMPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.media.fmradio.internal.IFMPlayer"

.field static final TRANSACTION_SkipTuning_Value:I = 0x23

.field static final TRANSACTION_cancelAFSwitching:I = 0x1e

.field static final TRANSACTION_cancelScan:I = 0xc

.field static final TRANSACTION_cancelSeek:I = 0x9

.field static final TRANSACTION_disableAF:I = 0x18

.field static final TRANSACTION_disableDNS:I = 0x15

.field static final TRANSACTION_disableRDS:I = 0x13

.field static final TRANSACTION_enableAF:I = 0x17

.field static final TRANSACTION_enableDNS:I = 0x14

.field static final TRANSACTION_enableRDS:I = 0x12

.field static final TRANSACTION_getAFRMSSISamples:I = 0x59

.field static final TRANSACTION_getAFRMSSIThreshold:I = 0x57

.field static final TRANSACTION_getAFValid_th:I = 0x41

.field static final TRANSACTION_getAF_th:I = 0x3f

.field static final TRANSACTION_getCFOTh12:I = 0x51

.field static final TRANSACTION_getCnt_th:I = 0x38

.field static final TRANSACTION_getCnt_th_2:I = 0x3b

.field static final TRANSACTION_getCurrentChannel:I = 0xa

.field static final TRANSACTION_getCurrentRSSI:I = 0x2c

.field static final TRANSACTION_getCurrentSNR:I = 0x2d

.field static final TRANSACTION_getGoodChannelRMSSIThreshold:I = 0x5b

.field static final TRANSACTION_getHybridSearch:I = 0x5d

.field static final TRANSACTION_getLastScanResult:I = 0x1f

.field static final TRANSACTION_getMaxVolume:I = 0x29

.field static final TRANSACTION_getOffChannelThreshold:I = 0x4d

.field static final TRANSACTION_getOnChannelThreshold:I = 0x4b

.field static final TRANSACTION_getRMSSIFirstStage:I = 0x53

.field static final TRANSACTION_getRSSI_th:I = 0x36

.field static final TRANSACTION_getRSSI_th_2:I = 0x39

.field static final TRANSACTION_getSINRFirstStage:I = 0x55

.field static final TRANSACTION_getSINRSamples:I = 0x49

.field static final TRANSACTION_getSINRThreshold:I = 0x4f

.field static final TRANSACTION_getSNR_th:I = 0x37

.field static final TRANSACTION_getSNR_th_2:I = 0x3a

.field static final TRANSACTION_getSearchAlgoType:I = 0x47

.field static final TRANSACTION_getSoftMuteMode:I = 0x44

.field static final TRANSACTION_getVolume:I = 0x24

.field static final TRANSACTION_isAFEnable:I = 0x1d

.field static final TRANSACTION_isAirPlaneMode:I = 0x2a

.field static final TRANSACTION_isBatteryLow:I = 0x3d

.field static final TRANSACTION_isBusy:I = 0x1b

.field static final TRANSACTION_isDNSEnable:I = 0x16

.field static final TRANSACTION_isHeadsetPlugged:I = 0x25

.field static final TRANSACTION_isOn:I = 0x6

.field static final TRANSACTION_isRDSEnable:I = 0x1c

.field static final TRANSACTION_isScanning:I = 0xd

.field static final TRANSACTION_isSeeking:I = 0xe

.field static final TRANSACTION_isTvOutPlugged:I = 0x26

.field static final TRANSACTION_off:I = 0x5

.field static final TRANSACTION_on:I = 0x4

.field static final TRANSACTION_on_in_testmode:I = 0x3c

.field static final TRANSACTION_removeListener:I = 0x2

.field static final TRANSACTION_scan:I = 0xb

.field static final TRANSACTION_searchAll:I = 0x11

.field static final TRANSACTION_searchDown:I = 0xf

.field static final TRANSACTION_searchUp:I = 0x10

.field static final TRANSACTION_seekDown:I = 0x8

.field static final TRANSACTION_seekUp:I = 0x7

.field static final TRANSACTION_setAFRMSSISamples:I = 0x58

.field static final TRANSACTION_setAFRMSSIThreshold:I = 0x56

.field static final TRANSACTION_setAFValid_th:I = 0x40

.field static final TRANSACTION_setAF_th:I = 0x3e

.field static final TRANSACTION_setBand:I = 0x19

.field static final TRANSACTION_setCFOTh12:I = 0x50

.field static final TRANSACTION_setChannelSpacing:I = 0x1a

.field static final TRANSACTION_setCnt_th:I = 0x32

.field static final TRANSACTION_setCnt_th_2:I = 0x35

.field static final TRANSACTION_setDEConstant:I = 0x2b

.field static final TRANSACTION_setFMIntenna:I = 0x42

.field static final TRANSACTION_setGoodChannelRMSSIThreshold:I = 0x5a

.field static final TRANSACTION_setHybridSearch:I = 0x5c

.field static final TRANSACTION_setInternetStreamingMode:I = 0x5e

.field static final TRANSACTION_setListener:I = 0x1

.field static final TRANSACTION_setMono:I = 0x21

.field static final TRANSACTION_setOffChannelThreshold:I = 0x4c

.field static final TRANSACTION_setOnChannelThreshold:I = 0x4a

.field static final TRANSACTION_setRMSSIFirstStage:I = 0x52

.field static final TRANSACTION_setRSSI_th:I = 0x30

.field static final TRANSACTION_setRSSI_th_2:I = 0x33

.field static final TRANSACTION_setRecordMode:I = 0x28

.field static final TRANSACTION_setSINRFirstStage:I = 0x54

.field static final TRANSACTION_setSINRSamples:I = 0x48

.field static final TRANSACTION_setSINRThreshold:I = 0x4e

.field static final TRANSACTION_setSNR_th:I = 0x31

.field static final TRANSACTION_setSNR_th_2:I = 0x34

.field static final TRANSACTION_setSearchAlgoType:I = 0x46

.field static final TRANSACTION_setSeekRSSI:I = 0x2e

.field static final TRANSACTION_setSeekSNR:I = 0x2f

.field static final TRANSACTION_setSoftMuteControl:I = 0x45

.field static final TRANSACTION_setSoftmute:I = 0x43

.field static final TRANSACTION_setSpeakerOn:I = 0x27

.field static final TRANSACTION_setStereo:I = 0x20

.field static final TRANSACTION_setVolume:I = 0x22

.field static final TRANSACTION_tune:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMPlayer;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/media/fmradio/internal/IFMPlayer;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/samsung/media/fmradio/internal/IFMPlayer;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_66a

    .line 830
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 47
    :sswitch_a
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Lcom/samsung/media/fmradio/internal/IFMEventListener;
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 61
    .end local v0    # "_arg0":Lcom/samsung/media/fmradio/internal/IFMEventListener;
    :sswitch_24
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMEventListener;

    move-result-object v0

    .line 64
    .restart local v0    # "_arg0":Lcom/samsung/media/fmradio/internal/IFMEventListener;
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->removeListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 70
    .end local v0    # "_arg0":Lcom/samsung/media/fmradio/internal/IFMEventListener;
    :sswitch_38
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 73
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->tune(J)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 79
    .end local v0    # "_arg0":J
    :sswitch_48
    const-string v8, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->on()Z

    move-result v4

    .line 81
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v4, :cond_57

    move v6, v7

    :cond_57
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 87
    .end local v4    # "_result":Z
    :sswitch_5b
    const-string v8, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->off()Z

    move-result v4

    .line 89
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v4, :cond_6a

    move v6, v7

    :cond_6a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 95
    .end local v4    # "_result":Z
    :sswitch_6e
    const-string v8, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isOn()Z

    move-result v4

    .line 97
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v4, :cond_7d

    move v6, v7

    :cond_7d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 103
    .end local v4    # "_result":Z
    :sswitch_81
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->seekUp()J

    move-result-wide v4

    .line 105
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 111
    .end local v4    # "_result":J
    :sswitch_92
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->seekDown()J

    move-result-wide v4

    .line 113
    .restart local v4    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 119
    .end local v4    # "_result":J
    :sswitch_a3
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->cancelSeek()V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 126
    :sswitch_b0
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getCurrentChannel()J

    move-result-wide v4

    .line 128
    .restart local v4    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 134
    .end local v4    # "_result":J
    :sswitch_c1
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->scan()V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 141
    :sswitch_ce
    const-string v8, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->cancelScan()Z

    move-result v4

    .line 143
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v4, :cond_dd

    move v6, v7

    :cond_dd
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 149
    .end local v4    # "_result":Z
    :sswitch_e2
    const-string v8, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isScanning()Z

    move-result v4

    .line 151
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v4, :cond_f1

    move v6, v7

    :cond_f1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 157
    .end local v4    # "_result":Z
    :sswitch_f6
    const-string v8, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isSeeking()Z

    move-result v4

    .line 159
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v4, :cond_105

    move v6, v7

    :cond_105
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 165
    .end local v4    # "_result":Z
    :sswitch_10a
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->searchDown()J

    move-result-wide v4

    .line 167
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 173
    .end local v4    # "_result":J
    :sswitch_11b
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->searchUp()J

    move-result-wide v4

    .line 175
    .restart local v4    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 181
    .end local v4    # "_result":J
    :sswitch_12c
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->searchAll()J

    move-result-wide v4

    .line 183
    .restart local v4    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 189
    .end local v4    # "_result":J
    :sswitch_13d
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->enableRDS()V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 196
    :sswitch_14a
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->disableRDS()V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 203
    :sswitch_157
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->enableDNS()V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 210
    :sswitch_164
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->disableDNS()V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 217
    :sswitch_171
    const-string v8, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isDNSEnable()Z

    move-result v4

    .line 219
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v4, :cond_180

    move v6, v7

    :cond_180
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 225
    .end local v4    # "_result":Z
    :sswitch_185
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->enableAF()V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 232
    :sswitch_192
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->disableAF()V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 239
    :sswitch_19f
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 242
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setBand(I)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 248
    .end local v0    # "_arg0":I
    :sswitch_1b0
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 251
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setChannelSpacing(I)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 257
    .end local v0    # "_arg0":I
    :sswitch_1c1
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isBusy()I

    move-result v4

    .line 259
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 265
    .end local v4    # "_result":I
    :sswitch_1d2
    const-string v8, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isRDSEnable()Z

    move-result v4

    .line 267
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    if-eqz v4, :cond_1e1

    move v6, v7

    :cond_1e1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 273
    .end local v4    # "_result":Z
    :sswitch_1e6
    const-string v8, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isAFEnable()Z

    move-result v4

    .line 275
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v4, :cond_1f5

    move v6, v7

    :cond_1f5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 281
    .end local v4    # "_result":Z
    :sswitch_1fa
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->cancelAFSwitching()V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 288
    :sswitch_207
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getLastScanResult()[J

    move-result-object v4

    .line 290
    .local v4, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_9

    .line 296
    .end local v4    # "_result":[J
    :sswitch_218
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setStereo()V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 303
    :sswitch_225
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setMono()V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 310
    :sswitch_232
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 313
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setVolume(J)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 319
    .end local v0    # "_arg0":J
    :sswitch_243
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->SkipTuning_Value()V

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 326
    :sswitch_250
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getVolume()J

    move-result-wide v4

    .line 328
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 334
    .end local v4    # "_result":J
    :sswitch_261
    const-string v8, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isHeadsetPlugged()Z

    move-result v4

    .line 336
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    if-eqz v4, :cond_270

    move v6, v7

    :cond_270
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 342
    .end local v4    # "_result":Z
    :sswitch_275
    const-string v8, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isTvOutPlugged()Z

    move-result v4

    .line 344
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    if-eqz v4, :cond_284

    move v6, v7

    :cond_284
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 350
    .end local v4    # "_result":Z
    :sswitch_289
    const-string v8, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_29d

    move v0, v7

    .line 353
    .local v0, "_arg0":Z
    :goto_295
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setSpeakerOn(Z)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_29d
    move v0, v6

    .line 352
    goto :goto_295

    .line 359
    :sswitch_29f
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 362
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setRecordMode(I)V

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 368
    .end local v0    # "_arg0":I
    :sswitch_2b0
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getMaxVolume()J

    move-result-wide v4

    .line 370
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 376
    .end local v4    # "_result":J
    :sswitch_2c1
    const-string v8, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isAirPlaneMode()Z

    move-result v4

    .line 378
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    if-eqz v4, :cond_2d0

    move v6, v7

    :cond_2d0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 384
    .end local v4    # "_result":Z
    :sswitch_2d5
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 387
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setDEConstant(J)V

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 393
    .end local v0    # "_arg0":J
    :sswitch_2e6
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getCurrentRSSI()J

    move-result-wide v4

    .line 395
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 401
    .end local v4    # "_result":J
    :sswitch_2f7
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getCurrentSNR()J

    move-result-wide v4

    .line 403
    .restart local v4    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 409
    .end local v4    # "_result":J
    :sswitch_308
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 412
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setSeekRSSI(J)V

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 418
    .end local v0    # "_arg0":J
    :sswitch_319
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 421
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setSeekSNR(J)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 427
    .end local v0    # "_arg0":J
    :sswitch_32a
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 430
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setRSSI_th(I)V

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 436
    .end local v0    # "_arg0":I
    :sswitch_33b
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 439
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setSNR_th(I)V

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 445
    .end local v0    # "_arg0":I
    :sswitch_34c
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 448
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setCnt_th(I)V

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 454
    .end local v0    # "_arg0":I
    :sswitch_35d
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 457
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setRSSI_th_2(I)V

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 463
    .end local v0    # "_arg0":I
    :sswitch_36e
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 466
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setSNR_th_2(I)V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 472
    .end local v0    # "_arg0":I
    :sswitch_37f
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 475
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setCnt_th_2(I)V

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 481
    .end local v0    # "_arg0":I
    :sswitch_390
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getRSSI_th()I

    move-result v4

    .line 483
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 489
    .end local v4    # "_result":I
    :sswitch_3a1
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getSNR_th()I

    move-result v4

    .line 491
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 497
    .end local v4    # "_result":I
    :sswitch_3b2
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getCnt_th()I

    move-result v4

    .line 499
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 505
    .end local v4    # "_result":I
    :sswitch_3c3
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getRSSI_th_2()I

    move-result v4

    .line 507
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 513
    .end local v4    # "_result":I
    :sswitch_3d4
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getSNR_th_2()I

    move-result v4

    .line 515
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 521
    .end local v4    # "_result":I
    :sswitch_3e5
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getCnt_th_2()I

    move-result v4

    .line 523
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 529
    .end local v4    # "_result":I
    :sswitch_3f6
    const-string v8, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->on_in_testmode()Z

    move-result v4

    .line 531
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    if-eqz v4, :cond_405

    move v6, v7

    :cond_405
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 537
    .end local v4    # "_result":Z
    :sswitch_40a
    const-string v8, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->isBatteryLow()Z

    move-result v4

    .line 539
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    if-eqz v4, :cond_419

    move v6, v7

    :cond_419
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 545
    .end local v4    # "_result":Z
    :sswitch_41e
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 548
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setAF_th(I)V

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 554
    .end local v0    # "_arg0":I
    :sswitch_42f
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getAF_th()I

    move-result v4

    .line 556
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 562
    .end local v4    # "_result":I
    :sswitch_440
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 565
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setAFValid_th(I)V

    .line 566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 571
    .end local v0    # "_arg0":I
    :sswitch_451
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getAFValid_th()I

    move-result v4

    .line 573
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 579
    .end local v4    # "_result":I
    :sswitch_462
    const-string v8, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_476

    move v0, v7

    .line 582
    .local v0, "_arg0":Z
    :goto_46e
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setFMIntenna(Z)V

    .line 583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_476
    move v0, v6

    .line 581
    goto :goto_46e

    .line 588
    :sswitch_478
    const-string v8, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_48c

    move v0, v7

    .line 591
    .restart local v0    # "_arg0":Z
    :goto_484
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setSoftmute(Z)V

    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_48c
    move v0, v6

    .line 590
    goto :goto_484

    .line 597
    :sswitch_48e
    const-string v8, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getSoftMuteMode()Z

    move-result v4

    .line 599
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    if-eqz v4, :cond_49d

    move v6, v7

    :cond_49d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 605
    .end local v4    # "_result":Z
    :sswitch_4a2
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 609
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 611
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 612
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setSoftMuteControl(III)V

    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 618
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_4bb
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 621
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setSearchAlgoType(I)V

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 627
    .end local v0    # "_arg0":I
    :sswitch_4cc
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getSearchAlgoType()I

    move-result v4

    .line 629
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 635
    .end local v4    # "_result":I
    :sswitch_4dd
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 638
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setSINRSamples(I)V

    .line 639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 644
    .end local v0    # "_arg0":I
    :sswitch_4ee
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getSINRSamples()I

    move-result v4

    .line 646
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 652
    .end local v4    # "_result":I
    :sswitch_4ff
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 655
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setOnChannelThreshold(I)V

    .line 656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 661
    .end local v0    # "_arg0":I
    :sswitch_510
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getOnChannelThreshold()I

    move-result v4

    .line 663
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 669
    .end local v4    # "_result":I
    :sswitch_521
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 672
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setOffChannelThreshold(I)V

    .line 673
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 678
    .end local v0    # "_arg0":I
    :sswitch_532
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getOffChannelThreshold()I

    move-result v4

    .line 680
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 686
    .end local v4    # "_result":I
    :sswitch_543
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 689
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setSINRThreshold(I)V

    .line 690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 695
    .end local v0    # "_arg0":I
    :sswitch_554
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getSINRThreshold()I

    move-result v4

    .line 697
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 703
    .end local v4    # "_result":I
    :sswitch_565
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 706
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setCFOTh12(I)V

    .line 707
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 712
    .end local v0    # "_arg0":I
    :sswitch_576
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getCFOTh12()I

    move-result v4

    .line 714
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 720
    .end local v4    # "_result":I
    :sswitch_587
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 723
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setRMSSIFirstStage(I)V

    .line 724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 729
    .end local v0    # "_arg0":I
    :sswitch_598
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getRMSSIFirstStage()I

    move-result v4

    .line 731
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 737
    .end local v4    # "_result":I
    :sswitch_5a9
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 740
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setSINRFirstStage(I)V

    .line 741
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 746
    .end local v0    # "_arg0":I
    :sswitch_5ba
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getSINRFirstStage()I

    move-result v4

    .line 748
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 754
    .end local v4    # "_result":I
    :sswitch_5cb
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 757
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setAFRMSSIThreshold(I)V

    .line 758
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 763
    .end local v0    # "_arg0":I
    :sswitch_5dc
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getAFRMSSIThreshold()I

    move-result v4

    .line 765
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 771
    .end local v4    # "_result":I
    :sswitch_5ed
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 774
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setAFRMSSISamples(I)V

    .line 775
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 780
    .end local v0    # "_arg0":I
    :sswitch_5fe
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getAFRMSSISamples()I

    move-result v4

    .line 782
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 788
    .end local v4    # "_result":I
    :sswitch_60f
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 791
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setGoodChannelRMSSIThreshold(I)V

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 797
    .end local v0    # "_arg0":I
    :sswitch_620
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getGoodChannelRMSSIThreshold()I

    move-result v4

    .line 799
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 805
    .end local v4    # "_result":I
    :sswitch_631
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setHybridSearch(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 814
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_642
    const-string v6, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->getHybridSearch()Ljava/lang/String;

    move-result-object v4

    .line 816
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 822
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_653
    const-string v8, "com.samsung.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_667

    move v0, v7

    .line 825
    .local v0, "_arg0":Z
    :goto_65f
    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->setInternetStreamingMode(Z)V

    .line 826
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_667
    move v0, v6

    .line 824
    goto :goto_65f

    .line 43
    nop

    :sswitch_data_66a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_24
        0x3 -> :sswitch_38
        0x4 -> :sswitch_48
        0x5 -> :sswitch_5b
        0x6 -> :sswitch_6e
        0x7 -> :sswitch_81
        0x8 -> :sswitch_92
        0x9 -> :sswitch_a3
        0xa -> :sswitch_b0
        0xb -> :sswitch_c1
        0xc -> :sswitch_ce
        0xd -> :sswitch_e2
        0xe -> :sswitch_f6
        0xf -> :sswitch_10a
        0x10 -> :sswitch_11b
        0x11 -> :sswitch_12c
        0x12 -> :sswitch_13d
        0x13 -> :sswitch_14a
        0x14 -> :sswitch_157
        0x15 -> :sswitch_164
        0x16 -> :sswitch_171
        0x17 -> :sswitch_185
        0x18 -> :sswitch_192
        0x19 -> :sswitch_19f
        0x1a -> :sswitch_1b0
        0x1b -> :sswitch_1c1
        0x1c -> :sswitch_1d2
        0x1d -> :sswitch_1e6
        0x1e -> :sswitch_1fa
        0x1f -> :sswitch_207
        0x20 -> :sswitch_218
        0x21 -> :sswitch_225
        0x22 -> :sswitch_232
        0x23 -> :sswitch_243
        0x24 -> :sswitch_250
        0x25 -> :sswitch_261
        0x26 -> :sswitch_275
        0x27 -> :sswitch_289
        0x28 -> :sswitch_29f
        0x29 -> :sswitch_2b0
        0x2a -> :sswitch_2c1
        0x2b -> :sswitch_2d5
        0x2c -> :sswitch_2e6
        0x2d -> :sswitch_2f7
        0x2e -> :sswitch_308
        0x2f -> :sswitch_319
        0x30 -> :sswitch_32a
        0x31 -> :sswitch_33b
        0x32 -> :sswitch_34c
        0x33 -> :sswitch_35d
        0x34 -> :sswitch_36e
        0x35 -> :sswitch_37f
        0x36 -> :sswitch_390
        0x37 -> :sswitch_3a1
        0x38 -> :sswitch_3b2
        0x39 -> :sswitch_3c3
        0x3a -> :sswitch_3d4
        0x3b -> :sswitch_3e5
        0x3c -> :sswitch_3f6
        0x3d -> :sswitch_40a
        0x3e -> :sswitch_41e
        0x3f -> :sswitch_42f
        0x40 -> :sswitch_440
        0x41 -> :sswitch_451
        0x42 -> :sswitch_462
        0x43 -> :sswitch_478
        0x44 -> :sswitch_48e
        0x45 -> :sswitch_4a2
        0x46 -> :sswitch_4bb
        0x47 -> :sswitch_4cc
        0x48 -> :sswitch_4dd
        0x49 -> :sswitch_4ee
        0x4a -> :sswitch_4ff
        0x4b -> :sswitch_510
        0x4c -> :sswitch_521
        0x4d -> :sswitch_532
        0x4e -> :sswitch_543
        0x4f -> :sswitch_554
        0x50 -> :sswitch_565
        0x51 -> :sswitch_576
        0x52 -> :sswitch_587
        0x53 -> :sswitch_598
        0x54 -> :sswitch_5a9
        0x55 -> :sswitch_5ba
        0x56 -> :sswitch_5cb
        0x57 -> :sswitch_5dc
        0x58 -> :sswitch_5ed
        0x59 -> :sswitch_5fe
        0x5a -> :sswitch_60f
        0x5b -> :sswitch_620
        0x5c -> :sswitch_631
        0x5d -> :sswitch_642
        0x5e -> :sswitch_653
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
