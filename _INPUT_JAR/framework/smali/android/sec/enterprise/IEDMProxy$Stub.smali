.class public abstract Landroid/sec/enterprise/IEDMProxy$Stub;
.super Landroid/os/Binder;
.source "IEDMProxy.java"

# interfaces
.implements Landroid/sec/enterprise/IEDMProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/IEDMProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.enterprise.IEDMProxy"

.field static final TRANSACTION_AuditLogger:I = 0x43

.field static final TRANSACTION_AuditLoggerMMS:I = 0x44

.field static final TRANSACTION_addCallsCount:I = 0x1

.field static final TRANSACTION_addNumberOfIncomingCalls:I = 0x20

.field static final TRANSACTION_addNumberOfIncomingSms:I = 0x23

.field static final TRANSACTION_addNumberOfOutgoingCalls:I = 0x21

.field static final TRANSACTION_addNumberOfOutgoingSms:I = 0x24

.field static final TRANSACTION_bluetoothLog:I = 0x3c

.field static final TRANSACTION_canIncomingCall:I = 0x1d

.field static final TRANSACTION_canIncomingSms:I = 0x27

.field static final TRANSACTION_canOutgoingCall:I = 0x1e

.field static final TRANSACTION_canOutgoingSms:I = 0x26

.field static final TRANSACTION_decreaseNumberOfOutgoingSms:I = 0x25

.field static final TRANSACTION_edmAddOrUpdate:I = 0x2e

.field static final TRANSACTION_getAddHomeShorcutRequested:I = 0x72

.field static final TRANSACTION_getAliasesForPackage:I = 0x6e

.field static final TRANSACTION_getAliasesForWiFi:I = 0x70

.field static final TRANSACTION_getAllowBluetoothDataTransfer:I = 0x9

.field static final TRANSACTION_getAllowUserPolicyChanges:I = 0x2a

.field static final TRANSACTION_getAllowUserProfiles:I = 0x2b

.field static final TRANSACTION_getApplicationIconFromDb:I = 0x7

.field static final TRANSACTION_getApplicationNameFromDb:I = 0x5c

.field static final TRANSACTION_getApplicationStateEnabled:I = 0x41

.field static final TRANSACTION_getApplicationStateEnabledAsUser:I = 0x42

.field static final TRANSACTION_getAutomaticConnectionToWifi:I = 0x4b

.field static final TRANSACTION_getBlockedNetworks:I = 0x29

.field static final TRANSACTION_getBrowserSettingStatus:I = 0x12

.field static final TRANSACTION_getCertificateAliasesHavingPrivateKey:I = 0x71

.field static final TRANSACTION_getELMPermissions:I = 0x69

.field static final TRANSACTION_getEmergencyCallOnly:I = 0x1f

.field static final TRANSACTION_getMinimumRequiredSecurity:I = 0x2d

.field static final TRANSACTION_getNetworkSSIDList:I = 0x28

.field static final TRANSACTION_getPromptCredentialsEnabled:I = 0x2c

.field static final TRANSACTION_getSealedHideNotificationMessages:I = 0x65

.field static final TRANSACTION_getSealedNotificationMessagesState:I = 0x64

.field static final TRANSACTION_getSealedState:I = 0x63

.field static final TRANSACTION_getSlotIdForCaller:I = 0x6b

.field static final TRANSACTION_getSlotIdForPackage:I = 0x6c

.field static final TRANSACTION_getWifiSsidRestrictionList:I = 0x5b

.field static final TRANSACTION_isAccessControlMethodPassword:I = 0x6f

.field static final TRANSACTION_isAccountAdditionAllowed:I = 0x59

.field static final TRANSACTION_isAccountRemovalAllowed:I = 0x58

.field static final TRANSACTION_isAndroidBeamAllowed:I = 0x57

.field static final TRANSACTION_isApplicationForceStopDisabled:I = 0x3d

.field static final TRANSACTION_isAudioRecordAllowed:I = 0x49

.field static final TRANSACTION_isBTSecureAccessAllowedAsUser:I = 0x66

.field static final TRANSACTION_isBackgroundProcessLimitAllowed:I = 0x4e

.field static final TRANSACTION_isBackupAllowed:I = 0x3f

.field static final TRANSACTION_isBlockMmsWithStorageEnabled:I = 0x52

.field static final TRANSACTION_isBlockSmsWithStorageEnabled:I = 0x51

.field static final TRANSACTION_isBluetoothDeviceAllowed:I = 0xd

.field static final TRANSACTION_isBluetoothEnabled:I = 0x11

.field static final TRANSACTION_isBluetoothLogEnabled:I = 0x3b

.field static final TRANSACTION_isBluetoothUUIDAllowed:I = 0xb

.field static final TRANSACTION_isCCMPolicyEnabledForCaller:I = 0x6a

.field static final TRANSACTION_isCCMPolicyEnabledForPackage:I = 0x6d

.field static final TRANSACTION_isCaCertificateTrusted:I = 0x48

.field static final TRANSACTION_isCallingCaptureEnabled:I = 0x2

.field static final TRANSACTION_isCameraEnabled:I = 0x18

.field static final TRANSACTION_isChangeRequested:I = 0x13

.field static final TRANSACTION_isClipboardAllowed:I = 0x1b

.field static final TRANSACTION_isClipboardShareAllowed:I = 0x50

.field static final TRANSACTION_isCopyContactToSimAllowed:I = 0x5d

.field static final TRANSACTION_isDateTimeChangeEnabled:I = 0x30

.field static final TRANSACTION_isDesktopConnectivityEnabled:I = 0x40

.field static final TRANSACTION_isDiscoverableEnabled:I = 0xf

.field static final TRANSACTION_isGoogleCrashReportAllowed:I = 0x32

.field static final TRANSACTION_isHardwareKeyAllowed:I = 0x35

.field static final TRANSACTION_isIncomingMmsAllowed:I = 0x3e

.field static final TRANSACTION_isIncomingSmsAllowed:I = 0x38

.field static final TRANSACTION_isIntentDisabled:I = 0x8

.field static final TRANSACTION_isKillingActivitiesOnLeaveAllowed:I = 0x4f

.field static final TRANSACTION_isLimitNumberOfSmsEnabled:I = 0x22

.field static final TRANSACTION_isLimitedDiscoverableEnabled:I = 0x10

.field static final TRANSACTION_isLocationProviderBlocked:I = 0x6

.field static final TRANSACTION_isMMSCaptureEnabled:I = 0x60

.field static final TRANSACTION_isMicrophoneEnabled:I = 0x1c

.field static final TRANSACTION_isNFCEnabled:I = 0x19

.field static final TRANSACTION_isNFCEnabledWithMsg:I = 0x1a

