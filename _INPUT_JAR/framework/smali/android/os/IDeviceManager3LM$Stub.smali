.class public abstract Landroid/os/IDeviceManager3LM$Stub;
.super Landroid/os/Binder;
.source "IDeviceManager3LM.java"

# interfaces
.implements Landroid/os/IDeviceManager3LM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDeviceManager3LM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDeviceManager3LM$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDeviceManager3LM"

.field static final TRANSACTION_addApn:I = 0x3b

.field static final TRANSACTION_addEmailAccount:I = 0x62

.field static final TRANSACTION_addOrUpdateApn:I = 0x50

.field static final TRANSACTION_addOrUpdateApnResult:I = 0x53

.field static final TRANSACTION_addVpnProfile:I = 0x5f

.field static final TRANSACTION_blockAdb:I = 0x26

.field static final TRANSACTION_blockScreenshot:I = 0x39

.field static final TRANSACTION_blockTethering:I = 0x38

.field static final TRANSACTION_blockUsb:I = 0x2c

.field static final TRANSACTION_changePackageState:I = 0x5e

.field static final TRANSACTION_checkAppUninstallPolicies:I = 0x12

.field static final TRANSACTION_checkPackagePermission:I = 0x8

.field static final TRANSACTION_checkSignature:I = 0x2a

.field static final TRANSACTION_clear:I = 0x1

.field static final TRANSACTION_clearApn:I = 0x3c

.field static final TRANSACTION_clearApplicationUserData:I = 0x25

.field static final TRANSACTION_clearPackagePermissions:I = 0x33

.field static final TRANSACTION_completePackageScan:I = 0x37

.field static final TRANSACTION_deleteApn:I = 0x4d

.field static final TRANSACTION_deleteApnResult:I = 0x54

.field static final TRANSACTION_deletePackage:I = 0x14

.field static final TRANSACTION_disablePackage:I = 0xa

.field static final TRANSACTION_enablePackage:I = 0xb

.field static final TRANSACTION_getActivationState:I = 0x46

.field static final TRANSACTION_getApn:I = 0x51

.field static final TRANSACTION_getApnByMccMnc:I = 0x52

.field static final TRANSACTION_getBluetoothEnabled:I = 0x6

.field static final TRANSACTION_getDeviceAdminLock:I = 0x64

.field static final TRANSACTION_getExternalSDEncryptionState:I = 0x34

.field static final TRANSACTION_getMultiUserEnabled:I = 0x3f

.field static final TRANSACTION_getNfcState:I = 0x22

.field static final TRANSACTION_getNotificationText:I = 0x40

.field static final TRANSACTION_getOwnerInfo:I = 0x49

.field static final TRANSACTION_getOwnerInfoEnabled:I = 0x48

.field static final TRANSACTION_getPackageScanner:I = 0x36

.field static final TRANSACTION_getPreferredApn:I = 0x4f

.field static final TRANSACTION_getSecureOSVendorName:I = 0x41

.field static final TRANSACTION_getVersion:I = 0x2

.field static final TRANSACTION_installPackage:I = 0x13

.field static final TRANSACTION_isAdminLocked:I = 0x2f

.field static final TRANSACTION_isApnSelectable:I = 0x4b

.field static final TRANSACTION_isPackage3LM:I = 0x65

.field static final TRANSACTION_isPackageDisabled:I = 0xd

.field static final TRANSACTION_isPackageWhitelisted:I = 0x43

.field static final TRANSACTION_isReadExternalStorageBlocked:I = 0x44

.field static final TRANSACTION_isSdEncrypted:I = 0x1f

.field static final TRANSACTION_isSdEncryptionRequired:I = 0x20

.field static final TRANSACTION_isSsidAllowed:I = 0x28

.field static final TRANSACTION_isSsidLocked:I = 0x29

.field static final TRANSACTION_isUsbBlocked:I = 0x2d

.field static final TRANSACTION_keyStoreChangePassword:I = 0x1c

.field static final TRANSACTION_keyStoreContains:I = 0x1a

.field static final TRANSACTION_keyStoreDeleteKey:I = 0x17

.field static final TRANSACTION_keyStoreGetKey:I = 0x16

.field static final TRANSACTION_keyStorePutKey:I = 0x15

