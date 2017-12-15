.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final TRANSACTION_addNfcUnlockHandler:I = 0x1c

.field static final TRANSACTION_closeSecNdefService:I = 0x14

.field static final TRANSACTION_createSecNdefService:I = 0x13

.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_disableFilterCondition:I = 0x1b

.field static final TRANSACTION_disableNdefPush:I = 0x8

.field static final TRANSACTION_dispatch:I = 0x10

.field static final TRANSACTION_enable:I = 0x6

.field static final TRANSACTION_enableDisableSeTestMode:I = 0x1e

.field static final TRANSACTION_enableFilterCondition:I = 0x1a

.field static final TRANSACTION_enableNdefPush:I = 0x7

.field static final TRANSACTION_enableSecNdef:I = 0x17

.field static final TRANSACTION_getDefaultRoutingDestination:I = 0x20

.field static final TRANSACTION_getNfcAdapterExtrasInterface:I = 0x3

.field static final TRANSACTION_getNfcCardEmulationInterface:I = 0x2

.field static final TRANSACTION_getNfcTagInterface:I = 0x1

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_invokeBeam:I = 0xe

.field static final TRANSACTION_invokeBeamInternal:I = 0xf

.field static final TRANSACTION_isNdefPushEnabled:I = 0x9

.field static final TRANSACTION_isSecNdefEnabled:I = 0x18

.field static final TRANSACTION_isTrustedPkg:I = 0x23

.field static final TRANSACTION_pausePolling:I = 0xa

.field static final TRANSACTION_readerDisable:I = 0x21

.field static final TRANSACTION_readerEnable:I = 0x22

.field static final TRANSACTION_removeNfcUnlockHandler:I = 0x1d

.field static final TRANSACTION_resumePolling:I = 0xb

.field static final TRANSACTION_sendSecDefaultNdefMsg:I = 0x16

.field static final TRANSACTION_sendSecNdefMsg:I = 0x15

.field static final TRANSACTION_setAppCallback:I = 0xd

.field static final TRANSACTION_setDefaultRoutingDestination:I = 0x1f

.field static final TRANSACTION_setFilterList:I = 0x19

.field static final TRANSACTION_setForegroundDispatch:I = 0xc

.field static final TRANSACTION_setP2pModes:I = 0x12

.field static final TRANSACTION_setReaderMode:I = 0x11

.field static final TRANSACTION_startCoverAuth:I = 0x24

.field static final TRANSACTION_stopCoverAuth:I = 0x26