.field static final TRANSACTION_isNFCStateChangeAllowed:I = 0x5e

.field static final TRANSACTION_isNonMarketAppAllowed:I = 0x17

.field static final TRANSACTION_isOcspCheckEnabled:I = 0x47

.field static final TRANSACTION_isOutgoingCallsAllowed:I = 0xa

.field static final TRANSACTION_isOutgoingSmsAllowed:I = 0x39

.field static final TRANSACTION_isPackageWhitelistedFromBTSecureAccess:I = 0x67

.field static final TRANSACTION_isPackageWhitelistedFromBTSecureAccessUid:I = 0x68

.field static final TRANSACTION_isPairingEnabled:I = 0xe

.field static final TRANSACTION_isPowerOffAllowed:I = 0x37

.field static final TRANSACTION_isProfileEnabled:I = 0xc

.field static final TRANSACTION_isRevocationCheckEnabled:I = 0x46

.field static final TRANSACTION_isRoamingPushEnabled:I = 0x14

.field static final TRANSACTION_isRoamingSyncEnabled:I = 0x15

.field static final TRANSACTION_isSBeamAllowed:I = 0x56

.field static final TRANSACTION_isSMSCaptureEnabled:I = 0x4

.field static final TRANSACTION_isSVoiceAllowed:I = 0x54

.field static final TRANSACTION_isScreenCaptureEnabled:I = 0x34

.field static final TRANSACTION_isScreenLockPatternVisibilityEnabled:I = 0x31

.field static final TRANSACTION_isSettingsChangesAllowed:I = 0x16

.field static final TRANSACTION_isSimLockedByAdmin:I = 0x5a

.field static final TRANSACTION_isTaskManagerAllowed:I = 0x36

.field static final TRANSACTION_isTimaKeystoreEnabled:I = 0x73

.field static final TRANSACTION_isTimaKeystoreEnabledForPackage:I = 0x74

.field static final TRANSACTION_isUrlBlocked:I = 0x3a

.field static final TRANSACTION_isUserRemoveCertificatesAllowed:I = 0x5f

.field static final TRANSACTION_isVideoRecordAllowed:I = 0x4a

.field static final TRANSACTION_isWapPushAllowed:I = 0x55

.field static final TRANSACTION_isWifiDirectAllowed:I = 0x4d

.field static final TRANSACTION_isWifiStateChangeAllowed:I = 0x33

.field static final TRANSACTION_notifyCertificateFailure:I = 0x45

.field static final TRANSACTION_notifyCertificateRemoved:I = 0x4c

.field static final TRANSACTION_notifyUserKeystoreUnlocked:I = 0x62

.field static final TRANSACTION_removeNetworkConfiguration:I = 0x2f

.field static final TRANSACTION_storeBlockedSmsMms:I = 0x53

.field static final TRANSACTION_storeCalling:I = 0x3

.field static final TRANSACTION_storeMMS:I = 0x61

