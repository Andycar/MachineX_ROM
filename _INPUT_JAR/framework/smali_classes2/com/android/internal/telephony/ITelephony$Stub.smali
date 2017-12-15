.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_IsDomesticRoaming:I = 0x7d

.field static final TRANSACTION_IsInternationalRoaming:I = 0x7c

.field static final TRANSACTION_NSRI_requestProc:I = 0xa7

.field static final TRANSACTION_SimSlotActivation:I = 0x90

.field static final TRANSACTION_SimSlotOnOff:I = 0x8f

.field static final TRANSACTION_answerRingingCall:I = 0x8

.field static final TRANSACTION_answerRingingCallForSubscriber:I = 0x9

.field static final TRANSACTION_calculateAkaResponse:I = 0x95

.field static final TRANSACTION_calculateGbaBootstrappingResponse:I = 0x96

.field static final TRANSACTION_calculateNafExternalKey:I = 0x97

.field static final TRANSACTION_call:I = 0x4

.field static final TRANSACTION_callForSubscriber:I = 0x5

.field static final TRANSACTION_checkCarrierPrivilegesForPackage:I = 0x5f

.field static final TRANSACTION_checkNSRIUSIMstate_int:I = 0xa6

.field static final TRANSACTION_dial:I = 0x2

.field static final TRANSACTION_dialForSubscriber:I = 0x3

.field static final TRANSACTION_disableDataConnectivity:I = 0x2a

.field static final TRANSACTION_disableLocationUpdates:I = 0x27

.field static final TRANSACTION_disableLocationUpdatesForSubscriber:I = 0x28

.field static final TRANSACTION_enableDataConnectivity:I = 0x29

.field static final TRANSACTION_enableLocationUpdates:I = 0x25

.field static final TRANSACTION_enableLocationUpdatesForSubscriber:I = 0x26

.field static final TRANSACTION_enableSimplifiedNetworkSettingsForSubscriber:I = 0x61

.field static final TRANSACTION_endCall:I = 0x6

.field static final TRANSACTION_endCallForSubscriber:I = 0x7

.field static final TRANSACTION_getActivePhoneType:I = 0x33

.field static final TRANSACTION_getActivePhoneTypeForSubscriber:I = 0x34

.field static final TRANSACTION_getAllCellInfo:I = 0x48

.field static final TRANSACTION_getAtr:I = 0x75

.field static final TRANSACTION_getCalculatedPreferredNetworkType:I = 0x55

.field static final TRANSACTION_getCallState:I = 0x2e

.field static final TRANSACTION_getCallStateForSubscriber:I = 0x2f

.field static final TRANSACTION_getCarrierPackageNamesForIntent:I = 0x60

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x35

.field static final TRANSACTION_getCdmaEriIconIndexForSubscriber:I = 0x36

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x37

.field static final TRANSACTION_getCdmaEriIconModeForSubscriber:I = 0x38

.field static final TRANSACTION_getCdmaEriText:I = 0x39

.field static final TRANSACTION_getCdmaEriTextForSubscriber:I = 0x3a

.field static final TRANSACTION_getCdmaMdn:I = 0x5c

.field static final TRANSACTION_getCdmaMin:I = 0x5d

.field static final TRANSACTION_getCellLocation:I = 0x2c

.field static final TRANSACTION_getCurrentUATI:I = 0x85

.field static final TRANSACTION_getDataActivity:I = 0x30

.field static final TRANSACTION_getDataEnabled:I = 0x59

.field static final TRANSACTION_getDataNetworkType:I = 0x40

.field static final TRANSACTION_getDataNetworkTypeForSubscriber:I = 0x41

.field static final TRANSACTION_getDataRoamingEnabled:I = 0x6c

.field static final TRANSACTION_getDataRoamingEnabledUsingSubID:I = 0x6d

.field static final TRANSACTION_getDataServiceState:I = 0x73

.field static final TRANSACTION_getDataServiceStateUsingSubId:I = 0x74

.field static final TRANSACTION_getDataState:I = 0x31

.field static final TRANSACTION_getDataStateSimSlot:I = 0x32

.field static final TRANSACTION_getDefaultSim:I = 0x4a

.field static final TRANSACTION_getHandsetInfo:I = 0x87

.field static final TRANSACTION_getImei:I = 0x78

.field static final TRANSACTION_getLgt3GDataStatus:I = 0x89

.field static final TRANSACTION_getLgtOzStartPage:I = 0x8a

.field static final TRANSACTION_getLine1AlphaTagForDisplay:I = 0x65

.field static final TRANSACTION_getLine1NumberForDisplay:I = 0x64

.field static final TRANSACTION_getLteCellInfo:I = 0x84

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x46

.field static final TRANSACTION_getLteOnCdmaModeForSubscriber:I = 0x47

.field static final TRANSACTION_getMeid:I = 0x77

.field static final TRANSACTION_getMobileQualityInformation:I = 0x7f

.field static final TRANSACTION_getMultiSimForegroundPhoneId:I = 0x9d

.field static final TRANSACTION_getMultiSimLastRejectIncomingCallPhoneId:I = 0x9b

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x2d

.field static final TRANSACTION_getNetworkType:I = 0x3e

.field static final TRANSACTION_getNetworkTypeForSubscriber:I = 0x3f

.field static final TRANSACTION_getPcscfAddress:I = 0x5a

.field static final TRANSACTION_getPhoneServiceState:I = 0x88

.field static final TRANSACTION_getPreferredNetworkType:I = 0x56

.field static final TRANSACTION_getSdnAvailable:I = 0x7b

.field static final TRANSACTION_getSelectedApn:I = 0x6f

.field static final TRANSACTION_getServiceState:I = 0x71

.field static final TRANSACTION_getServiceStateUsingSubId:I = 0x72

.field static final TRANSACTION_getSimPinRetry:I = 0x79

.field static final TRANSACTION_getSimPinRetryForSubscriber:I = 0x8c

.field static final TRANSACTION_getSimPukRetry:I = 0x7a

.field static final TRANSACTION_getSimPukRetryForSubscriber:I = 0x8d

.field static final TRANSACTION_getSimplifiedNetworkSettingsEnabledForSubscriber:I = 0x62

.field static final TRANSACTION_getTimeInfo:I = 0x82

.field static final TRANSACTION_getVoiceMessageCount:I = 0x3c

.field static final TRANSACTION_getVoiceMessageCountForSubscriber:I = 0x3d

.field static final TRANSACTION_getVoiceNetworkType:I = 0x42

.field static final TRANSACTION_getVoiceNetworkTypeForSubscriber:I = 0x43

.field static final TRANSACTION_getWipiSysInfo:I = 0x83

.field static final TRANSACTION_handlePinMmi:I = 0x1c

.field static final TRANSACTION_handlePinMmiForSubscriber:I = 0x1d

.field static final TRANSACTION_hasCarrierPrivileges:I = 0x5e

.field static final TRANSACTION_hasIccCard:I = 0x44

.field static final TRANSACTION_hasIccCardUsingSlotId:I = 0x45

.field static final TRANSACTION_iccCloseLogicalChannel:I = 0x4c