.field static final TRANSACTION_transceiveAuthData:I = 0x25


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
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
    const-string v1, "android.nfc.INfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/nfc/INfcAdapter;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/nfc/INfcAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_3a0

    .line 447
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_a
    return v7

    .line 45
    :sswitch_b
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 50
    :sswitch_11
    const-string v8, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v6

    .line 52
    .local v6, "_result":Landroid/nfc/INfcTag;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v6, :cond_23

    invoke-interface {v6}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_23
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_a

    .line 58
    .end local v6    # "_result":Landroid/nfc/INfcTag;
    :sswitch_27
    const-string v8, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v6

    .line 60
    .local v6, "_result":Landroid/nfc/INfcCardEmulation;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v6, :cond_39

    invoke-interface {v6}, Landroid/nfc/INfcCardEmulation;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_39
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_a

    .line 66
    .end local v6    # "_result":Landroid/nfc/INfcCardEmulation;
    :sswitch_3d
    const-string v8, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v6

    .line 70
    .local v6, "_result":Landroid/nfc/INfcAdapterExtras;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v6, :cond_53

    invoke-interface {v6}, Landroid/nfc/INfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_53
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_a

    .line 76
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Landroid/nfc/INfcAdapterExtras;
    :sswitch_57
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    move-result v6

    .line 78
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 84
    .end local v6    # "_result":I
    :sswitch_67
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_81

    move v1, v7

    .line 87
    .local v1, "_arg0":Z
    :goto_73
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->disable(Z)Z

    move-result v6

    .line 88
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v6, :cond_7d

    move v8, v7

    :cond_7d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_81
    move v1, v8

    .line 86
    goto :goto_73

    .line 94
    :sswitch_83
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v6

    .line 96
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v6, :cond_92

    move v8, v7

    :cond_92
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 102
    .end local v6    # "_result":Z
    :sswitch_97
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->enableNdefPush()Z

    move-result v6

    .line 104
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v6, :cond_a6

    move v8, v7

    :cond_a6
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 110
    .end local v6    # "_result":Z
    :sswitch_ab
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->disableNdefPush()Z

    move-result v6

    .line 112
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v6, :cond_ba

    move v8, v7

    :cond_ba
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 118
    .end local v6    # "_result":Z
    :sswitch_bf
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isNdefPushEnabled()Z

    move-result v6

    .line 120
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v6, :cond_ce

    move v8, v7

    :cond_ce
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 126
    .end local v6    # "_result":Z
    :sswitch_d3
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 129
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->pausePolling(I)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 135
    .end local v1    # "_arg0":I
    :sswitch_e4
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->resumePolling()V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 142
    :sswitch_f1
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_122

    .line 145
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 151
    .local v1, "_arg0":Landroid/app/PendingIntent;
    :goto_104
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/IntentFilter;

    .line 153
    .local v2, "_arg1":[Landroid/content/IntentFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_124

    .line 154
    sget-object v0, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/TechListParcel;

    .line 159
    .local v3, "_arg2":Landroid/nfc/TechListParcel;
    :goto_11a
    invoke-virtual {p0, v1, v2, v3}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 148
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    .end local v2    # "_arg1":[Landroid/content/IntentFilter;
    .end local v3    # "_arg2":Landroid/nfc/TechListParcel;
    :cond_122
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_104

    .line 157
    .restart local v2    # "_arg1":[Landroid/content/IntentFilter;
    :cond_124
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/nfc/TechListParcel;
    goto :goto_11a

    .line 165
    .end local v1    # "_arg0":Landroid/app/PendingIntent;
    .end local v2    # "_arg1":[Landroid/content/IntentFilter;
    .end local v3    # "_arg2":Landroid/nfc/TechListParcel;
    :sswitch_126
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v1

    .line 168
    .local v1, "_arg0":Landroid/nfc/IAppCallback;
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->setAppCallback(Landroid/nfc/IAppCallback;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 174
    .end local v1    # "_arg0":Landroid/nfc/IAppCallback;
    :sswitch_13b
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->invokeBeam()V

    goto/16 :goto_a

    .line 180
    :sswitch_145
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15d

    .line 183
    sget-object v0, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/BeamShareData;

    .line 188
    .local v1, "_arg0":Landroid/nfc/BeamShareData;
    :goto_158
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V

    goto/16 :goto_a

    .line 186
    .end local v1    # "_arg0":Landroid/nfc/BeamShareData;
    :cond_15d
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/nfc/BeamShareData;
    goto :goto_158

    .line 193
    .end local v1    # "_arg0":Landroid/nfc/BeamShareData;
    :sswitch_15f
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17a

    .line 196
    sget-object v0, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/Tag;

    .line 201
    .local v1, "_arg0":Landroid/nfc/Tag;
    :goto_172
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->dispatch(Landroid/nfc/Tag;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 199
    .end local v1    # "_arg0":Landroid/nfc/Tag;
    :cond_17a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/nfc/Tag;
    goto :goto_172

    .line 207
    .end local v1    # "_arg0":Landroid/nfc/Tag;
    :sswitch_17c
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 211
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v2

    .line 213
    .local v2, "_arg1":Landroid/nfc/IAppCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 215
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a7

    .line 216
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 221
    .local v4, "_arg3":Landroid/os/Bundle;
    :goto_19f
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/nfc/INfcAdapter$Stub;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 219
    .end local v4    # "_arg3":Landroid/os/Bundle;
    :cond_1a7
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/Bundle;
    goto :goto_19f

    .line 227
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/nfc/IAppCallback;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/Bundle;
    :sswitch_1a9
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 231
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 232
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->setP2pModes(II)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 238
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_1be
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 244
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 248
    .local v4, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, "_arg4":[B
    move-object v0, p0

    .line 249
    invoke-virtual/range {v0 .. v5}, Landroid/nfc/INfcAdapter$Stub;->createSecNdefService(Ljava/lang/String;ILjava/lang/String;[B[B)I

    move-result v6

    .line 250
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 256
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":[B
    .end local v6    # "_result":I
    :sswitch_1e4
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 259
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->closeSecNdefService(I)I

    move-result v6

    .line 260
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 266
    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_1f9
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 270
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21c

    .line 271
    sget-object v0, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NdefMessage;

    .line 276
    .local v2, "_arg1":Landroid/nfc/NdefMessage;
    :goto_210
    invoke-virtual {p0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->sendSecNdefMsg(ILandroid/nfc/NdefMessage;)I

    move-result v6

    .line 277
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 274
    .end local v2    # "_arg1":Landroid/nfc/NdefMessage;
    .end local v6    # "_result":I
    :cond_21c
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/nfc/NdefMessage;
    goto :goto_210

    .line 283
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/nfc/NdefMessage;
    :sswitch_21e
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23d

    .line 286
    sget-object v0, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NdefMessage;

    .line 291
    .local v1, "_arg0":Landroid/nfc/NdefMessage;
    :goto_231
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->sendSecDefaultNdefMsg(Landroid/nfc/NdefMessage;)I

    move-result v6

    .line 292
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 289
    .end local v1    # "_arg0":Landroid/nfc/NdefMessage;
    .end local v6    # "_result":I
    :cond_23d
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/nfc/NdefMessage;
    goto :goto_231

    .line 298
    .end local v1    # "_arg0":Landroid/nfc/NdefMessage;
    :sswitch_23f
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25a

    move v1, v7

    .line 301
    .local v1, "_arg0":Z
    :goto_24b
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->enableSecNdef(Z)Z

    move-result v6

    .line 302
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    if-eqz v6, :cond_255

    move v8, v7

    :cond_255
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_25a
    move v1, v8

    .line 300
    goto :goto_24b

    .line 308
    :sswitch_25c
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->isSecNdefEnabled()Z

    move-result v6

    .line 310
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    if-eqz v6, :cond_26b

    move v8, v7

    :cond_26b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 316
    .end local v6    # "_result":Z
    :sswitch_270
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 319
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->setFilterList([B)Z

    move-result v6

    .line 320
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    if-eqz v6, :cond_283

    move v8, v7

    :cond_283
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 326
    .end local v1    # "_arg0":[B
    .end local v6    # "_result":Z
    :sswitch_288
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 329
    .local v1, "_arg0":B
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->enableFilterCondition(B)Z

    move-result v6

    .line 330
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    if-eqz v6, :cond_29b

    move v8, v7

    :cond_29b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 336
    .end local v1    # "_arg0":B
    .end local v6    # "_result":Z
    :sswitch_2a0
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 339
    .restart local v1    # "_arg0":B
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->disableFilterCondition(B)Z

    move-result v6

    .line 340
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    if-eqz v6, :cond_2b3

    move v8, v7

    :cond_2b3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 346
    .end local v1    # "_arg0":B
    .end local v6    # "_result":Z
    :sswitch_2b8
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v1

    .line 350
    .local v1, "_arg0":Landroid/nfc/INfcUnlockHandler;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 351
    .local v2, "_arg1":[I
    invoke-virtual {p0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 357
    .end local v1    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    .end local v2    # "_arg1":[I
    :sswitch_2d1
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v1

    .line 360
    .restart local v1    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 366
    .end local v1    # "_arg0":Landroid/nfc/INfcUnlockHandler;
    :sswitch_2e6
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2fe

    move v2, v7

    .line 371
    .local v2, "_arg1":Z
    :goto_2f6
    invoke-virtual {p0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->enableDisableSeTestMode(Ljava/lang/String;Z)V

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .end local v2    # "_arg1":Z
    :cond_2fe
    move v2, v8

    .line 370
    goto :goto_2f6

    .line 377
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_300
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 380
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->setDefaultRoutingDestination(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 386
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_311
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->getDefaultRoutingDestination()Ljava/lang/String;

    move-result-object v6

    .line 388
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 394
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_322
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->readerDisable()Z

    move-result v6

    .line 396
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    if-eqz v6, :cond_331

    move v8, v7

    :cond_331
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 402
    .end local v6    # "_result":Z
    :sswitch_336
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->readerEnable()Z

    move-result v6

    .line 404
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v6, :cond_345

    move v8, v7

    :cond_345
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 410
    .end local v6    # "_result":Z
    :sswitch_34a
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 414
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/nfc/INfcAdapter$Stub;->isTrustedPkg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 416
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    if-eqz v6, :cond_361

    move v8, v7

    :cond_361
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 422
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_366
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->startCoverAuth()[B

    move-result-object v6

    .line 424
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_a

    .line 430
    .end local v6    # "_result":[B
    :sswitch_377
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 433
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/nfc/INfcAdapter$Stub;->transceiveAuthData([B)[B

    move-result-object v6

    .line 434
    .restart local v6    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_a

    .line 440
    .end local v1    # "_arg0":[B
    .end local v6    # "_result":[B
    :sswitch_38c
    const-string v0, "android.nfc.INfcAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Landroid/nfc/INfcAdapter$Stub;->stopCoverAuth()Z

    move-result v6

    .line 442
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    if-eqz v6, :cond_39b

    move v8, v7

    :cond_39b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 41
    :sswitch_data_3a0
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_27
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_57
        0x5 -> :sswitch_67
        0x6 -> :sswitch_83
        0x7 -> :sswitch_97
        0x8 -> :sswitch_ab
        0x9 -> :sswitch_bf
        0xa -> :sswitch_d3
        0xb -> :sswitch_e4
        0xc -> :sswitch_f1
        0xd -> :sswitch_126
        0xe -> :sswitch_13b
        0xf -> :sswitch_145
        0x10 -> :sswitch_15f
        0x11 -> :sswitch_17c
        0x12 -> :sswitch_1a9
        0x13 -> :sswitch_1be
        0x14 -> :sswitch_1e4
        0x15 -> :sswitch_1f9
        0x16 -> :sswitch_21e
        0x17 -> :sswitch_23f
        0x18 -> :sswitch_25c
        0x19 -> :sswitch_270
        0x1a -> :sswitch_288
        0x1b -> :sswitch_2a0
        0x1c -> :sswitch_2b8
        0x1d -> :sswitch_2d1
        0x1e -> :sswitch_2e6
        0x1f -> :sswitch_300
        0x20 -> :sswitch_311
        0x21 -> :sswitch_322
        0x22 -> :sswitch_336
        0x23 -> :sswitch_34a
        0x24 -> :sswitch_366
        0x25 -> :sswitch_377
        0x26 -> :sswitch_38c
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