.field static final TRANSACTION_storeSMS:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p0, p0, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/IEDMProxy;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_4

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_3
    return-object v0

    .line 28
    :cond_4
    const-string v1, "android.sec.enterprise.IEDMProxy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/sec/enterprise/IEDMProxy;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Landroid/sec/enterprise/IEDMProxy;

    goto :goto_3

    .line 32
    :cond_13
    new-instance v0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
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
    .line 40
    sparse-switch p1, :sswitch_data_c36

    .line 1192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 44
    :sswitch_8
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x1

    goto :goto_7

    .line 49
    :sswitch_f
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->addCallsCount(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    const/4 v0, 0x1

    goto :goto_7

    .line 58
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_20
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCallingCaptureEnabled()Z

    move-result v8

    .line 60
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v8, :cond_34

    const/4 v0, 0x1

    :goto_2f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v0, 0x1

    goto :goto_7

    .line 61
    :cond_34
    const/4 v0, 0x0

    goto :goto_2f

    .line 66
    .end local v8    # "_result":Z
    :sswitch_36
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5b

    const/4 v5, 0x1

    .local v5, "_arg4":Z
    :goto_52
    move-object v0, p0

    .line 77
    invoke-virtual/range {v0 .. v5}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    const/4 v0, 0x1

    goto :goto_7

    .line 76
    .end local v5    # "_arg4":Z
    :cond_5b
    const/4 v5, 0x0

    goto :goto_52

    .line 83
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_5d
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSMSCaptureEnabled()Z

    move-result v8

    .line 85
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v8, :cond_71

    const/4 v0, 0x1

    :goto_6c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v0, 0x1

    goto :goto_7

    .line 86
    :cond_71
    const/4 v0, 0x0

    goto :goto_6c

    .line 91
    .end local v8    # "_result":Z
    :sswitch_73
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_94

    const/4 v4, 0x1

    .line 100
    .local v4, "_arg3":Z
    :goto_8b
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 99
    .end local v4    # "_arg3":Z
    :cond_94
    const/4 v4, 0x0

    goto :goto_8b

    .line 106
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_96
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v8

    .line 110
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v8, :cond_af

    const/4 v0, 0x1

    :goto_a9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 111
    :cond_af
    const/4 v0, 0x0

    goto :goto_a9

    .line 116
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_b1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 121
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v8

    .line 122
    .local v8, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 124
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 128
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":[B
    :sswitch_cb
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ee

    .line 131
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 136
    .local v1, "_arg0":Landroid/content/Intent;
    :goto_de
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v8

    .line 137
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v8, :cond_f0

    const/4 v0, 0x1

    :goto_e8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 134
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v8    # "_result":Z
    :cond_ee
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/Intent;
    goto :goto_de

    .line 138
    .restart local v8    # "_result":Z
    :cond_f0
    const/4 v0, 0x0

    goto :goto_e8

    .line 143
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v8    # "_result":Z
    :sswitch_f2
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10e

    const/4 v1, 0x1

    .line 146
    .local v1, "_arg0":Z
    :goto_fe
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAllowBluetoothDataTransfer(Z)Z

    move-result v8

    .line 147
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v8, :cond_110

    const/4 v0, 0x1

    :goto_108
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 145
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_10e
    const/4 v1, 0x0

    goto :goto_fe

    .line 148
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_110
    const/4 v0, 0x0

    goto :goto_108

    .line 153
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_112
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOutgoingCallsAllowed()Z

    move-result v8

    .line 155
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v8, :cond_127

    const/4 v0, 0x1

    :goto_121
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 156
    :cond_127
    const/4 v0, 0x0

    goto :goto_121

    .line 161
    .end local v8    # "_result":Z
    :sswitch_129
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v8

    .line 165
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v8, :cond_142

    const/4 v0, 0x1

    :goto_13c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 166
    :cond_142
    const/4 v0, 0x0

    goto :goto_13c

    .line 171
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_144
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isProfileEnabled(I)Z

    move-result v8

    .line 175
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v8, :cond_15d

    const/4 v0, 0x1

    :goto_157
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 176
    :cond_15d
    const/4 v0, 0x0

    goto :goto_157

    .line 181
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_15f
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z

    move-result v8

    .line 185
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v8, :cond_178

    const/4 v0, 0x1

    :goto_172
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 186
    :cond_178
    const/4 v0, 0x0

    goto :goto_172

    .line 191
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_17a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPairingEnabled()Z

    move-result v8

    .line 193
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v8, :cond_18f

    const/4 v0, 0x1

    :goto_189
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 194
    :cond_18f
    const/4 v0, 0x0

    goto :goto_189

    .line 199
    .end local v8    # "_result":Z
    :sswitch_191
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isDiscoverableEnabled()Z

    move-result v8

    .line 201
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v8, :cond_1a6

    const/4 v0, 0x1

    :goto_1a0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 202
    :cond_1a6
    const/4 v0, 0x0

    goto :goto_1a0

    .line 207
    .end local v8    # "_result":Z
    :sswitch_1a8
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isLimitedDiscoverableEnabled()Z

    move-result v8

    .line 209
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v8, :cond_1bd

    const/4 v0, 0x1

    :goto_1b7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 210
    :cond_1bd
    const/4 v0, 0x0

    goto :goto_1b7

    .line 215
    .end local v8    # "_result":Z
    :sswitch_1bf
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothEnabled()Z

    move-result v8

    .line 217
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v8, :cond_1d4

    const/4 v0, 0x1

    :goto_1ce
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 218
    :cond_1d4
    const/4 v0, 0x0

    goto :goto_1ce

    .line 223
    .end local v8    # "_result":Z
    :sswitch_1d6
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 226
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getBrowserSettingStatus(I)Z

    move-result v8

    .line 227
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v8, :cond_1ef

    const/4 v0, 0x1

    :goto_1e9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 228
    :cond_1ef
    const/4 v0, 0x0

    goto :goto_1e9

    .line 233
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_1f1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isChangeRequested()I

    move-result v8

    .line 235
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 241
    .end local v8    # "_result":I
    :sswitch_203
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRoamingPushEnabled()Z

    move-result v8

    .line 243
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v8, :cond_218

    const/4 v0, 0x1

    :goto_212
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 244
    :cond_218
    const/4 v0, 0x0

    goto :goto_212

    .line 249
    .end local v8    # "_result":Z
    :sswitch_21a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRoamingSyncEnabled()Z

    move-result v8

    .line 251
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v8, :cond_22f

    const/4 v0, 0x1

    :goto_229
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 252
    :cond_22f
    const/4 v0, 0x0

    goto :goto_229

    .line 257
    .end local v8    # "_result":Z
    :sswitch_231
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24d

    const/4 v1, 0x1

    .line 260
    .local v1, "_arg0":Z
    :goto_23d
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSettingsChangesAllowed(Z)Z

    move-result v8

    .line 261
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    if-eqz v8, :cond_24f

    const/4 v0, 0x1

    :goto_247
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 259
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_24d
    const/4 v1, 0x0

    goto :goto_23d

    .line 262
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_24f
    const/4 v0, 0x0

    goto :goto_247

    .line 267
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_251
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isNonMarketAppAllowed()Z

    move-result v8

    .line 269
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v8, :cond_266

    const/4 v0, 0x1

    :goto_260
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 270
    :cond_266
    const/4 v0, 0x0

    goto :goto_260

    .line 275
    .end local v8    # "_result":Z
    :sswitch_268
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_284

    const/4 v1, 0x1

    .line 278
    .restart local v1    # "_arg0":Z
    :goto_274
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCameraEnabled(Z)Z

    move-result v8

    .line 279
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v8, :cond_286

    const/4 v0, 0x1

    :goto_27e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 277
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_284
    const/4 v1, 0x0

    goto :goto_274

    .line 280
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_286
    const/4 v0, 0x0

    goto :goto_27e

    .line 285
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_288
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isNFCEnabled()Z

    move-result v8

    .line 287
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    if-eqz v8, :cond_29d

    const/4 v0, 0x1

    :goto_297
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 288
    :cond_29d
    const/4 v0, 0x0

    goto :goto_297

    .line 293
    .end local v8    # "_result":Z
    :sswitch_29f
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2bb

    const/4 v1, 0x1

    .line 296
    .restart local v1    # "_arg0":Z
    :goto_2ab
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isNFCEnabledWithMsg(Z)Z

    move-result v8

    .line 297
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    if-eqz v8, :cond_2bd

    const/4 v0, 0x1

    :goto_2b5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 295
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_2bb
    const/4 v1, 0x0

    goto :goto_2ab

    .line 298
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_2bd
    const/4 v0, 0x0

    goto :goto_2b5

    .line 303
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_2bf
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2db

    const/4 v1, 0x1

    .line 306
    .restart local v1    # "_arg0":Z
    :goto_2cb
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isClipboardAllowed(Z)Z

    move-result v8

    .line 307
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v8, :cond_2dd

    const/4 v0, 0x1

    :goto_2d5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 305
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_2db
    const/4 v1, 0x0

    goto :goto_2cb

    .line 308
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_2dd
    const/4 v0, 0x0

    goto :goto_2d5

    .line 313
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_2df
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2fb

    const/4 v1, 0x1

    .line 316
    .restart local v1    # "_arg0":Z
    :goto_2eb
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isMicrophoneEnabled(Z)Z

    move-result v8

    .line 317
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    if-eqz v8, :cond_2fd

    const/4 v0, 0x1

    :goto_2f5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 315
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_2fb
    const/4 v1, 0x0

    goto :goto_2eb

    .line 318
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_2fd
    const/4 v0, 0x0

    goto :goto_2f5

    .line 323
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_2ff
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->canIncomingCall(Ljava/lang/String;)Z

    move-result v8

    .line 327
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    if-eqz v8, :cond_318

    const/4 v0, 0x1

    :goto_312
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 328
    :cond_318
    const/4 v0, 0x0

    goto :goto_312

    .line 333
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_31a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 336
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v8

    .line 337
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    if-eqz v8, :cond_333

    const/4 v0, 0x1

    :goto_32d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 338
    :cond_333
    const/4 v0, 0x0

    goto :goto_32d

    .line 343
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_335
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_351

    const/4 v1, 0x1

    .line 346
    .local v1, "_arg0":Z
    :goto_341
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getEmergencyCallOnly(Z)Z

    move-result v8

    .line 347
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v8, :cond_353

    const/4 v0, 0x1

    :goto_34b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 345
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_351
    const/4 v1, 0x0

    goto :goto_341

    .line 348
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_353
    const/4 v0, 0x0

    goto :goto_34b

    .line 353
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_355
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfIncomingCalls()Z

    move-result v8

    .line 355
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    if-eqz v8, :cond_36a

    const/4 v0, 0x1

    :goto_364
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 356
    :cond_36a
    const/4 v0, 0x0

    goto :goto_364

    .line 361
    .end local v8    # "_result":Z
    :sswitch_36c
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfOutgoingCalls()Z

    move-result v8

    .line 363
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v8, :cond_381

    const/4 v0, 0x1

    :goto_37b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 364
    :cond_381
    const/4 v0, 0x0

    goto :goto_37b

    .line 369
    .end local v8    # "_result":Z
    :sswitch_383
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isLimitNumberOfSmsEnabled()Z

    move-result v8

    .line 371
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v8, :cond_398

    const/4 v0, 0x1

    :goto_392
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 372
    :cond_398
    const/4 v0, 0x0

    goto :goto_392

    .line 377
    .end local v8    # "_result":Z
    :sswitch_39a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfIncomingSms()Z

    move-result v8

    .line 379
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v8, :cond_3af

    const/4 v0, 0x1

    :goto_3a9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 380
    :cond_3af
    const/4 v0, 0x0

    goto :goto_3a9

    .line 385
    .end local v8    # "_result":Z
    :sswitch_3b1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfOutgoingSms()Z

    move-result v8

    .line 387
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    if-eqz v8, :cond_3c6

    const/4 v0, 0x1

    :goto_3c0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 388
    :cond_3c6
    const/4 v0, 0x0

    goto :goto_3c0

    .line 393
    .end local v8    # "_result":Z
    :sswitch_3c8
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->decreaseNumberOfOutgoingSms()Z

    move-result v8

    .line 395
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    if-eqz v8, :cond_3dd

    const/4 v0, 0x1

    :goto_3d7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 396
    :cond_3dd
    const/4 v0, 0x0

    goto :goto_3d7

    .line 401
    .end local v8    # "_result":Z
    :sswitch_3df
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v8

    .line 405
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    if-eqz v8, :cond_3f8

    const/4 v0, 0x1

    :goto_3f2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 406
    :cond_3f8
    const/4 v0, 0x0

    goto :goto_3f2

    .line 411
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_3fa
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 414
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->canIncomingSms(Ljava/lang/String;)Z

    move-result v8

    .line 415
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    if-eqz v8, :cond_413

    const/4 v0, 0x1

    :goto_40d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 416
    :cond_413
    const/4 v0, 0x0

    goto :goto_40d

    .line 421
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_415
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v7

    .line 423
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 425
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 429
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_427
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getBlockedNetworks()Ljava/util/List;

    move-result-object v7

    .line 431
    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 433
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 437
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_439
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAllowUserPolicyChanges()Z

    move-result v8

    .line 439
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    if-eqz v8, :cond_44e

    const/4 v0, 0x1

    :goto_448
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 440
    :cond_44e
    const/4 v0, 0x0

    goto :goto_448

    .line 445
    .end local v8    # "_result":Z
    :sswitch_450
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_470

    const/4 v1, 0x1

    .line 449
    .local v1, "_arg0":Z
    :goto_45c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 450
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAllowUserProfiles(ZI)Z

    move-result v8

    .line 451
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    if-eqz v8, :cond_472

    const/4 v0, 0x1

    :goto_46a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 447
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :cond_470
    const/4 v1, 0x0

    goto :goto_45c

    .line 452
    .restart local v1    # "_arg0":Z
    .restart local v2    # "_arg1":I
    .restart local v8    # "_result":Z
    :cond_472
    const/4 v0, 0x0

    goto :goto_46a

    .line 457
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :sswitch_474
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getPromptCredentialsEnabled()Z

    move-result v8

    .line 459
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v8, :cond_489

    const/4 v0, 0x1

    :goto_483
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 460
    :cond_489
    const/4 v0, 0x0

    goto :goto_483

    .line 465
    .end local v8    # "_result":Z
    :sswitch_48b
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getMinimumRequiredSecurity()I

    move-result v8

    .line 467
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 473
    .end local v8    # "_result":I
    :sswitch_49d
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4bd

    .line 476
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 482
    .local v1, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_4b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 479
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_4bd
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_4b0

    .line 489
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_4bf
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->removeNetworkConfiguration(Ljava/lang/String;)Z

    move-result v8

    .line 493
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    if-eqz v8, :cond_4d8

    const/4 v0, 0x1

    :goto_4d2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 494
    :cond_4d8
    const/4 v0, 0x0

    goto :goto_4d2

    .line 499
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_4da
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isDateTimeChangeEnabled()Z

    move-result v8

    .line 501
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    if-eqz v8, :cond_4ef

    const/4 v0, 0x1

    :goto_4e9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 502
    :cond_4ef
    const/4 v0, 0x0

    goto :goto_4e9

    .line 507
    .end local v8    # "_result":Z
    :sswitch_4f1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isScreenLockPatternVisibilityEnabled()Z

    move-result v8

    .line 509
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    if-eqz v8, :cond_506

    const/4 v0, 0x1

    :goto_500
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 510
    :cond_506
    const/4 v0, 0x0

    goto :goto_500

    .line 515
    .end local v8    # "_result":Z
    :sswitch_508
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isGoogleCrashReportAllowed()Z

    move-result v8

    .line 517
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    if-eqz v8, :cond_51d

    const/4 v0, 0x1

    :goto_517
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 518
    :cond_51d
    const/4 v0, 0x0

    goto :goto_517

    .line 523
    .end local v8    # "_result":Z
    :sswitch_51f
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isWifiStateChangeAllowed()Z

    move-result v8

    .line 525
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    if-eqz v8, :cond_534

    const/4 v0, 0x1

    :goto_52e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 526
    :cond_534
    const/4 v0, 0x0

    goto :goto_52e

    .line 531
    .end local v8    # "_result":Z
    :sswitch_536
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_552

    const/4 v1, 0x1

    .line 534
    .local v1, "_arg0":Z
    :goto_542
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isScreenCaptureEnabled(Z)Z

    move-result v8

    .line 535
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    if-eqz v8, :cond_554

    const/4 v0, 0x1

    :goto_54c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 533
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_552
    const/4 v1, 0x0

    goto :goto_542

    .line 536
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_554
    const/4 v0, 0x0

    goto :goto_54c

    .line 541
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_556
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 545
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_576

    const/4 v2, 0x1

    .line 546
    .local v2, "_arg1":Z
    :goto_566
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->isHardwareKeyAllowed(IZ)Z

    move-result v8

    .line 547
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    if-eqz v8, :cond_578

    const/4 v0, 0x1

    :goto_570
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 545
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :cond_576
    const/4 v2, 0x0

    goto :goto_566

    .line 548
    .restart local v2    # "_arg1":Z
    .restart local v8    # "_result":Z
    :cond_578
    const/4 v0, 0x0

    goto :goto_570

    .line 553
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :sswitch_57a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_596

    const/4 v1, 0x1

    .line 556
    .local v1, "_arg0":Z
    :goto_586
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isTaskManagerAllowed(Z)Z

    move-result v8

    .line 557
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    if-eqz v8, :cond_598

    const/4 v0, 0x1

    :goto_590
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 555
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_596
    const/4 v1, 0x0

    goto :goto_586

    .line 558
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_598
    const/4 v0, 0x0

    goto :goto_590

    .line 563
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_59a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5b6

    const/4 v1, 0x1

    .line 566
    .restart local v1    # "_arg0":Z
    :goto_5a6
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPowerOffAllowed(Z)Z

    move-result v8

    .line 567
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    if-eqz v8, :cond_5b8

    const/4 v0, 0x1

    :goto_5b0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 565
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_5b6
    const/4 v1, 0x0

    goto :goto_5a6

    .line 568
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_5b8
    const/4 v0, 0x0

    goto :goto_5b0

    .line 573
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_5ba
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIncomingSmsAllowed()Z

    move-result v8

    .line 575
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    if-eqz v8, :cond_5cf

    const/4 v0, 0x1

    :goto_5c9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 576
    :cond_5cf
    const/4 v0, 0x0

    goto :goto_5c9

    .line 581
    .end local v8    # "_result":Z
    :sswitch_5d1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOutgoingSmsAllowed()Z

    move-result v8

    .line 583
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    if-eqz v8, :cond_5e6

    const/4 v0, 0x1

    :goto_5e0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 584
    :cond_5e6
    const/4 v0, 0x0

    goto :goto_5e0

    .line 589
    .end local v8    # "_result":Z
    :sswitch_5e8
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v8

    .line 593
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    if-eqz v8, :cond_601

    const/4 v0, 0x1

    :goto_5fb
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 594
    :cond_601
    const/4 v0, 0x0

    goto :goto_5fb

    .line 599
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_603
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothLogEnabled()Z

    move-result v8

    .line 601
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    if-eqz v8, :cond_618

    const/4 v0, 0x1

    :goto_612
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 602
    :cond_618
    const/4 v0, 0x0

    goto :goto_612

    .line 607
    .end local v8    # "_result":Z
    :sswitch_61a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 611
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 618
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_630
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 622
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 624
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 626
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 628
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 630
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_661

    const/4 v6, 0x1

    .local v6, "_arg5":Z
    :goto_650
    move-object v0, p0

    .line 631
    invoke-virtual/range {v0 .. v6}, Landroid/sec/enterprise/IEDMProxy$Stub;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 632
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    if-eqz v8, :cond_663

    const/4 v0, 0x1

    :goto_65b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 630
    .end local v6    # "_arg5":Z
    .end local v8    # "_result":Z
    :cond_661
    const/4 v6, 0x0

    goto :goto_650

    .line 633
    .restart local v6    # "_arg5":Z
    .restart local v8    # "_result":Z
    :cond_663
    const/4 v0, 0x0

    goto :goto_65b

    .line 638
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Z
    .end local v8    # "_result":Z
    :sswitch_665
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIncomingMmsAllowed()Z

    move-result v8

    .line 640
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    if-eqz v8, :cond_67a

    const/4 v0, 0x1

    :goto_674
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 641
    :cond_67a
    const/4 v0, 0x0

    goto :goto_674

    .line 646
    .end local v8    # "_result":Z
    :sswitch_67c
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_698

    const/4 v1, 0x1

    .line 649
    .local v1, "_arg0":Z
    :goto_688
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBackupAllowed(Z)Z

    move-result v8

    .line 650
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    if-eqz v8, :cond_69a

    const/4 v0, 0x1

    :goto_692
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 648
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_698
    const/4 v1, 0x0

    goto :goto_688

    .line 651
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_69a
    const/4 v0, 0x0

    goto :goto_692

    .line 656
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_69c
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isDesktopConnectivityEnabled()Z

    move-result v8

    .line 658
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    if-eqz v8, :cond_6b1

    const/4 v0, 0x1

    :goto_6ab
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 659
    :cond_6b1
    const/4 v0, 0x0

    goto :goto_6ab

    .line 664
    .end local v8    # "_result":Z
    :sswitch_6b3
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6d3

    const/4 v2, 0x1

    .line 669
    .local v2, "_arg1":Z
    :goto_6c3
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationStateEnabled(Ljava/lang/String;Z)Z

    move-result v8

    .line 670
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    if-eqz v8, :cond_6d5

    const/4 v0, 0x1

    :goto_6cd
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 668
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :cond_6d3
    const/4 v2, 0x0

    goto :goto_6c3

    .line 671
    .restart local v2    # "_arg1":Z
    .restart local v8    # "_result":Z
    :cond_6d5
    const/4 v0, 0x0

    goto :goto_6cd

    .line 676
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :sswitch_6d7
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 680
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6fb

    const/4 v2, 0x1

    .line 682
    .restart local v2    # "_arg1":Z
    :goto_6e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 683
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v8

    .line 684
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    if-eqz v8, :cond_6fd

    const/4 v0, 0x1

    :goto_6f5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 680
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v8    # "_result":Z
    :cond_6fb
    const/4 v2, 0x0

    goto :goto_6e7

    .line 685
    .restart local v2    # "_arg1":Z
    .restart local v3    # "_arg2":I
    .restart local v8    # "_result":Z
    :cond_6fd
    const/4 v0, 0x0

    goto :goto_6f5

    .line 690
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v8    # "_result":Z
    :sswitch_6ff
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 694
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 696
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_729

    const/4 v3, 0x1

    .line 698
    .local v3, "_arg2":Z
    :goto_713
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 700
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 702
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg5":Ljava/lang/String;
    move-object v0, p0

    .line 703
    invoke-virtual/range {v0 .. v6}, Landroid/sec/enterprise/IEDMProxy$Stub;->AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 696
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    :cond_729
    const/4 v3, 0x0

    goto :goto_713

    .line 709
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_72b
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 713
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 715
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_755

    const/4 v3, 0x1

    .line 717
    .restart local v3    # "_arg2":Z
    :goto_73f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 719
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 721
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg5":Ljava/lang/String;
    move-object v0, p0

    .line 722
    invoke-virtual/range {v0 .. v6}, Landroid/sec/enterprise/IEDMProxy$Stub;->AuditLoggerMMS(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 715
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    :cond_755
    const/4 v3, 0x0

    goto :goto_73f

    .line 728
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_757
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_774

    const/4 v3, 0x1

    .line 735
    .restart local v3    # "_arg2":Z
    :goto_76b
    invoke-virtual {p0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 734
    .end local v3    # "_arg2":Z
    :cond_774
    const/4 v3, 0x0

    goto :goto_76b

    .line 741
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_776
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRevocationCheckEnabled()Z

    move-result v8

    .line 743
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    if-eqz v8, :cond_78b

    const/4 v0, 0x1

    :goto_785
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 744
    :cond_78b
    const/4 v0, 0x0

    goto :goto_785

    .line 749
    .end local v8    # "_result":Z
    :sswitch_78d
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOcspCheckEnabled()Z

    move-result v8

    .line 751
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    if-eqz v8, :cond_7a2

    const/4 v0, 0x1

    :goto_79c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 752
    :cond_7a2
    const/4 v0, 0x0

    goto :goto_79c

    .line 757
    .end local v8    # "_result":Z
    :sswitch_7a4
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 761
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7c4

    const/4 v2, 0x1

    .line 762
    .local v2, "_arg1":Z
    :goto_7b4
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCaCertificateTrusted([BZ)Z

    move-result v8

    .line 763
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    if-eqz v8, :cond_7c6

    const/4 v0, 0x1

    :goto_7be
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 761
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :cond_7c4
    const/4 v2, 0x0

    goto :goto_7b4

    .line 764
    .restart local v2    # "_arg1":Z
    .restart local v8    # "_result":Z
    :cond_7c6
    const/4 v0, 0x0

    goto :goto_7be

    .line 769
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :sswitch_7c8
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7e4

    const/4 v1, 0x1

    .line 772
    .local v1, "_arg0":Z
    :goto_7d4
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAudioRecordAllowed(Z)Z

    move-result v8

    .line 773
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    if-eqz v8, :cond_7e6

    const/4 v0, 0x1

    :goto_7de
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 771
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_7e4
    const/4 v1, 0x0

    goto :goto_7d4

    .line 774
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_7e6
    const/4 v0, 0x0

    goto :goto_7de

    .line 779
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_7e8
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_804

    const/4 v1, 0x1

    .line 782
    .restart local v1    # "_arg0":Z
    :goto_7f4
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isVideoRecordAllowed(Z)Z

    move-result v8

    .line 783
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    if-eqz v8, :cond_806

    const/4 v0, 0x1

    :goto_7fe
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 781
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_804
    const/4 v1, 0x0

    goto :goto_7f4

    .line 784
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_806
    const/4 v0, 0x0

    goto :goto_7fe

    .line 789
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_808
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAutomaticConnectionToWifi()Z

    move-result v8

    .line 791
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    if-eqz v8, :cond_81d

    const/4 v0, 0x1

    :goto_817
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 792
    :cond_81d
    const/4 v0, 0x0

    goto :goto_817

    .line 797
    .end local v8    # "_result":Z
    :sswitch_81f
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 800
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->notifyCertificateRemoved(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 806
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_831
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_84d

    const/4 v1, 0x1

    .line 809
    .local v1, "_arg0":Z
    :goto_83d
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isWifiDirectAllowed(Z)Z

    move-result v8

    .line 810
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    if-eqz v8, :cond_84f

    const/4 v0, 0x1

    :goto_847
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 808
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_84d
    const/4 v1, 0x0

    goto :goto_83d

    .line 811
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_84f
    const/4 v0, 0x0

    goto :goto_847

    .line 816
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_851
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBackgroundProcessLimitAllowed()Z

    move-result v8

    .line 818
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    if-eqz v8, :cond_866

    const/4 v0, 0x1

    :goto_860
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 819
    :cond_866
    const/4 v0, 0x0

    goto :goto_860

    .line 824
    .end local v8    # "_result":Z
    :sswitch_868
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isKillingActivitiesOnLeaveAllowed()Z

    move-result v8

    .line 826
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    if-eqz v8, :cond_87d

    const/4 v0, 0x1

    :goto_877
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 827
    :cond_87d
    const/4 v0, 0x0

    goto :goto_877

    .line 832
    .end local v8    # "_result":Z
    :sswitch_87f
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isClipboardShareAllowed()Z

    move-result v8

    .line 834
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    if-eqz v8, :cond_894

    const/4 v0, 0x1

    :goto_88e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 835
    :cond_894
    const/4 v0, 0x0

    goto :goto_88e

    .line 840
    .end local v8    # "_result":Z
    :sswitch_896
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBlockSmsWithStorageEnabled()Z

    move-result v8

    .line 842
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    if-eqz v8, :cond_8ab

    const/4 v0, 0x1

    :goto_8a5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 843
    :cond_8ab
    const/4 v0, 0x0

    goto :goto_8a5

    .line 848
    .end local v8    # "_result":Z
    :sswitch_8ad
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBlockMmsWithStorageEnabled()Z

    move-result v8

    .line 850
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    if-eqz v8, :cond_8c2

    const/4 v0, 0x1

    :goto_8bc
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 851
    :cond_8c2
    const/4 v0, 0x0

    goto :goto_8bc

    .line 856
    .end local v8    # "_result":Z
    :sswitch_8c4
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8ea

    const/4 v1, 0x1

    .line 860
    .restart local v1    # "_arg0":Z
    :goto_8d0
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 862
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 864
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 866
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg4":Ljava/lang/String;
    move-object v0, p0

    .line 867
    invoke-virtual/range {v0 .. v5}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V

    .line 868
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 858
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    :cond_8ea
    const/4 v1, 0x0

    goto :goto_8d0

    .line 873
    :sswitch_8ec
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_908

    const/4 v1, 0x1

    .line 876
    .restart local v1    # "_arg0":Z
    :goto_8f8
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSVoiceAllowed(Z)Z

    move-result v8

    .line 877
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    if-eqz v8, :cond_90a

    const/4 v0, 0x1

    :goto_902
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 875
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_908
    const/4 v1, 0x0

    goto :goto_8f8

    .line 878
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_90a
    const/4 v0, 0x0

    goto :goto_902

    .line 883
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_90c
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isWapPushAllowed()Z

    move-result v8

    .line 885
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    if-eqz v8, :cond_921

    const/4 v0, 0x1

    :goto_91b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 886
    :cond_921
    const/4 v0, 0x0

    goto :goto_91b

    .line 891
    .end local v8    # "_result":Z
    :sswitch_923
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_93f

    const/4 v1, 0x1

    .line 894
    .restart local v1    # "_arg0":Z
    :goto_92f
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSBeamAllowed(Z)Z

    move-result v8

    .line 895
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    if-eqz v8, :cond_941

    const/4 v0, 0x1

    :goto_939
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 893
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_93f
    const/4 v1, 0x0

    goto :goto_92f

    .line 896
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_941
    const/4 v0, 0x0

    goto :goto_939

    .line 901
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_943
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_95f

    const/4 v1, 0x1

    .line 904
    .restart local v1    # "_arg0":Z
    :goto_94f
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAndroidBeamAllowed(Z)Z

    move-result v8

    .line 905
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    if-eqz v8, :cond_961

    const/4 v0, 0x1

    :goto_959
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 903
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_95f
    const/4 v1, 0x0

    goto :goto_94f

    .line 906
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_961
    const/4 v0, 0x0

    goto :goto_959

    .line 911
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_963
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 915
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 917
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_987

    const/4 v3, 0x1

    .line 918
    .local v3, "_arg2":Z
    :goto_977
    invoke-virtual {p0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 919
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    if-eqz v8, :cond_989

    const/4 v0, 0x1

    :goto_981
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 917
    .end local v3    # "_arg2":Z
    .end local v8    # "_result":Z
    :cond_987
    const/4 v3, 0x0

    goto :goto_977

    .line 920
    .restart local v3    # "_arg2":Z
    .restart local v8    # "_result":Z
    :cond_989
    const/4 v0, 0x0

    goto :goto_981

    .line 925
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v8    # "_result":Z
    :sswitch_98b
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 929
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 931
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9af

    const/4 v3, 0x1

    .line 932
    .restart local v3    # "_arg2":Z
    :goto_99f
    invoke-virtual {p0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 933
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    if-eqz v8, :cond_9b1

    const/4 v0, 0x1

    :goto_9a9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 931
    .end local v3    # "_arg2":Z
    .end local v8    # "_result":Z
    :cond_9af
    const/4 v3, 0x0

    goto :goto_99f

    .line 934
    .restart local v3    # "_arg2":Z
    .restart local v8    # "_result":Z
    :cond_9b1
    const/4 v0, 0x0

    goto :goto_9a9

    .line 939
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v8    # "_result":Z
    :sswitch_9b3
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 942
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v8

    .line 943
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    if-eqz v8, :cond_9cc

    const/4 v0, 0x1

    :goto_9c6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 944
    :cond_9cc
    const/4 v0, 0x0

    goto :goto_9c6

    .line 949
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_9ce
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 952
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v7

    .line 953
    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 955
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 959
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_9e4
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 963
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 964
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 965
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 967
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 971
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_9fe
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 974
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCopyContactToSimAllowed(I)Z

    move-result v8

    .line 975
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    if-eqz v8, :cond_a17

    const/4 v0, 0x1

    :goto_a11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 977
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 976
    :cond_a17
    const/4 v0, 0x0

    goto :goto_a11

    .line 981
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_a19
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isNFCStateChangeAllowed()Z

    move-result v8

    .line 983
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    if-eqz v8, :cond_a2e

    const/4 v0, 0x1

    :goto_a28
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 985
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 984
    :cond_a2e
    const/4 v0, 0x0

    goto :goto_a28

    .line 989
    .end local v8    # "_result":Z
    :sswitch_a30
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isUserRemoveCertificatesAllowed()Z

    move-result v8

    .line 991
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    if-eqz v8, :cond_a45

    const/4 v0, 0x1

    :goto_a3f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 992
    :cond_a45
    const/4 v0, 0x0

    goto :goto_a3f

    .line 997
    .end local v8    # "_result":Z
    :sswitch_a47
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isMMSCaptureEnabled()Z

    move-result v8

    .line 999
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    if-eqz v8, :cond_a5c

    const/4 v0, 0x1

    :goto_a56
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1000
    :cond_a5c
    const/4 v0, 0x0

    goto :goto_a56

    .line 1005
    .end local v8    # "_result":Z
    :sswitch_a5e
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1009
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1011
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1013
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a7f

    const/4 v4, 0x1

    .line 1014
    .local v4, "_arg3":Z
    :goto_a76
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1015
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1013
    .end local v4    # "_arg3":Z
    :cond_a7f
    const/4 v4, 0x0

    goto :goto_a76

    .line 1020
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_a81
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1023
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->notifyUserKeystoreUnlocked(I)V

    .line 1024
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1029
    .end local v1    # "_arg0":I
    :sswitch_a93
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getSealedState()Z

    move-result v8

    .line 1031
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    if-eqz v8, :cond_aa8

    const/4 v0, 0x1

    :goto_aa2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1032
    :cond_aa8
    const/4 v0, 0x0

    goto :goto_aa2

    .line 1037
    .end local v8    # "_result":Z
    :sswitch_aaa
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getSealedNotificationMessagesState()Z

    move-result v8

    .line 1039
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    if-eqz v8, :cond_abf

    const/4 v0, 0x1

    :goto_ab9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1041
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1040
    :cond_abf
    const/4 v0, 0x0

    goto :goto_ab9

    .line 1045
    .end local v8    # "_result":Z
    :sswitch_ac1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getSealedHideNotificationMessages()I

    move-result v8

    .line 1047
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1053
    .end local v8    # "_result":I
    :sswitch_ad3
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1056
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBTSecureAccessAllowedAsUser(I)Z

    move-result v8

    .line 1057
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    if-eqz v8, :cond_aec

    const/4 v0, 0x1

    :goto_ae6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1059
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1058
    :cond_aec
    const/4 v0, 0x0

    goto :goto_ae6

    .line 1063
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_aee
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1066
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPackageWhitelistedFromBTSecureAccess(Ljava/lang/String;)Z

    move-result v8

    .line 1067
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    if-eqz v8, :cond_b07

    const/4 v0, 0x1

    :goto_b01
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1068
    :cond_b07
    const/4 v0, 0x0

    goto :goto_b01

    .line 1073
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_b09
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1076
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPackageWhitelistedFromBTSecureAccessUid(I)Z

    move-result v8

    .line 1077
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    if-eqz v8, :cond_b22

    const/4 v0, 0x1

    :goto_b1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1079
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1078
    :cond_b22
    const/4 v0, 0x0

    goto :goto_b1c

    .line 1083
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_b24
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1086
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 1087
    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1089
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1093
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_b3a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCCMPolicyEnabledForCaller()Z

    move-result v8

    .line 1095
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    if-eqz v8, :cond_b4f

    const/4 v0, 0x1

    :goto_b49
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1097
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1096
    :cond_b4f
    const/4 v0, 0x0

    goto :goto_b49

    .line 1101
    .end local v8    # "_result":Z
    :sswitch_b51
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1104
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getSlotIdForCaller(Ljava/lang/String;)J

    move-result-wide v8

    .line 1105
    .local v8, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1107
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1111
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":J
    :sswitch_b67
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1115
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1116
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->getSlotIdForPackage(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 1117
    .restart local v8    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1118
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1119
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1123
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":J
    :sswitch_b81
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1126
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z

    move-result v8

    .line 1127
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    if-eqz v8, :cond_b9a

    const/4 v0, 0x1

    :goto_b94
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1129
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1128
    :cond_b9a
    const/4 v0, 0x0

    goto :goto_b94

    .line 1133
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_b9c
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1136
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAliasesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 1137
    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1139
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1143
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_bb2
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAccessControlMethodPassword()Z

    move-result v8

    .line 1145
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    if-eqz v8, :cond_bc7

    const/4 v0, 0x1

    :goto_bc1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1147
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1146
    :cond_bc7
    const/4 v0, 0x0

    goto :goto_bc1

    .line 1151
    .end local v8    # "_result":Z
    :sswitch_bc9
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAliasesForWiFi()Ljava/util/List;

    move-result-object v7

    .line 1153
    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1155
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1159
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_bdb
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getCertificateAliasesHavingPrivateKey()Ljava/util/List;

    move-result-object v7

    .line 1161
    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1163
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1167
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_bed
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAddHomeShorcutRequested()Z

    move-result v8

    .line 1169
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    if-eqz v8, :cond_c02

    const/4 v0, 0x1

    :goto_bfc
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1170
    :cond_c02
    const/4 v0, 0x0

    goto :goto_bfc

    .line 1175
    .end local v8    # "_result":Z
    :sswitch_c04
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isTimaKeystoreEnabled()Z

    move-result v8

    .line 1177
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    if-eqz v8, :cond_c19

    const/4 v0, 0x1

    :goto_c13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1178
    :cond_c19
    const/4 v0, 0x0

    goto :goto_c13

    .line 1183
    .end local v8    # "_result":Z
    :sswitch_c1b
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1186
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isTimaKeystoreEnabledForPackage(Ljava/lang/String;)Z

    move-result v8

    .line 1187
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    if-eqz v8, :cond_c34

    const/4 v0, 0x1

    :goto_c2e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1189
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1188
    :cond_c34
    const/4 v0, 0x0

    goto :goto_c2e

    .line 40
    :sswitch_data_c36
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x3 -> :sswitch_36
        0x4 -> :sswitch_5d
        0x5 -> :sswitch_73
        0x6 -> :sswitch_96
        0x7 -> :sswitch_b1
        0x8 -> :sswitch_cb
        0x9 -> :sswitch_f2
        0xa -> :sswitch_112
        0xb -> :sswitch_129
        0xc -> :sswitch_144
        0xd -> :sswitch_15f
        0xe -> :sswitch_17a
        0xf -> :sswitch_191
        0x10 -> :sswitch_1a8
        0x11 -> :sswitch_1bf
        0x12 -> :sswitch_1d6
        0x13 -> :sswitch_1f1
        0x14 -> :sswitch_203
        0x15 -> :sswitch_21a
        0x16 -> :sswitch_231
        0x17 -> :sswitch_251
        0x18 -> :sswitch_268
        0x19 -> :sswitch_288
        0x1a -> :sswitch_29f
        0x1b -> :sswitch_2bf
        0x1c -> :sswitch_2df
        0x1d -> :sswitch_2ff
        0x1e -> :sswitch_31a
        0x1f -> :sswitch_335
        0x20 -> :sswitch_355
        0x21 -> :sswitch_36c
        0x22 -> :sswitch_383
        0x23 -> :sswitch_39a
        0x24 -> :sswitch_3b1
        0x25 -> :sswitch_3c8
        0x26 -> :sswitch_3df
        0x27 -> :sswitch_3fa
        0x28 -> :sswitch_415
        0x29 -> :sswitch_427
        0x2a -> :sswitch_439
        0x2b -> :sswitch_450
        0x2c -> :sswitch_474
        0x2d -> :sswitch_48b
        0x2e -> :sswitch_49d
        0x2f -> :sswitch_4bf
        0x30 -> :sswitch_4da
        0x31 -> :sswitch_4f1
        0x32 -> :sswitch_508
        0x33 -> :sswitch_51f
        0x34 -> :sswitch_536
        0x35 -> :sswitch_556
        0x36 -> :sswitch_57a
        0x37 -> :sswitch_59a
        0x38 -> :sswitch_5ba
        0x39 -> :sswitch_5d1
        0x3a -> :sswitch_5e8
        0x3b -> :sswitch_603
        0x3c -> :sswitch_61a
        0x3d -> :sswitch_630
        0x3e -> :sswitch_665
        0x3f -> :sswitch_67c
        0x40 -> :sswitch_69c
        0x41 -> :sswitch_6b3
        0x42 -> :sswitch_6d7
        0x43 -> :sswitch_6ff
        0x44 -> :sswitch_72b
        0x45 -> :sswitch_757
        0x46 -> :sswitch_776
        0x47 -> :sswitch_78d
        0x48 -> :sswitch_7a4
        0x49 -> :sswitch_7c8
        0x4a -> :sswitch_7e8
        0x4b -> :sswitch_808
        0x4c -> :sswitch_81f
        0x4d -> :sswitch_831
        0x4e -> :sswitch_851
        0x4f -> :sswitch_868
        0x50 -> :sswitch_87f
        0x51 -> :sswitch_896
        0x52 -> :sswitch_8ad
        0x53 -> :sswitch_8c4
        0x54 -> :sswitch_8ec
        0x55 -> :sswitch_90c
        0x56 -> :sswitch_923
        0x57 -> :sswitch_943
        0x58 -> :sswitch_963
        0x59 -> :sswitch_98b
        0x5a -> :sswitch_9b3
        0x5b -> :sswitch_9ce
        0x5c -> :sswitch_9e4
        0x5d -> :sswitch_9fe
        0x5e -> :sswitch_a19
        0x5f -> :sswitch_a30
        0x60 -> :sswitch_a47
        0x61 -> :sswitch_a5e
        0x62 -> :sswitch_a81
        0x63 -> :sswitch_a93
        0x64 -> :sswitch_aaa
        0x65 -> :sswitch_ac1
        0x66 -> :sswitch_ad3
        0x67 -> :sswitch_aee
        0x68 -> :sswitch_b09
        0x69 -> :sswitch_b24
        0x6a -> :sswitch_b3a
        0x6b -> :sswitch_b51
        0x6c -> :sswitch_b67
        0x6d -> :sswitch_b81
        0x6e -> :sswitch_b9c
        0x6f -> :sswitch_bb2
        0x70 -> :sswitch_bc9
        0x71 -> :sswitch_bdb
        0x72 -> :sswitch_bed
        0x73 -> :sswitch_c04
        0x74 -> :sswitch_c1b
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