.field static final TRANSACTION_iccExchangeSimIO:I = 0x4f

.field static final TRANSACTION_iccOpenLogicalChannel:I = 0x4b

.field static final TRANSACTION_iccTransmitApduBasicChannel:I = 0x4e

.field static final TRANSACTION_iccTransmitApduLogicalChannel:I = 0x4d

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x67

.field static final TRANSACTION_isApnTypeAvailable:I = 0xa8

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x2b

.field static final TRANSACTION_isDualBTConnection:I = 0xa2

.field static final TRANSACTION_isIdle:I = 0xf

.field static final TRANSACTION_isIdleForSubscriber:I = 0x10

.field static final TRANSACTION_isImsCall:I = 0x9e

.field static final TRANSACTION_isOffhook:I = 0xb

.field static final TRANSACTION_isOffhookForSubscriber:I = 0xc

.field static final TRANSACTION_isRadioOn:I = 0x11

.field static final TRANSACTION_isRadioOnForSubscriber:I = 0x12

.field static final TRANSACTION_isRinging:I = 0xe

.field static final TRANSACTION_isRingingForSubscriber:I = 0xd

.field static final TRANSACTION_isSimFDNEnabled:I = 0x6b

.field static final TRANSACTION_isSimPinEnabled:I = 0x13

.field static final TRANSACTION_isVideoCall:I = 0x6a

.field static final TRANSACTION_needMobileRadioShutdown:I = 0x68

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x3b

.field static final TRANSACTION_notifyMissedCall:I = 0x1

.field static final TRANSACTION_notifyVoIPCallStateChangeIntoBT:I = 0xa1

.field static final TRANSACTION_nvReadItem:I = 0x51

.field static final TRANSACTION_nvResetConfig:I = 0x54

.field static final TRANSACTION_nvWriteCdmaPrl:I = 0x53

.field static final TRANSACTION_nvWriteItem:I = 0x52

.field static final TRANSACTION_sendEnvelopeWithStatus:I = 0x50

.field static final TRANSACTION_sendRequestRawToRIL:I = 0x86

.field static final TRANSACTION_sendRequestToRIL:I = 0x7e

.field static final TRANSACTION_setBTUserWantsAudioOn:I = 0x9f

.field static final TRANSACTION_setBTUserWantsSwitchAudio:I = 0xa0

.field static final TRANSACTION_setCellInfoListRate:I = 0x49

.field static final TRANSACTION_setDataEnabled:I = 0x58

.field static final TRANSACTION_setDataRoamingEnabled:I = 0x6e

.field static final TRANSACTION_setDmCmd:I = 0x8b

.field static final TRANSACTION_setEPSLOCI:I = 0x99

.field static final TRANSACTION_setGbaBootstrappingParams:I = 0x98

.field static final TRANSACTION_setImsRegistrationState:I = 0x5b

.field static final TRANSACTION_setLine1NumberForDisplayForSubscriber:I = 0x63

.field static final TRANSACTION_setMultiSimForegroundPhoneId:I = 0x9c

.field static final TRANSACTION_setMultiSimLastRejectIncomingCallPhoneId:I = 0x9a

.field static final TRANSACTION_setOperatorBrandOverride:I = 0x66

.field static final TRANSACTION_setPreferredNetworkType:I = 0x57

.field static final TRANSACTION_setRadio:I = 0x20

.field static final TRANSACTION_setRadioForSubscriber:I = 0x21

.field static final TRANSACTION_setRadioPower:I = 0x22

.field static final TRANSACTION_setSelectedApn:I = 0x70

.field static final TRANSACTION_setTransmitPower:I = 0x76

.field static final TRANSACTION_shutdownMobileRadios:I = 0x69

.field static final TRANSACTION_silenceRinger:I = 0xa

.field static final TRANSACTION_sms_NSRI_decryptsms:I = 0xa4

.field static final TRANSACTION_sms_NSRI_decryptsmsintxside:I = 0xa5

.field static final TRANSACTION_sms_NSRI_encryptsms:I = 0xa3

.field static final TRANSACTION_startGlobalNetworkSearchTimer:I = 0x91

.field static final TRANSACTION_startGlobalNoSvcChkTimer:I = 0x93

.field static final TRANSACTION_startMobileQualityInformation:I = 0x80

.field static final TRANSACTION_stopGlobalNetworkSearchTimer:I = 0x92

.field static final TRANSACTION_stopGlobalNoSvcChkTimer:I = 0x94

.field static final TRANSACTION_stopMobileQualityInformation:I = 0x81

.field static final TRANSACTION_supplyPerso:I = 0x8e

.field static final TRANSACTION_supplyPin:I = 0x14

.field static final TRANSACTION_supplyPinForSubscriber:I = 0x15

.field static final TRANSACTION_supplyPinReportResult:I = 0x18

.field static final TRANSACTION_supplyPinReportResultForSubscriber:I = 0x19

.field static final TRANSACTION_supplyPuk:I = 0x16

.field static final TRANSACTION_supplyPukForSubscriber:I = 0x17

.field static final TRANSACTION_supplyPukReportResult:I = 0x1a

.field static final TRANSACTION_supplyPukReportResultForSubscriber:I = 0x1b

.field static final TRANSACTION_toggleRadioOnOff:I = 0x1e

.field static final TRANSACTION_toggleRadioOnOffForSubscriber:I = 0x1f

.field static final TRANSACTION_updateServiceLocation:I = 0x23