.field static final TRANSACTION_keyStoreReset:I = 0x1b

.field static final TRANSACTION_keyStoreSetPassword:I = 0x18

.field static final TRANSACTION_keyStoreUnlock:I = 0x19

.field static final TRANSACTION_lockAdmin:I = 0x2e

.field static final TRANSACTION_lockApn:I = 0x3a

.field static final TRANSACTION_notification:I = 0x2b

.field static final TRANSACTION_putSettingsSecureInt:I = 0x1e

.field static final TRANSACTION_putSettingsSecureString:I = 0x1d

.field static final TRANSACTION_reboot:I = 0x61

.field static final TRANSACTION_restoreDefaultApns:I = 0x3d

.field static final TRANSACTION_setActivationState:I = 0x45

.field static final TRANSACTION_setActiveAdmin:I = 0x5c

.field static final TRANSACTION_setAllowedPackages:I = 0xc

.field static final TRANSACTION_setApnList:I = 0x4c

.field static final TRANSACTION_setAppInstallPermissionPolicies:I = 0xf

.field static final TRANSACTION_setAppInstallPkgNamePolicies:I = 0xe

.field static final TRANSACTION_setAppInstallPubkeyPolicies:I = 0x10

.field static final TRANSACTION_setAppUninstallPkgNamePolicies:I = 0x11

.field static final TRANSACTION_setBluetoothEnabled:I = 0x5

.field static final TRANSACTION_setBootLock:I = 0x3

.field static final TRANSACTION_setDeviceAdminLock:I = 0x63

.field static final TRANSACTION_setExternalStorageEnabled:I = 0x4a

.field static final TRANSACTION_setLocationMode:I = 0x56

.field static final TRANSACTION_setLocationProviderEnabled:I = 0x31

.field static final TRANSACTION_setMultiUserEnabled:I = 0x3e

.field static final TRANSACTION_setNfcState:I = 0x23

.field static final TRANSACTION_setNotificationText:I = 0x7

.field static final TRANSACTION_setOtaDelay:I = 0x30

.field static final TRANSACTION_setOwnerInfo:I = 0x5a

.field static final TRANSACTION_setOwnerInfoEnable:I = 0x59

.field static final TRANSACTION_setPackagePermission:I = 0x9

.field static final TRANSACTION_setPackageScanner:I = 0x35

.field static final TRANSACTION_setPackageWhitelist:I = 0x42

.field static final TRANSACTION_setPreferredActivity:I = 0x58

.field static final TRANSACTION_setPreferredApn:I = 0x4e

.field static final TRANSACTION_setPreferredApnResult:I = 0x55

.field static final TRANSACTION_setProvisionedSsids:I = 0x47

.field static final TRANSACTION_setRestrictBackgroundData:I = 0x5d

.field static final TRANSACTION_setScreenLock:I = 0x60

.field static final TRANSACTION_setSdEncryptionRequired:I = 0x21

.field static final TRANSACTION_setSsidFilter:I = 0x27

.field static final TRANSACTION_setWifiState:I = 0x24

.field static final TRANSACTION_setisSimulatorPermitted:I = 0x32

.field static final TRANSACTION_unlock:I = 0x4

.field static final TRANSACTION_updateLocale:I = 0x5b

.field static final TRANSACTION_updateSdNotification:I = 0x57


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;
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
    const-string v1, "android.os.IDeviceManager3LM"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IDeviceManager3LM;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/os/IDeviceManager3LM;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/os/IDeviceManager3LM$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IDeviceManager3LM$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_92a

    .line 1050
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_9
    return v9

    .line 43
    :sswitch_a
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->clear()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 55
    :sswitch_1c
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getVersion()I

    move-result v7

    .line 57
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 63
    .end local v7    # "_result":I
    :sswitch_2c
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3f

    move v1, v9

    .line 66
    .local v1, "_arg0":Z
    :goto_38
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setBootLock(Z)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v1    # "_arg0":Z
    :cond_3f
    move v1, v0

    .line 65
    goto :goto_38

    .line 72
    :sswitch_41
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->unlock()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 79
    :sswitch_4d
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_60

    move v1, v9

    .line 82
    .restart local v1    # "_arg0":Z
    :goto_59
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setBluetoothEnabled(Z)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v1    # "_arg0":Z
    :cond_60
    move v1, v0

    .line 81
    goto :goto_59

    .line 88
    :sswitch_62
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getBluetoothEnabled()Z

    move-result v7

    .line 90
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v7, :cond_71

    move v0, v9

    :cond_71
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 96
    .end local v7    # "_result":Z
    :sswitch_75
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setNotificationText(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 105
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_85
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 111
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v7, :cond_9c

    move v0, v9

    :cond_9c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 117
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_a1
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_c4

    move v3, v9

    .line 124
    .local v3, "_arg2":Z
    :goto_b5
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IDeviceManager3LM$Stub;->setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 125
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v7, :cond_bf

    move v0, v9

    :cond_bf
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v3    # "_arg2":Z
    .end local v7    # "_result":Z
    :cond_c4
    move v3, v0

    .line 123
    goto :goto_b5

    .line 131
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_c6
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->disablePackage(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 140
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_d7
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->enablePackage(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 149
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_e8
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 152
    .local v8, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 153
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setAllowedPackages(Ljava/util/Map;)Z

    move-result v7

    .line 154
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v7, :cond_103

    move v0, v9

    :cond_103
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 160
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v7    # "_result":Z
    .end local v8    # "cl":Ljava/lang/ClassLoader;
    :sswitch_108
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->isPackageDisabled(Ljava/lang/String;)Z

    move-result v7

    .line 164
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v7, :cond_11b

    move v0, v9

    :cond_11b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 170
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_120
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 173
    .restart local v8    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 174
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPkgNamePolicies(Ljava/util/Map;)Z

    move-result v7

    .line 175
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v7, :cond_13b

    move v0, v9

    :cond_13b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 181
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v7    # "_result":Z
    .end local v8    # "cl":Ljava/lang/ClassLoader;
    :sswitch_140
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 184
    .restart local v8    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 185
    .restart local v1    # "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPermissionPolicies(Ljava/util/Map;)Z

    move-result v7

    .line 186
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v7, :cond_15b

    move v0, v9

    :cond_15b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 192
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v7    # "_result":Z
    .end local v8    # "cl":Ljava/lang/ClassLoader;
    :sswitch_160
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 195
    .restart local v8    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 196
    .restart local v1    # "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPubkeyPolicies(Ljava/util/Map;)Z

    move-result v7

    .line 197
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v7, :cond_17b

    move v0, v9

    :cond_17b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 203
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v7    # "_result":Z
    .end local v8    # "cl":Ljava/lang/ClassLoader;
    :sswitch_180
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 206
    .restart local v8    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 207
    .restart local v1    # "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setAppUninstallPkgNamePolicies(Ljava/util/Map;)Z

    move-result v7

    .line 208
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v7, :cond_19b

    move v0, v9

    :cond_19b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 214
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v7    # "_result":Z
    .end local v8    # "cl":Ljava/lang/ClassLoader;
    :sswitch_1a0
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->checkAppUninstallPolicies(Ljava/lang/String;)Z

    move-result v7

    .line 218
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v7, :cond_1b3

    move v0, v9

    :cond_1b3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 224
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_1b8
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 227
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->installPackage(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 233
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_1c9
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1e1

    move v2, v9

    .line 238
    .local v2, "_arg1":Z
    :goto_1d9
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->deletePackage(Ljava/lang/String;Z)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2    # "_arg1":Z
    :cond_1e1
    move v2, v0

    .line 237
    goto :goto_1d9

    .line 244
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_1e3
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 248
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->keyStorePutKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 250
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v7, :cond_1fa

    move v0, v9

    :cond_1fa
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 256
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_1ff
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 259
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreGetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 260
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 266
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_214
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreDeleteKey(Ljava/lang/String;)Z

    move-result v7

    .line 270
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v7, :cond_227

    move v0, v9

    :cond_227
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 276
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_22c
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 279
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreSetPassword(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 285
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_23d
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreUnlock(Ljava/lang/String;)Z

    move-result v7

    .line 289
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v7, :cond_250

    move v0, v9

    :cond_250
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 295
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_255
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 298
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreContains(Ljava/lang/String;)Z

    move-result v7

    .line 299
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    if-eqz v7, :cond_268

    move v0, v9

    :cond_268
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 305
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_26d
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreReset()Z

    move-result v7

    .line 307
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v7, :cond_27c

    move v0, v9

    :cond_27c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 313
    .end local v7    # "_result":Z
    :sswitch_281
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 317
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 318
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreChangePassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 319
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    if-eqz v7, :cond_298

    move v0, v9

    :cond_298
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 325
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_29d
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 329
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 330
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 331
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    if-eqz v7, :cond_2b4

    move v0, v9

    :cond_2b4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 337
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_2b9
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 341
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 342
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->putSettingsSecureInt(Ljava/lang/String;I)Z

    move-result v7

    .line 343
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v7, :cond_2d0

    move v0, v9

    :cond_2d0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 349
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Z
    :sswitch_2d5
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isSdEncrypted()Z

    move-result v7

    .line 351
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    if-eqz v7, :cond_2e4

    move v0, v9

    :cond_2e4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 357
    .end local v7    # "_result":Z
    :sswitch_2e9
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isSdEncryptionRequired()Z

    move-result v7

    .line 359
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v7, :cond_2f8

    move v0, v9

    :cond_2f8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 365
    .end local v7    # "_result":Z
    :sswitch_2fd
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_311

    move v1, v9

    .line 368
    .local v1, "_arg0":Z
    :goto_309
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setSdEncryptionRequired(Z)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_311
    move v1, v0

    .line 367
    goto :goto_309

    .line 374
    :sswitch_313
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getNfcState()I

    move-result v7

    .line 376
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 382
    .end local v7    # "_result":I
    :sswitch_324
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 385
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setNfcState(I)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 391
    .end local v1    # "_arg0":I
    :sswitch_335
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 394
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setWifiState(I)V

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 400
    .end local v1    # "_arg0":I
    :sswitch_346
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->clearApplicationUserData(Ljava/lang/String;)Z

    move-result v7

    .line 404
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v7, :cond_359

    move v0, v9

    :cond_359
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 410
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_35e
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_372

    move v1, v9

    .line 413
    .local v1, "_arg0":Z
    :goto_36a
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->blockAdb(Z)V

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_372
    move v1, v0

    .line 412
    goto :goto_36a

    .line 419
    :sswitch_374
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 422
    .local v6, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v6}, Landroid/os/IDeviceManager3LM$Stub;->setSsidFilter(Ljava/util/List;)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 428
    .end local v6    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_385
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->isSsidAllowed(Ljava/lang/String;)Z

    move-result v7

    .line 432
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    if-eqz v7, :cond_398

    move v0, v9

    :cond_398
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 438
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_39d
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 441
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->isSsidLocked(Ljava/lang/String;)Z

    move-result v7

    .line 442
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    if-eqz v7, :cond_3b0

    move v0, v9

    :cond_3b0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 448
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_3b5
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 451
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->checkSignature(I)Z

    move-result v7

    .line 452
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    if-eqz v7, :cond_3c8

    move v0, v9

    :cond_3c8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 458
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_3cd
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 462
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 464
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 465
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IDeviceManager3LM$Stub;->notification(III)V

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 471
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_3e6
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3fa

    move v1, v9

    .line 474
    .local v1, "_arg0":Z
    :goto_3f2
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->blockUsb(Z)V

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_3fa
    move v1, v0

    .line 473
    goto :goto_3f2

    .line 480
    :sswitch_3fc
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isUsbBlocked()Z

    move-result v7

    .line 482
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    if-eqz v7, :cond_40b

    move v0, v9

    :cond_40b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 488
    .end local v7    # "_result":Z
    :sswitch_410
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_424

    move v1, v9

    .line 491
    .restart local v1    # "_arg0":Z
    :goto_41c
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->lockAdmin(Z)V

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_424
    move v1, v0

    .line 490
    goto :goto_41c

    .line 497
    :sswitch_426
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isAdminLocked()Z

    move-result v7

    .line 499
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    if-eqz v7, :cond_435

    move v0, v9

    :cond_435
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 505
    .end local v7    # "_result":Z
    :sswitch_43a
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 508
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setOtaDelay(I)V

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 514
    .end local v1    # "_arg0":I
    :sswitch_44b
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_463

    move v2, v9

    .line 519
    .local v2, "_arg1":Z
    :goto_45b
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->setLocationProviderEnabled(Ljava/lang/String;Z)V

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2    # "_arg1":Z
    :cond_463
    move v2, v0

    .line 518
    goto :goto_45b

    .line 525
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_465
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_479

    move v1, v9

    .line 528
    .local v1, "_arg0":Z
    :goto_471
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setisSimulatorPermitted(Z)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_479
    move v1, v0

    .line 527
    goto :goto_471

    .line 534
    :sswitch_47b
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->clearPackagePermissions()V

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 541
    :sswitch_488
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getExternalSDEncryptionState()I

    move-result v7

    .line 543
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 549
    .end local v7    # "_result":I
    :sswitch_499
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4b5

    move v2, v9

    .line 555
    .restart local v2    # "_arg1":Z
    :goto_4a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 556
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/IDeviceManager3LM$Stub;->setPackageScanner(Ljava/lang/String;ZI)V

    .line 557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :cond_4b5
    move v2, v0

    .line 553
    goto :goto_4a9

    .line 562
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_4b7
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getPackageScanner()[Ljava/lang/String;

    move-result-object v7

    .line 564
    .local v7, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 570
    .end local v7    # "_result":[Ljava/lang/String;
    :sswitch_4c8
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 574
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 575
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->completePackageScan(II)V

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 581
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_4dd
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4f1

    move v1, v9

    .line 584
    .local v1, "_arg0":Z
    :goto_4e9
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->blockTethering(Z)V

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_4f1
    move v1, v0

    .line 583
    goto :goto_4e9

    .line 590
    :sswitch_4f3
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_507

    move v1, v9

    .line 593
    .restart local v1    # "_arg0":Z
    :goto_4ff
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->blockScreenshot(Z)V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_507
    move v1, v0

    .line 592
    goto :goto_4ff

    .line 599
    :sswitch_509
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_51d

    move v1, v9

    .line 602
    .restart local v1    # "_arg0":Z
    :goto_515
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->lockApn(Z)V

    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_51d
    move v1, v0

    .line 601
    goto :goto_515

    .line 608
    :sswitch_51f
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 611
    .restart local v8    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 612
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->addApn(Ljava/util/Map;)V

    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 618
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v8    # "cl":Ljava/lang/ClassLoader;
    :sswitch_538
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->clearApn()V

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 625
    :sswitch_545
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->restoreDefaultApns()V

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 632
    :sswitch_552
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_566

    move v1, v9

    .line 635
    .local v1, "_arg0":Z
    :goto_55e
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setMultiUserEnabled(Z)V

    .line 636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_566
    move v1, v0

    .line 634
    goto :goto_55e

    .line 641
    :sswitch_568
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getMultiUserEnabled()Z

    move-result v7

    .line 643
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    if-eqz v7, :cond_577

    move v0, v9

    :cond_577
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 649
    .end local v7    # "_result":Z
    :sswitch_57c
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getNotificationText()Ljava/lang/String;

    move-result-object v7

    .line 651
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 657
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_58d
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getSecureOSVendorName()Ljava/lang/String;

    move-result-object v7

    .line 659
    .restart local v7    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 665
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_59e
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 668
    .restart local v6    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v6}, Landroid/os/IDeviceManager3LM$Stub;->setPackageWhitelist(Ljava/util/List;)V

    .line 669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 674
    .end local v6    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5af
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 677
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->isPackageWhitelisted(Ljava/lang/String;)Z

    move-result v7

    .line 678
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    if-eqz v7, :cond_5c2

    move v0, v9

    :cond_5c2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 684
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_5c7
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isReadExternalStorageBlocked()Z

    move-result v7

    .line 686
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    if-eqz v7, :cond_5d6

    move v0, v9

    :cond_5d6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 692
    .end local v7    # "_result":Z
    :sswitch_5db
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5ef

    move v1, v9

    .line 695
    .local v1, "_arg0":Z
    :goto_5e7
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setActivationState(Z)V

    .line 696
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_5ef
    move v1, v0

    .line 694
    goto :goto_5e7

    .line 701
    :sswitch_5f1
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getActivationState()Z

    move-result v7

    .line 703
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    if-eqz v7, :cond_600

    move v0, v9

    :cond_600
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 709
    .end local v7    # "_result":Z
    :sswitch_605
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 712
    .restart local v6    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v6}, Landroid/os/IDeviceManager3LM$Stub;->setProvisionedSsids(Ljava/util/List;)V

    .line 713
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 718
    .end local v6    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_616
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getOwnerInfoEnabled()I

    move-result v7

    .line 720
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 726
    .end local v7    # "_result":I
    :sswitch_627
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getOwnerInfo()Ljava/lang/String;

    move-result-object v7

    .line 728
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 734
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_638
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_64c

    move v1, v9

    .line 737
    .restart local v1    # "_arg0":Z
    :goto_644
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setExternalStorageEnabled(Z)V

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_64c
    move v1, v0

    .line 736
    goto :goto_644

    .line 743
    :sswitch_64e
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 746
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->isApnSelectable(Ljava/lang/String;)Z

    move-result v7

    .line 747
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    if-eqz v7, :cond_661

    move v0, v9

    :cond_661
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 753
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_666
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 756
    .restart local v6    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v6}, Landroid/os/IDeviceManager3LM$Stub;->setApnList(Ljava/util/List;)V

    .line 757
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 762
    .end local v6    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_677
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 765
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->deleteApn(I)Z

    move-result v7

    .line 766
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    if-eqz v7, :cond_68a

    move v0, v9

    :cond_68a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 772
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_68f
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 775
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setPreferredApn(I)Z

    move-result v7

    .line 776
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    if-eqz v7, :cond_6a2

    move v0, v9

    :cond_6a2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 782
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_6a7
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getPreferredApn()I

    move-result v7

    .line 784
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 790
    .end local v7    # "_result":I
    :sswitch_6b8
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 793
    .restart local v8    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 795
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 796
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->addOrUpdateApn(Ljava/util/Map;I)Z

    move-result v7

    .line 797
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    if-eqz v7, :cond_6d7

    move v0, v9

    :cond_6d7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 803
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Z
    .end local v8    # "cl":Ljava/lang/ClassLoader;
    :sswitch_6dc
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 806
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->getApn(I)Ljava/util/Map;

    move-result-object v7

    .line 807
    .local v7, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_9

    .line 813
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Ljava/util/Map;
    :sswitch_6f1
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 817
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 818
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->getApnByMccMnc(II)Ljava/util/List;

    move-result-object v7

    .line 819
    .local v7, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 825
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Ljava/util/List;
    :sswitch_70a
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 828
    .restart local v8    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 830
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 831
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->addOrUpdateApnResult(Ljava/util/Map;I)I

    move-result v7

    .line 832
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 838
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":I
    .end local v8    # "cl":Ljava/lang/ClassLoader;
    :sswitch_72b
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 841
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->deleteApnResult(I)I

    move-result v7

    .line 842
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 848
    .end local v1    # "_arg0":I
    .end local v7    # "_result":I
    :sswitch_740
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 851
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setPreferredApnResult(I)I

    move-result v7

    .line 852
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 858
    .end local v1    # "_arg0":I
    .end local v7    # "_result":I
    :sswitch_755
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 861
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setLocationMode(I)Z

    move-result v7

    .line 862
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    if-eqz v7, :cond_768

    move v0, v9

    :cond_768
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 868
    .end local v1    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_76d
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_785

    move v1, v9

    .line 872
    .local v1, "_arg0":Z
    :goto_779
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 873
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->updateSdNotification(ZLjava/lang/String;)V

    .line 874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_785
    move v1, v0

    .line 870
    goto :goto_779

    .line 879
    :sswitch_787
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7cb

    .line 882
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 888
    .local v1, "_arg0":Landroid/content/Intent;
    :goto_79a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7cd

    .line 889
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 895
    .local v2, "_arg1":Landroid/content/IntentFilter;
    :goto_7a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 897
    .restart local v3    # "_arg2":I
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ComponentName;

    .line 899
    .local v4, "_arg3":[Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7cf

    .line 900
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .local v5, "_arg4":Landroid/content/ComponentName;
    :goto_7c2
    move-object v0, p0

    .line 905
    invoke-virtual/range {v0 .. v5}, Landroid/os/IDeviceManager3LM$Stub;->setPreferredActivity(Landroid/content/Intent;Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 906
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 885
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Landroid/content/IntentFilter;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[Landroid/content/ComponentName;
    .end local v5    # "_arg4":Landroid/content/ComponentName;
    :cond_7cb
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/Intent;
    goto :goto_79a

    .line 892
    :cond_7cd
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/IntentFilter;
    goto :goto_7a8

    .line 903
    .restart local v3    # "_arg2":I
    .restart local v4    # "_arg3":[Landroid/content/ComponentName;
    :cond_7cf
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/content/ComponentName;
    goto :goto_7c2

    .line 911
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Landroid/content/IntentFilter;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[Landroid/content/ComponentName;
    .end local v5    # "_arg4":Landroid/content/ComponentName;
    :sswitch_7d1
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_7e5

    move v1, v9

    .line 914
    .local v1, "_arg0":Z
    :goto_7dd
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setOwnerInfoEnable(Z)V

    .line 915
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_7e5
    move v1, v0

    .line 913
    goto :goto_7dd

    .line 920
    :sswitch_7e7
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setOwnerInfo(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 929
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_7f8
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 931
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 933
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 934
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->updateLocale(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 935
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    if-eqz v7, :cond_80f

    move v0, v9

    :cond_80f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 941
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_814
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 945
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_833

    move v2, v9

    .line 946
    .local v2, "_arg1":Z
    :goto_824
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->setActiveAdmin(Ljava/lang/String;Z)Z

    move-result v7

    .line 947
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    if-eqz v7, :cond_82e

    move v0, v9

    :cond_82e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v2    # "_arg1":Z
    .end local v7    # "_result":Z
    :cond_833
    move v2, v0

    .line 945
    goto :goto_824

    .line 953
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_835
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 957
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_854

    move v2, v9

    .line 958
    .restart local v2    # "_arg1":Z
    :goto_845
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->setRestrictBackgroundData(Ljava/lang/String;Z)Z

    move-result v7

    .line 959
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    if-eqz v7, :cond_84f

    move v0, v9

    :cond_84f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v2    # "_arg1":Z
    .end local v7    # "_result":Z
    :cond_854
    move v2, v0

    .line 957
    goto :goto_845

    .line 965
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_856
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 969
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 970
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->changePackageState(Ljava/lang/String;I)V

    .line 971
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 976
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_86b
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 979
    .restart local v8    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 980
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->addVpnProfile(Ljava/util/Map;)Z

    move-result v7

    .line 981
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    if-eqz v7, :cond_886

    move v0, v9

    :cond_886
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 987
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v7    # "_result":Z
    .end local v8    # "cl":Ljava/lang/ClassLoader;
    :sswitch_88b
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 991
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 992
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->setScreenLock(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 993
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    if-eqz v7, :cond_8a2

    move v0, v9

    :cond_8a2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 999
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_8a7
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1002
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->reboot(Ljava/lang/String;)Z

    move-result v7

    .line 1003
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    if-eqz v7, :cond_8ba

    move v0, v9

    :cond_8ba
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 1009
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_8bf
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 1012
    .restart local v8    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 1013
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->addEmailAccount(Ljava/util/Map;)Z

    move-result v7

    .line 1014
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    if-eqz v7, :cond_8da

    move v0, v9

    :cond_8da
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 1020
    .end local v1    # "_arg0":Ljava/util/Map;
    .end local v7    # "_result":Z
    .end local v8    # "cl":Ljava/lang/ClassLoader;
    :sswitch_8df
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1024
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_8f7

    move v2, v9

    .line 1025
    .local v2, "_arg1":Z
    :goto_8ef
    invoke-virtual {p0, v1, v2}, Landroid/os/IDeviceManager3LM$Stub;->setDeviceAdminLock(Ljava/lang/String;Z)V

    .line 1026
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v2    # "_arg1":Z
    :cond_8f7
    move v2, v0

    .line 1024
    goto :goto_8ef

    .line 1031
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_8f9
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1034
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->getDeviceAdminLock(Ljava/lang/String;)Z

    move-result v7

    .line 1035
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    if-eqz v7, :cond_90c

    move v0, v9

    :cond_90c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 1041
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_911
    const-string v10, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1044
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->isPackage3LM(Ljava/lang/String;)Z

    move-result v7

    .line 1045
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    if-eqz v7, :cond_924

    move v0, v9

    :cond_924
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 39
    nop

    :sswitch_data_92a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_41
        0x5 -> :sswitch_4d
        0x6 -> :sswitch_62
        0x7 -> :sswitch_75
        0x8 -> :sswitch_85
        0x9 -> :sswitch_a1
        0xa -> :sswitch_c6
        0xb -> :sswitch_d7
        0xc -> :sswitch_e8
        0xd -> :sswitch_108
        0xe -> :sswitch_120
        0xf -> :sswitch_140
        0x10 -> :sswitch_160
        0x11 -> :sswitch_180
        0x12 -> :sswitch_1a0
        0x13 -> :sswitch_1b8
        0x14 -> :sswitch_1c9
        0x15 -> :sswitch_1e3
        0x16 -> :sswitch_1ff
        0x17 -> :sswitch_214
        0x18 -> :sswitch_22c
        0x19 -> :sswitch_23d
        0x1a -> :sswitch_255
        0x1b -> :sswitch_26d
        0x1c -> :sswitch_281
        0x1d -> :sswitch_29d
        0x1e -> :sswitch_2b9
        0x1f -> :sswitch_2d5
        0x20 -> :sswitch_2e9
        0x21 -> :sswitch_2fd
        0x22 -> :sswitch_313
        0x23 -> :sswitch_324
        0x24 -> :sswitch_335
        0x25 -> :sswitch_346
        0x26 -> :sswitch_35e
        0x27 -> :sswitch_374
        0x28 -> :sswitch_385
        0x29 -> :sswitch_39d
        0x2a -> :sswitch_3b5
        0x2b -> :sswitch_3cd
        0x2c -> :sswitch_3e6
        0x2d -> :sswitch_3fc
        0x2e -> :sswitch_410
        0x2f -> :sswitch_426
        0x30 -> :sswitch_43a
        0x31 -> :sswitch_44b
        0x32 -> :sswitch_465
        0x33 -> :sswitch_47b
        0x34 -> :sswitch_488
        0x35 -> :sswitch_499
        0x36 -> :sswitch_4b7
        0x37 -> :sswitch_4c8
        0x38 -> :sswitch_4dd
        0x39 -> :sswitch_4f3
        0x3a -> :sswitch_509
        0x3b -> :sswitch_51f
        0x3c -> :sswitch_538
        0x3d -> :sswitch_545
        0x3e -> :sswitch_552
        0x3f -> :sswitch_568
        0x40 -> :sswitch_57c
        0x41 -> :sswitch_58d
        0x42 -> :sswitch_59e
        0x43 -> :sswitch_5af
        0x44 -> :sswitch_5c7
        0x45 -> :sswitch_5db
        0x46 -> :sswitch_5f1
        0x47 -> :sswitch_605
        0x48 -> :sswitch_616
        0x49 -> :sswitch_627
        0x4a -> :sswitch_638
        0x4b -> :sswitch_64e
        0x4c -> :sswitch_666
        0x4d -> :sswitch_677
        0x4e -> :sswitch_68f
        0x4f -> :sswitch_6a7
        0x50 -> :sswitch_6b8
        0x51 -> :sswitch_6dc
        0x52 -> :sswitch_6f1
        0x53 -> :sswitch_70a
        0x54 -> :sswitch_72b
        0x55 -> :sswitch_740
        0x56 -> :sswitch_755
        0x57 -> :sswitch_76d
        0x58 -> :sswitch_787
        0x59 -> :sswitch_7d1
        0x5a -> :sswitch_7e7
        0x5b -> :sswitch_7f8
        0x5c -> :sswitch_814
        0x5d -> :sswitch_835
        0x5e -> :sswitch_856
        0x5f -> :sswitch_86b
        0x60 -> :sswitch_88b
        0x61 -> :sswitch_8a7
        0x62 -> :sswitch_8bf
        0x63 -> :sswitch_8df
        0x64 -> :sswitch_8f9
        0x65 -> :sswitch_911
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