.field static final TRANSACTION_updateServiceLocationForSubscriber:I = 0x24


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 31
    if-nez p0, :cond_4

    .line 32
    const/4 v0, 0x0

    .line 38
    :goto_3
    return-object v0

    .line 34
    :cond_4
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_13

    .line 36
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    goto :goto_3

    .line 38
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 30
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
    .line 46
    sparse-switch p1, :sswitch_data_1318

    .line 1689
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_7
    return v4

    .line 50
    :sswitch_8
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    const/4 v4, 0x1

    goto :goto_7

    .line 55
    :sswitch_11
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .local v8, "_arg3":J
    move-object/from16 v4, p0

    .line 64
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/4 v4, 0x1

    goto :goto_7

    .line 70
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":J
    :sswitch_32
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 73
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v4, 0x1

    goto :goto_7

    .line 79
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_47
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 83
    .local v18, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 84
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->dialForSubscriber(JLjava/lang/String;)V

    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    const/4 v4, 0x1

    goto :goto_7

    .line 90
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg0":J
    :sswitch_62
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 94
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 95
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    const/4 v4, 0x1

    goto :goto_7

    .line 101
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_7b
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 105
    .restart local v18    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 107
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 108
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->callForSubscriber(JLjava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 114
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg0":J
    :sswitch_9b
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v21

    .line 116
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v21, :cond_b4

    const/4 v4, 0x1

    :goto_ac
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 117
    :cond_b4
    const/4 v4, 0x0

    goto :goto_ac

    .line 122
    .end local v21    # "_result":Z
    :sswitch_b6
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 125
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->endCallForSubscriber(J)Z

    move-result v21

    .line 126
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v21, :cond_d7

    const/4 v4, 0x1

    :goto_cf
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 127
    :cond_d7
    const/4 v4, 0x0

    goto :goto_cf

    .line 132
    .end local v18    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_d9
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 139
    :sswitch_e9
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 142
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCallForSubscriber(J)V

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 148
    .end local v18    # "_arg0":J
    :sswitch_101
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 155
    :sswitch_111
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v21

    .line 157
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v21, :cond_12a

    const/4 v4, 0x1

    :goto_122
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 158
    :cond_12a
    const/4 v4, 0x0

    goto :goto_122

    .line 163
    .end local v21    # "_result":Z
    :sswitch_12c
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 166
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhookForSubscriber(J)Z

    move-result v21

    .line 167
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v21, :cond_14d

    const/4 v4, 0x1

    :goto_145
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 168
    :cond_14d
    const/4 v4, 0x0

    goto :goto_145

    .line 173
    .end local v18    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_14f
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 176
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingingForSubscriber(J)Z

    move-result v21

    .line 177
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v21, :cond_170

    const/4 v4, 0x1

    :goto_168
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 178
    :cond_170
    const/4 v4, 0x0

    goto :goto_168

    .line 183
    .end local v18    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_172
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v21

    .line 185
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v21, :cond_18b

    const/4 v4, 0x1

    :goto_183
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 186
    :cond_18b
    const/4 v4, 0x0

    goto :goto_183

    .line 191
    .end local v21    # "_result":Z
    :sswitch_18d
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v21

    .line 193
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v21, :cond_1a6

    const/4 v4, 0x1

    :goto_19e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 194
    :cond_1a6
    const/4 v4, 0x0

    goto :goto_19e

    .line 199
    .end local v21    # "_result":Z
    :sswitch_1a8
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 202
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdleForSubscriber(J)Z

    move-result v21

    .line 203
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v21, :cond_1c9

    const/4 v4, 0x1

    :goto_1c1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 204
    :cond_1c9
    const/4 v4, 0x0

    goto :goto_1c1

    .line 209
    .end local v18    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_1cb
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v21

    .line 211
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    if-eqz v21, :cond_1e4

    const/4 v4, 0x1

    :goto_1dc
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 212
    :cond_1e4
    const/4 v4, 0x0

    goto :goto_1dc

    .line 217
    .end local v21    # "_result":Z
    :sswitch_1e6
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 220
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriber(J)Z

    move-result v21

    .line 221
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v21, :cond_207

    const/4 v4, 0x1

    :goto_1ff
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 222
    :cond_207
    const/4 v4, 0x0

    goto :goto_1ff

    .line 227
    .end local v18    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_209
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v21

    .line 229
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v21, :cond_222

    const/4 v4, 0x1

    :goto_21a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 230
    :cond_222
    const/4 v4, 0x0

    goto :goto_21a

    .line 235
    .end local v21    # "_result":Z
    :sswitch_224
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 238
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v21

    .line 239
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v21, :cond_243

    const/4 v4, 0x1

    :goto_23b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 240
    :cond_243
    const/4 v4, 0x0

    goto :goto_23b

    .line 245
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_245
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 249
    .restart local v18    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 250
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinForSubscriber(JLjava/lang/String;)Z

    move-result v21

    .line 251
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v21, :cond_26a

    const/4 v4, 0x1

    :goto_262
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 252
    :cond_26a
    const/4 v4, 0x0

    goto :goto_262

    .line 257
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_26c
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 261
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 262
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    .line 263
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    if-eqz v21, :cond_28f

    const/4 v4, 0x1

    :goto_287
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 264
    :cond_28f
    const/4 v4, 0x0

    goto :goto_287

    .line 269
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_291
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 273
    .restart local v18    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 275
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 276
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukForSubscriber(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v21

    .line 277
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    if-eqz v21, :cond_2ba

    const/4 v4, 0x1

    :goto_2b2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 278
    :cond_2ba
    const/4 v4, 0x0

    goto :goto_2b2

    .line 283
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_2bc
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 286
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResult(Ljava/lang/String;)[I

    move-result-object v21

    .line 287
    .local v21, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 289
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 293
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":[I
    :sswitch_2da
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 297
    .restart local v18    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 298
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResultForSubscriber(JLjava/lang/String;)[I

    move-result-object v21

    .line 299
    .restart local v21    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 301
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 305
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg0":J
    .end local v21    # "_result":[I
    :sswitch_2fe
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 309
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 310
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v21

    .line 311
    .restart local v21    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 313
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 317
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v21    # "_result":[I
    :sswitch_320
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 321
    .restart local v18    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 323
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 324
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResultForSubscriber(JLjava/lang/String;Ljava/lang/String;)[I

    move-result-object v21

    .line 325
    .restart local v21    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 327
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 331
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg0":J
    .end local v21    # "_result":[I
    :sswitch_348
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 334
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v21

    .line 335
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    if-eqz v21, :cond_367

    const/4 v4, 0x1

    :goto_35f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 336
    :cond_367
    const/4 v4, 0x0

    goto :goto_35f

    .line 341
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_369
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 345
    .restart local v18    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 346
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiForSubscriber(JLjava/lang/String;)Z

    move-result v21

    .line 347
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v21, :cond_38e

    const/4 v4, 0x1

    :goto_386
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 348
    :cond_38e
    const/4 v4, 0x0

    goto :goto_386

    .line 353
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_390
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 360
    :sswitch_3a0
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 363
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOffForSubscriber(J)V

    .line 364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 369
    .end local v18    # "_arg0":J
    :sswitch_3b8
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3da

    const/4 v5, 0x1

    .line 372
    .local v5, "_arg0":Z
    :goto_3c6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v21

    .line 373
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v21, :cond_3dc

    const/4 v4, 0x1

    :goto_3d2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 371
    .end local v5    # "_arg0":Z
    .end local v21    # "_result":Z
    :cond_3da
    const/4 v5, 0x0

    goto :goto_3c6

    .line 374
    .restart local v5    # "_arg0":Z
    .restart local v21    # "_result":Z
    :cond_3dc
    const/4 v4, 0x0

    goto :goto_3d2

    .line 379
    .end local v5    # "_arg0":Z
    .end local v21    # "_result":Z
    :sswitch_3de
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 383
    .restart local v18    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_406

    const/4 v6, 0x1

    .line 384
    .local v6, "_arg1":Z
    :goto_3f0
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioForSubscriber(JZ)Z

    move-result v21

    .line 385
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v21, :cond_408

    const/4 v4, 0x1

    :goto_3fe
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 383
    .end local v6    # "_arg1":Z
    .end local v21    # "_result":Z
    :cond_406
    const/4 v6, 0x0

    goto :goto_3f0

    .line 386
    .restart local v6    # "_arg1":Z
    .restart local v21    # "_result":Z
    :cond_408
    const/4 v4, 0x0

    goto :goto_3fe

    .line 391
    .end local v6    # "_arg1":Z
    .end local v18    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_40a
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_42c

    const/4 v5, 0x1

    .line 394
    .restart local v5    # "_arg0":Z
    :goto_418
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    move-result v21

    .line 395
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    if-eqz v21, :cond_42e

    const/4 v4, 0x1

    :goto_424
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 393
    .end local v5    # "_arg0":Z
    .end local v21    # "_result":Z
    :cond_42c
    const/4 v5, 0x0

    goto :goto_418

    .line 396
    .restart local v5    # "_arg0":Z
    .restart local v21    # "_result":Z
    :cond_42e
    const/4 v4, 0x0

    goto :goto_424

    .line 401
    .end local v5    # "_arg0":Z
    .end local v21    # "_result":Z
    :sswitch_430
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 408
    :sswitch_440
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 411
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationForSubscriber(J)V

    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 417
    .end local v18    # "_arg0":J
    :sswitch_458
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 424
    :sswitch_468
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 427
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdatesForSubscriber(J)V

    .line 428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 433
    .end local v18    # "_arg0":J
    :sswitch_480
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 440
    :sswitch_490
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 443
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdatesForSubscriber(J)V

    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 449
    .end local v18    # "_arg0":J
    :sswitch_4a8
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v21

    .line 451
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    if-eqz v21, :cond_4c1

    const/4 v4, 0x1

    :goto_4b9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 452
    :cond_4c1
    const/4 v4, 0x0

    goto :goto_4b9

    .line 457
    .end local v21    # "_result":Z
    :sswitch_4c3
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v21

    .line 459
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v21, :cond_4dc

    const/4 v4, 0x1

    :goto_4d4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 460
    :cond_4dc
    const/4 v4, 0x0

    goto :goto_4d4

    .line 465
    .end local v21    # "_result":Z
    :sswitch_4de
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v21

    .line 467
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    if-eqz v21, :cond_4f7

    const/4 v4, 0x1

    :goto_4ef
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 468
    :cond_4f7
    const/4 v4, 0x0

    goto :goto_4ef

    .line 473
    .end local v21    # "_result":Z
    :sswitch_4f9
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v21

    .line 475
    .local v21, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    if-eqz v21, :cond_51a

    .line 477
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    const/4 v4, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 483
    :goto_517
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 481
    :cond_51a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_517

    .line 487
    .end local v21    # "_result":Landroid/os/Bundle;
    :sswitch_521
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 490
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v23

    .line 491
    .local v23, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 493
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 497
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_53f
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v21

    .line 499
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 505
    .end local v21    # "_result":I
    :sswitch_557
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 508
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateForSubscriber(J)I

    move-result v21

    .line 509
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 515
    .end local v18    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_577
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v21

    .line 517
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 523
    .end local v21    # "_result":I
    :sswitch_58f
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v21

    .line 525
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 531
    .end local v21    # "_result":I
    :sswitch_5a7
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 534
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataStateSimSlot(J)I

    move-result v21

    .line 535
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 541
    .end local v18    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_5c7
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v21

    .line 543
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 549
    .end local v21    # "_result":I
    :sswitch_5df
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 552
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeForSubscriber(J)I

    move-result v21

    .line 553
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 559
    .end local v18    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_5ff
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v21

    .line 561
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 567
    .end local v21    # "_result":I
    :sswitch_617
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 570
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndexForSubscriber(J)I

    move-result v21

    .line 571
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 577
    .end local v18    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_637
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v21

    .line 579
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 585
    .end local v21    # "_result":I
    :sswitch_64f
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 588
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconModeForSubscriber(J)I

    move-result v21

    .line 589
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 595
    .end local v18    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_66f
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v21

    .line 597
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 599
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 603
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_687
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 606
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriTextForSubscriber(J)Ljava/lang/String;

    move-result-object v21

    .line 607
    .restart local v21    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 609
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 613
    .end local v18    # "_arg0":J
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_6a7
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v21

    .line 615
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    if-eqz v21, :cond_6c0

    const/4 v4, 0x1

    :goto_6b8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 616
    :cond_6c0
    const/4 v4, 0x0

    goto :goto_6b8

    .line 621
    .end local v21    # "_result":Z
    :sswitch_6c2
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v21

    .line 623
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 629
    .end local v21    # "_result":I
    :sswitch_6da
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 632
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountForSubscriber(J)I

    move-result v21

    .line 633
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 639
    .end local v18    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_6fa
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v21

    .line 641
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 647
    .end local v21    # "_result":I
    :sswitch_712
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 650
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeForSubscriber(J)I

    move-result v21

    .line 651
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 657
    .end local v18    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_732
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType()I

    move-result v21

    .line 659
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 665
    .end local v21    # "_result":I
    :sswitch_74a
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 668
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkTypeForSubscriber(J)I

    move-result v21

    .line 669
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 675
    .end local v18    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_76a
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkType()I

    move-result v21

    .line 677
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 683
    .end local v21    # "_result":I
    :sswitch_782
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 686
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkTypeForSubscriber(J)I

    move-result v21

    .line 687
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 693
    .end local v18    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_7a2
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v21

    .line 695
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    if-eqz v21, :cond_7bb

    const/4 v4, 0x1

    :goto_7b3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 696
    :cond_7bb
    const/4 v4, 0x0

    goto :goto_7b3

    .line 701
    .end local v21    # "_result":Z
    :sswitch_7bd
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 704
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardUsingSlotId(J)Z

    move-result v21

    .line 705
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    if-eqz v21, :cond_7de

    const/4 v4, 0x1

    :goto_7d6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 706
    :cond_7de
    const/4 v4, 0x0

    goto :goto_7d6

    .line 711
    .end local v18    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_7e0
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode()I

    move-result v21

    .line 713
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 719
    .end local v21    # "_result":I
    :sswitch_7f8
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 722
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaModeForSubscriber(J)I

    move-result v21

    .line 723
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 729
    .end local v18    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_818
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo()Ljava/util/List;

    move-result-object v22

    .line 731
    .local v22, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 733
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 737
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_830
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 740
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(I)V

    .line 741
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 746
    .end local v5    # "_arg0":I
    :sswitch_846
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultSim()I

    move-result v21

    .line 748
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 754
    .end local v21    # "_result":I
    :sswitch_85e
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 757
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v21

    .line 758
    .local v21, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    if-eqz v21, :cond_885

    .line 760
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    const/4 v4, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 766
    :goto_882
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 764
    :cond_885
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_882

    .line 770
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_88c
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 773
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannel(I)Z

    move-result v21

    .line 774
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    if-eqz v21, :cond_8ab

    const/4 v4, 0x1

    :goto_8a3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 775
    :cond_8ab
    const/4 v4, 0x0

    goto :goto_8a3

    .line 780
    .end local v5    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_8ad
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 784
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 786
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 788
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 790
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 792
    .local v15, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 794
    .local v16, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .local v17, "_arg6":Ljava/lang/String;
    move-object/from16 v10, p0

    move v11, v5

    move v12, v6

    move v13, v7

    move v14, v8

    .line 795
    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 796
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 798
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 802
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v15    # "_arg4":I
    .end local v16    # "_arg5":I
    .end local v17    # "_arg6":Ljava/lang/String;
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_8e7
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 806
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 808
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 810
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 812
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 814
    .restart local v15    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, "_arg5":Ljava/lang/String;
    move-object/from16 v10, p0

    move v11, v5

    move v12, v6

    move v13, v7

    move v14, v8

    .line 815
    invoke-virtual/range {v10 .. v16}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 816
    .restart local v21    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 818
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 822
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v15    # "_arg4":I
    .end local v16    # "_arg5":Ljava/lang/String;
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_91d
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 826
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 828
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 830
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 832
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 834
    .restart local v15    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "_arg5":Ljava/lang/String;
    move-object/from16 v10, p0

    move v11, v5

    move v12, v6

    move v13, v7

    move v14, v8

    .line 835
    invoke-virtual/range {v10 .. v16}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIO(IIIIILjava/lang/String;)[B

    move-result-object v21

    .line 836
    .local v21, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 838
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 842
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v15    # "_arg4":I
    .end local v16    # "_arg5":Ljava/lang/String;
    .end local v21    # "_result":[B
    :sswitch_953
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 845
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 846
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 848
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 852
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_971
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 855
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->nvReadItem(I)Ljava/lang/String;

    move-result-object v21

    .line 856
    .restart local v21    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 858
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 862
    .end local v5    # "_arg0":I
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_98f
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 866
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 867
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteItem(ILjava/lang/String;)Z

    move-result v21

    .line 868
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    if-eqz v21, :cond_9b2

    const/4 v4, 0x1

    :goto_9aa
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 869
    :cond_9b2
    const/4 v4, 0x0

    goto :goto_9aa

    .line 874
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_9b4
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 877
    .local v5, "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteCdmaPrl([B)Z

    move-result v21

    .line 878
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    if-eqz v21, :cond_9d3

    const/4 v4, 0x1

    :goto_9cb
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 880
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 879
    :cond_9d3
    const/4 v4, 0x0

    goto :goto_9cb

    .line 884
    .end local v5    # "_arg0":[B
    .end local v21    # "_result":Z
    :sswitch_9d5
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 887
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->nvResetConfig(I)Z

    move-result v21

    .line 888
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    if-eqz v21, :cond_9f4

    const/4 v4, 0x1

    :goto_9ec
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 889
    :cond_9f4
    const/4 v4, 0x0

    goto :goto_9ec

    .line 894
    .end local v5    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_9f6
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCalculatedPreferredNetworkType()I

    move-result v21

    .line 896
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 898
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 902
    .end local v21    # "_result":I
    :sswitch_a0e
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreferredNetworkType()I

    move-result v21

    .line 904
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 910
    .end local v21    # "_result":I
    :sswitch_a26
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 913
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setPreferredNetworkType(I)Z

    move-result v21

    .line 914
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    if-eqz v21, :cond_a45

    const/4 v4, 0x1

    :goto_a3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 916
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 915
    :cond_a45
    const/4 v4, 0x0

    goto :goto_a3d

    .line 920
    .end local v5    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_a47
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a60

    const/4 v5, 0x1

    .line 923
    .local v5, "_arg0":Z
    :goto_a55
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataEnabled(Z)V

    .line 924
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 925
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 922
    .end local v5    # "_arg0":Z
    :cond_a60
    const/4 v5, 0x0

    goto :goto_a55

    .line 929
    :sswitch_a62
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataEnabled()Z

    move-result v21

    .line 931
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    if-eqz v21, :cond_a7b

    const/4 v4, 0x1

    :goto_a73
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 932
    :cond_a7b
    const/4 v4, 0x0

    goto :goto_a73

    .line 937
    .end local v21    # "_result":Z
    :sswitch_a7d
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 940
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 941
    .local v21, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 943
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 947
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":[Ljava/lang/String;
    :sswitch_a9b
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ab4

    const/4 v5, 0x1

    .line 950
    .local v5, "_arg0":Z
    :goto_aa9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsRegistrationState(Z)V

    .line 951
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 949
    .end local v5    # "_arg0":Z
    :cond_ab4
    const/4 v5, 0x0

    goto :goto_aa9

    .line 956
    :sswitch_ab6
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 959
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMdn(J)Ljava/lang/String;

    move-result-object v21

    .line 960
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 962
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 966
    .end local v18    # "_arg0":J
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_ad6
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 968
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 969
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMin(J)Ljava/lang/String;

    move-result-object v21

    .line 970
    .restart local v21    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 972
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 976
    .end local v18    # "_arg0":J
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_af6
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasCarrierPrivileges()I

    move-result v21

    .line 978
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 980
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 984
    .end local v21    # "_result":I
    :sswitch_b0e
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 987
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v21

    .line 988
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 990
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 994
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":I
    :sswitch_b2c
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b56

    .line 997
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 1002
    .local v5, "_arg0":Landroid/content/Intent;
    :goto_b43
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v24

    .line 1003
    .local v24, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1005
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1000
    .end local v5    # "_arg0":Landroid/content/Intent;
    .end local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b56
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/Intent;
    goto :goto_b43

    .line 1009
    .end local v5    # "_arg0":Landroid/content/Intent;
    :sswitch_b58
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 1013
    .restart local v18    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b77

    const/4 v6, 0x1

    .line 1014
    .local v6, "_arg1":Z
    :goto_b6a
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->enableSimplifiedNetworkSettingsForSubscriber(JZ)V

    .line 1015
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1013
    .end local v6    # "_arg1":Z
    :cond_b77
    const/4 v6, 0x0

    goto :goto_b6a

    .line 1020
    .end local v18    # "_arg0":J
    :sswitch_b79
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 1023
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimplifiedNetworkSettingsEnabledForSubscriber(J)Z

    move-result v21

    .line 1024
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    if-eqz v21, :cond_b9a

    const/4 v4, 0x1

    :goto_b92
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1025
    :cond_b9a
    const/4 v4, 0x0

    goto :goto_b92

    .line 1030
    .end local v18    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_b9c
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 1034
    .restart local v18    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1036
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1037
    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setLine1NumberForDisplayForSubscriber(JLjava/lang/String;Ljava/lang/String;)V

    .line 1038
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1043
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg0":J
    :sswitch_bbc
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 1046
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1NumberForDisplay(J)Ljava/lang/String;

    move-result-object v21

    .line 1047
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1049
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1053
    .end local v18    # "_arg0":J
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_bdc
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 1056
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTagForDisplay(J)Ljava/lang/String;

    move-result-object v21

    .line 1057
    .restart local v21    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1059
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1063
    .end local v18    # "_arg0":J
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_bfc
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1066
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result v21

    .line 1067
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    if-eqz v21, :cond_c1b

    const/4 v4, 0x1

    :goto_c13
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1068
    :cond_c1b
    const/4 v4, 0x0

    goto :goto_c13

    .line 1073
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_c1d
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1077
    .local v5, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1078
    .local v20, "_arg1_length":I
    if-gez v20, :cond_c47

    .line 1079
    const/4 v6, 0x0

    .line 1084
    .local v6, "_arg1":[B
    :goto_c2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->invokeOemRilRequestRaw([B[B)I

    move-result v21

    .line 1085
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1087
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1088
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1082
    .end local v6    # "_arg1":[B
    .end local v21    # "_result":I
    :cond_c47
    move/from16 v0, v20

    new-array v6, v0, [B

    .restart local v6    # "_arg1":[B
    goto :goto_c2f

    .line 1092
    .end local v5    # "_arg0":[B
    .end local v6    # "_arg1":[B
    .end local v20    # "_arg1_length":I
    :sswitch_c4c
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needMobileRadioShutdown()Z

    move-result v21

    .line 1094
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    if-eqz v21, :cond_c65

    const/4 v4, 0x1

    :goto_c5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1096
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1095
    :cond_c65
    const/4 v4, 0x0

    goto :goto_c5d

    .line 1100
    .end local v21    # "_result":Z
    :sswitch_c67
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->shutdownMobileRadios()V

    .line 1102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1107
    :sswitch_c77
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCall()Z

    move-result v21

    .line 1109
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    if-eqz v21, :cond_c90

    const/4 v4, 0x1

    :goto_c88
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1110
    :cond_c90
    const/4 v4, 0x0

    goto :goto_c88

    .line 1115
    .end local v21    # "_result":Z
    :sswitch_c92
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1116
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimFDNEnabled()Z

    move-result v21

    .line 1117
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1118
    if-eqz v21, :cond_cab

    const/4 v4, 0x1

    :goto_ca3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1119
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1118
    :cond_cab
    const/4 v4, 0x0

    goto :goto_ca3

    .line 1123
    .end local v21    # "_result":Z
    :sswitch_cad
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1124
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataRoamingEnabled()Z

    move-result v21

    .line 1125
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    if-eqz v21, :cond_cc6

    const/4 v4, 0x1

    :goto_cbe
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1127
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1126
    :cond_cc6
    const/4 v4, 0x0

    goto :goto_cbe

    .line 1131
    .end local v21    # "_result":Z
    :sswitch_cc8
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 1134
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataRoamingEnabledUsingSubID(J)Z

    move-result v21

    .line 1135
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    if-eqz v21, :cond_ce9

    const/4 v4, 0x1

    :goto_ce1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1137
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1136
    :cond_ce9
    const/4 v4, 0x0

    goto :goto_ce1

    .line 1141
    .end local v18    # "_arg0":J
    .end local v21    # "_result":Z
    :sswitch_ceb
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d04

    const/4 v5, 0x1

    .line 1144
    .local v5, "_arg0":Z
    :goto_cf9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataRoamingEnabled(Z)V

    .line 1145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1143
    .end local v5    # "_arg0":Z
    :cond_d04
    const/4 v5, 0x0

    goto :goto_cf9

    .line 1150
    :sswitch_d06
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSelectedApn()Ljava/lang/String;

    move-result-object v21

    .line 1152
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1154
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1158
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_d1e
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setSelectedApn()V

    .line 1160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1165
    :sswitch_d2e
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1166
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceState()I

    move-result v21

    .line 1167
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1169
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1173
    .end local v21    # "_result":I
    :sswitch_d46
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 1176
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceStateUsingSubId(J)I

    move-result v21

    .line 1177
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1183
    .end local v18    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_d66
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1184
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataServiceState()I

    move-result v21

    .line 1185
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1191
    .end local v21    # "_result":I
    :sswitch_d7e
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 1194
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataServiceStateUsingSubId(J)I

    move-result v21

    .line 1195
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1196
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1197
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1201
    .end local v18    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_d9e
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1202
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAtr()[B

    move-result-object v21

    .line 1203
    .local v21, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1205
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1209
    .end local v21    # "_result":[B
    :sswitch_db6
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1212
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setTransmitPower(I)Z

    move-result v21

    .line 1213
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1214
    if-eqz v21, :cond_dd5

    const/4 v4, 0x1

    :goto_dcd
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1215
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1214
    :cond_dd5
    const/4 v4, 0x0

    goto :goto_dcd

    .line 1219
    .end local v5    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_dd7
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1220
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMeid()Ljava/lang/String;

    move-result-object v21

    .line 1221
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1222
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1223
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1227
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_def
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1228
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getImei()Ljava/lang/String;

    move-result-object v21

    .line 1229
    .restart local v21    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1231
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1235
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_e07
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1236
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimPinRetry()I

    move-result v21

    .line 1237
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1238
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1239
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1243
    .end local v21    # "_result":I
    :sswitch_e1f
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1244
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimPukRetry()I

    move-result v21

    .line 1245
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1246
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1247
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1251
    .end local v21    # "_result":I
    :sswitch_e37
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSdnAvailable()Z

    move-result v21

    .line 1253
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1254
    if-eqz v21, :cond_e50

    const/4 v4, 0x1

    :goto_e48
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1255
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1254
    :cond_e50
    const/4 v4, 0x0

    goto :goto_e48

    .line 1259
    .end local v21    # "_result":Z
    :sswitch_e52
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1260
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->IsInternationalRoaming()Z

    move-result v21

    .line 1261
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    if-eqz v21, :cond_e6b

    const/4 v4, 0x1

    :goto_e63
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1262
    :cond_e6b
    const/4 v4, 0x0

    goto :goto_e63

    .line 1267
    .end local v21    # "_result":Z
    :sswitch_e6d
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->IsDomesticRoaming()Z

    move-result v21

    .line 1269
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    if-eqz v21, :cond_e86

    const/4 v4, 0x1

    :goto_e7e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1271
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1270
    :cond_e86
    const/4 v4, 0x0

    goto :goto_e7e

    .line 1275
    .end local v21    # "_result":Z
    :sswitch_e88
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1279
    .local v5, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 1281
    .restart local v6    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1282
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->sendRequestToRIL([B[BI)I

    move-result v21

    .line 1283
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1284
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1286
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1290
    .end local v5    # "_arg0":[B
    .end local v6    # "_arg1":[B
    .end local v7    # "_arg2":I
    .end local v21    # "_result":I
    :sswitch_eb3
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1291
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMobileQualityInformation()Ljava/lang/String;

    move-result-object v21

    .line 1292
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1294
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1298
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_ecb
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1299
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->startMobileQualityInformation()V

    .line 1300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1305
    :sswitch_edb
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1306
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->stopMobileQualityInformation()V

    .line 1307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1312
    :sswitch_eeb
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1313
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTimeInfo()Ljava/lang/String;

    move-result-object v21

    .line 1314
    .restart local v21    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1315
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1316
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1320
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_f03
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getWipiSysInfo()Ljava/lang/String;

    move-result-object v21

    .line 1322
    .restart local v21    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1324
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1328
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_f1b
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1329
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteCellInfo()Ljava/lang/String;

    move-result-object v21

    .line 1330
    .restart local v21    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1332
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1336
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_f33
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1337
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCurrentUATI()[B

    move-result-object v21

    .line 1338
    .local v21, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1340
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1344
    .end local v21    # "_result":[B
    :sswitch_f4b
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1348
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f79

    .line 1349
    sget-object v4, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 1354
    .local v6, "_arg1":Landroid/os/Message;
    :goto_f66
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->sendRequestRawToRIL([BLandroid/os/Message;)I

    move-result v21

    .line 1355
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1357
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1352
    .end local v6    # "_arg1":Landroid/os/Message;
    .end local v21    # "_result":I
    :cond_f79
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/os/Message;
    goto :goto_f66

    .line 1361
    .end local v5    # "_arg0":[B
    .end local v6    # "_arg1":Landroid/os/Message;
    :sswitch_f7b
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1364
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1365
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1366
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1367
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1371
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_f99
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1372
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneServiceState()I

    move-result v21

    .line 1373
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1374
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1375
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1379
    .end local v21    # "_result":I
    :sswitch_fb1
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1382
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getLgt3GDataStatus(I)Ljava/lang/String;

    move-result-object v21

    .line 1383
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1384
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1385
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1389
    .end local v5    # "_arg0":I
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_fcf
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1390
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLgtOzStartPage()Ljava/lang/String;

    move-result-object v21

    .line 1391
    .restart local v21    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1393
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1397
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_fe7
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1401
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 1402
    .local v6, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setDmCmd(I[B)[I

    move-result-object v21

    .line 1403
    .local v21, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1404
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1405
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1409
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":[B
    .end local v21    # "_result":[I
    :sswitch_1009
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 1412
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimPinRetryForSubscriber(J)I

    move-result v21

    .line 1413
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1414
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1415
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1419
    .end local v18    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_1029
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 1422
    .restart local v18    # "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimPukRetryForSubscriber(J)I

    move-result v21

    .line 1423
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1424
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1425
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1429
    .end local v18    # "_arg0":J
    .end local v21    # "_result":I
    :sswitch_1049
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1432
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPerso(Ljava/lang/String;)Z

    move-result v21

    .line 1433
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    if-eqz v21, :cond_1068

    const/4 v4, 0x1

    :goto_1060
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1435
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1434
    :cond_1068
    const/4 v4, 0x0

    goto :goto_1060

    .line 1439
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_106a
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1442
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->SimSlotOnOff(I)V

    .line 1443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1444
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1448
    .end local v5    # "_arg0":I
    :sswitch_1080
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1099

    const/4 v5, 0x1

    .line 1451
    .local v5, "_arg0":Z
    :goto_108e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->SimSlotActivation(Z)V

    .line 1452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1453
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1450
    .end local v5    # "_arg0":Z
    :cond_1099
    const/4 v5, 0x0

    goto :goto_108e

    .line 1457
    :sswitch_109b
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1458
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->startGlobalNetworkSearchTimer()V

    .line 1459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1460
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1464
    :sswitch_10ab
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->stopGlobalNetworkSearchTimer()V

    .line 1466
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1467
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1471
    :sswitch_10bb
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1472
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->startGlobalNoSvcChkTimer()V

    .line 1473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1474
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1478
    :sswitch_10cb
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1479
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->stopGlobalNoSvcChkTimer()V

    .line 1480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1485
    :sswitch_10db
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1489
    .local v5, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 1490
    .restart local v6    # "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->calculateAkaResponse([B[B)Ljava/lang/String;

    move-result-object v21

    .line 1491
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1492
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1493
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1497
    .end local v5    # "_arg0":[B
    .end local v6    # "_arg1":[B
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_10fd
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1501
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 1502
    .restart local v6    # "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;

    move-result-object v21

    .line 1503
    .local v21, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1504
    if-eqz v21, :cond_1128

    .line 1505
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1506
    const/4 v4, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1511
    :goto_1125
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1509
    :cond_1128
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1125

    .line 1515
    .end local v5    # "_arg0":[B
    .end local v6    # "_arg1":[B
    .end local v21    # "_result":Landroid/os/Bundle;
    :sswitch_112f
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1518
    .restart local v5    # "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->calculateNafExternalKey([B)[B

    move-result-object v21

    .line 1519
    .local v21, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1520
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1521
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1525
    .end local v5    # "_arg0":[B
    .end local v21    # "_result":[B
    :sswitch_114d
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1529
    .restart local v5    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1531
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1532
    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V

    .line 1533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1534
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1538
    .end local v5    # "_arg0":[B
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    :sswitch_116b
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 1541
    .restart local v5    # "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setEPSLOCI([B)V

    .line 1542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1543
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1547
    .end local v5    # "_arg0":[B
    :sswitch_1181
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1550
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setMultiSimLastRejectIncomingCallPhoneId(I)V

    .line 1551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1552
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1556
    .end local v5    # "_arg0":I
    :sswitch_1197
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1557
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMultiSimLastRejectIncomingCallPhoneId()I

    move-result v21

    .line 1558
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1559
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1560
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1564
    .end local v21    # "_result":I
    :sswitch_11af
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1567
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setMultiSimForegroundPhoneId(I)V

    .line 1568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1573
    .end local v5    # "_arg0":I
    :sswitch_11c5
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1574
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMultiSimForegroundPhoneId()I

    move-result v21

    .line 1575
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1576
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1577
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1581
    .end local v21    # "_result":I
    :sswitch_11dd
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1582
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isImsCall()Z

    move-result v21

    .line 1583
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1584
    if-eqz v21, :cond_11f6

    const/4 v4, 0x1

    :goto_11ee
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1585
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1584
    :cond_11f6
    const/4 v4, 0x0

    goto :goto_11ee

    .line 1589
    .end local v21    # "_result":Z
    :sswitch_11f8
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1211

    const/4 v5, 0x1

    .line 1592
    .local v5, "_arg0":Z
    :goto_1206
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setBTUserWantsAudioOn(Z)V

    .line 1593
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1594
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1591
    .end local v5    # "_arg0":Z
    :cond_1211
    const/4 v5, 0x0

    goto :goto_1206

    .line 1598
    :sswitch_1213
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1599
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setBTUserWantsSwitchAudio()V

    .line 1600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1601
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1605
    :sswitch_1223
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1606
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyVoIPCallStateChangeIntoBT()V

    .line 1607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1608
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1612
    :sswitch_1233
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1613
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDualBTConnection()Z

    move-result v21

    .line 1614
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1615
    if-eqz v21, :cond_124c

    const/4 v4, 0x1

    :goto_1244
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1616
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1615
    :cond_124c
    const/4 v4, 0x0

    goto :goto_1244

    .line 1620
    .end local v21    # "_result":Z
    :sswitch_124e
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1624
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1626
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 1627
    .local v7, "_arg2":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->sms_NSRI_encryptsms(ILjava/lang/String;[B)[B

    move-result-object v21

    .line 1628
    .local v21, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1629
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1630
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1634
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":[B
    .end local v21    # "_result":[B
    :sswitch_1274
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1638
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 1639
    .local v6, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->sms_NSRI_decryptsms(I[B)[B

    move-result-object v21

    .line 1640
    .restart local v21    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1641
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1642
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1646
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":[B
    .end local v21    # "_result":[B
    :sswitch_1296
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1650
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1652
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 1653
    .restart local v7    # "_arg2":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->sms_NSRI_decryptsmsintxside(ILjava/lang/String;[B)[B

    move-result-object v21

    .line 1654
    .restart local v21    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1655
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1656
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1660
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":[B
    .end local v21    # "_result":[B
    :sswitch_12bc
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1661
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->checkNSRIUSIMstate_int()I

    move-result v21

    .line 1662
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1663
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1664
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1668
    .end local v21    # "_result":I
    :sswitch_12d4
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1672
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 1673
    .local v6, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->NSRI_requestProc(I[B)[B

    move-result-object v21

    .line 1674
    .local v21, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1675
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1676
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1680
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":[B
    .end local v21    # "_result":[B
    :sswitch_12f6
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1683
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v21

    .line 1684
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1685
    if-eqz v21, :cond_1315

    const/4 v4, 0x1

    :goto_130d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1686
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1685
    :cond_1315
    const/4 v4, 0x0

    goto :goto_130d

    .line 46
    nop

    :sswitch_data_1318
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_32
        0x3 -> :sswitch_47
        0x4 -> :sswitch_62
        0x5 -> :sswitch_7b
        0x6 -> :sswitch_9b
        0x7 -> :sswitch_b6
        0x8 -> :sswitch_d9
        0x9 -> :sswitch_e9
        0xa -> :sswitch_101
        0xb -> :sswitch_111
        0xc -> :sswitch_12c
        0xd -> :sswitch_14f
        0xe -> :sswitch_172
        0xf -> :sswitch_18d
        0x10 -> :sswitch_1a8
        0x11 -> :sswitch_1cb
        0x12 -> :sswitch_1e6
        0x13 -> :sswitch_209
        0x14 -> :sswitch_224
        0x15 -> :sswitch_245
        0x16 -> :sswitch_26c
        0x17 -> :sswitch_291
        0x18 -> :sswitch_2bc
        0x19 -> :sswitch_2da
        0x1a -> :sswitch_2fe
        0x1b -> :sswitch_320
        0x1c -> :sswitch_348
        0x1d -> :sswitch_369
        0x1e -> :sswitch_390
        0x1f -> :sswitch_3a0
        0x20 -> :sswitch_3b8
        0x21 -> :sswitch_3de
        0x22 -> :sswitch_40a
        0x23 -> :sswitch_430
        0x24 -> :sswitch_440
        0x25 -> :sswitch_458
        0x26 -> :sswitch_468
        0x27 -> :sswitch_480
        0x28 -> :sswitch_490
        0x29 -> :sswitch_4a8
        0x2a -> :sswitch_4c3
        0x2b -> :sswitch_4de
        0x2c -> :sswitch_4f9
        0x2d -> :sswitch_521
        0x2e -> :sswitch_53f
        0x2f -> :sswitch_557
        0x30 -> :sswitch_577
        0x31 -> :sswitch_58f
        0x32 -> :sswitch_5a7
        0x33 -> :sswitch_5c7
        0x34 -> :sswitch_5df
        0x35 -> :sswitch_5ff
        0x36 -> :sswitch_617
        0x37 -> :sswitch_637
        0x38 -> :sswitch_64f
        0x39 -> :sswitch_66f
        0x3a -> :sswitch_687
        0x3b -> :sswitch_6a7
        0x3c -> :sswitch_6c2
        0x3d -> :sswitch_6da
        0x3e -> :sswitch_6fa
        0x3f -> :sswitch_712
        0x40 -> :sswitch_732
        0x41 -> :sswitch_74a
        0x42 -> :sswitch_76a
        0x43 -> :sswitch_782
        0x44 -> :sswitch_7a2
        0x45 -> :sswitch_7bd
        0x46 -> :sswitch_7e0
        0x47 -> :sswitch_7f8
        0x48 -> :sswitch_818
        0x49 -> :sswitch_830
        0x4a -> :sswitch_846
        0x4b -> :sswitch_85e
        0x4c -> :sswitch_88c
        0x4d -> :sswitch_8ad
        0x4e -> :sswitch_8e7
        0x4f -> :sswitch_91d
        0x50 -> :sswitch_953
        0x51 -> :sswitch_971
        0x52 -> :sswitch_98f
        0x53 -> :sswitch_9b4
        0x54 -> :sswitch_9d5
        0x55 -> :sswitch_9f6
        0x56 -> :sswitch_a0e
        0x57 -> :sswitch_a26
        0x58 -> :sswitch_a47
        0x59 -> :sswitch_a62
        0x5a -> :sswitch_a7d
        0x5b -> :sswitch_a9b
        0x5c -> :sswitch_ab6
        0x5d -> :sswitch_ad6
        0x5e -> :sswitch_af6
        0x5f -> :sswitch_b0e
        0x60 -> :sswitch_b2c
        0x61 -> :sswitch_b58
        0x62 -> :sswitch_b79
        0x63 -> :sswitch_b9c
        0x64 -> :sswitch_bbc
        0x65 -> :sswitch_bdc
        0x66 -> :sswitch_bfc
        0x67 -> :sswitch_c1d
        0x68 -> :sswitch_c4c
        0x69 -> :sswitch_c67
        0x6a -> :sswitch_c77
        0x6b -> :sswitch_c92
        0x6c -> :sswitch_cad
        0x6d -> :sswitch_cc8
        0x6e -> :sswitch_ceb
        0x6f -> :sswitch_d06
        0x70 -> :sswitch_d1e
        0x71 -> :sswitch_d2e
        0x72 -> :sswitch_d46
        0x73 -> :sswitch_d66
        0x74 -> :sswitch_d7e
        0x75 -> :sswitch_d9e
        0x76 -> :sswitch_db6
        0x77 -> :sswitch_dd7
        0x78 -> :sswitch_def
        0x79 -> :sswitch_e07
        0x7a -> :sswitch_e1f
        0x7b -> :sswitch_e37
        0x7c -> :sswitch_e52
        0x7d -> :sswitch_e6d
        0x7e -> :sswitch_e88
        0x7f -> :sswitch_eb3
        0x80 -> :sswitch_ecb
        0x81 -> :sswitch_edb
        0x82 -> :sswitch_eeb
        0x83 -> :sswitch_f03
        0x84 -> :sswitch_f1b
        0x85 -> :sswitch_f33
        0x86 -> :sswitch_f4b
        0x87 -> :sswitch_f7b
        0x88 -> :sswitch_f99
        0x89 -> :sswitch_fb1
        0x8a -> :sswitch_fcf
        0x8b -> :sswitch_fe7
        0x8c -> :sswitch_1009
        0x8d -> :sswitch_1029
        0x8e -> :sswitch_1049
        0x8f -> :sswitch_106a
        0x90 -> :sswitch_1080
        0x91 -> :sswitch_109b
        0x92 -> :sswitch_10ab
        0x93 -> :sswitch_10bb
        0x94 -> :sswitch_10cb
        0x95 -> :sswitch_10db
        0x96 -> :sswitch_10fd
        0x97 -> :sswitch_112f
        0x98 -> :sswitch_114d
        0x99 -> :sswitch_116b
        0x9a -> :sswitch_1181
        0x9b -> :sswitch_1197
        0x9c -> :sswitch_11af
        0x9d -> :sswitch_11c5
        0x9e -> :sswitch_11dd
        0x9f -> :sswitch_11f8
        0xa0 -> :sswitch_1213
        0xa1 -> :sswitch_1223
        0xa2 -> :sswitch_1233
        0xa3 -> :sswitch_124e
        0xa4 -> :sswitch_1274
        0xa5 -> :sswitch_1296
        0xa6 -> :sswitch_12bc
        0xa7 -> :sswitch_12d4
        0xa8 -> :sswitch_12f6
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
