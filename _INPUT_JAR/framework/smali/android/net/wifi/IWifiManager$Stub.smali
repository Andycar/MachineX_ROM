.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x1f

.field static final TRANSACTION_acquireWifiLock:I = 0x1a

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x5

.field static final TRANSACTION_addToBlacklist:I = 0x27

.field static final TRANSACTION_callSECApi:I = 0x44

.field static final TRANSACTION_callSECStringApi:I = 0x45

.field static final TRANSACTION_checkWarningPopup:I = 0x59

.field static final TRANSACTION_clearBlacklist:I = 0x28

.field static final TRANSACTION_disableNetwork:I = 0x8

.field static final TRANSACTION_disconnect:I = 0xd

.field static final TRANSACTION_enableAggressiveHandover:I = 0x40

.field static final TRANSACTION_enableNetwork:I = 0x7

.field static final TRANSACTION_enableTdls:I = 0x2c

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x2d

.field static final TRANSACTION_enableVerboseLogging:I = 0x3d

.field static final TRANSACTION_getAggressiveHandover:I = 0x3f

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x41

.field static final TRANSACTION_getBatchedScanResults:I = 0x30

.field static final TRANSACTION_getChannelList:I = 0xa

.field static final TRANSACTION_getConfigFile:I = 0x2b

.field static final TRANSACTION_getConfiguredNetworks:I = 0x3

.field static final TRANSACTION_getConnectionInfo:I = 0x10

.field static final TRANSACTION_getConnectionStatistics:I = 0x43

.field static final TRANSACTION_getCountryRev:I = 0x51

.field static final TRANSACTION_getDhcpInfo:I = 0x18

.field static final TRANSACTION_getFrequencyBand:I = 0x15

.field static final TRANSACTION_getFullRoamScanPeriod:I = 0x4d

.field static final TRANSACTION_getLinkStatus:I = 0x52

.field static final TRANSACTION_getNetworkInfo:I = 0x58

.field static final TRANSACTION_getPPPOEInfo:I = 0x35

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getRoamBand:I = 0x4f

.field static final TRANSACTION_getRoamDelta:I = 0x49

.field static final TRANSACTION_getRoamScanPeriod:I = 0x4b

.field static final TRANSACTION_getRoamTrigger:I = 0x47

.field static final TRANSACTION_getS69BssInfo:I = 0x60

.field static final TRANSACTION_getS69PartMsg:I = 0x5f

.field static final TRANSACTION_getScanResults:I = 0xc

.field static final TRANSACTION_getSpecificNetwork:I = 0x56

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x3e

.field static final TRANSACTION_getWifiApChameleonSsid:I = 0x37

.field static final TRANSACTION_getWifiApConfigTxPower:I = 0x38

.field static final TRANSACTION_getWifiApConfiguration:I = 0x23

.field static final TRANSACTION_getWifiApEnabledState:I = 0x22

.field static final TRANSACTION_getWifiApStaList:I = 0x36

.field static final TRANSACTION_getWifiApTimeOut:I = 0x3b

.field static final TRANSACTION_getWifiEnabledState:I = 0x12

.field static final TRANSACTION_getWifiIBSSEnabledState:I = 0x55

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x29

.field static final TRANSACTION_getWifiStateMachineMessenger:I = 0x2a

.field static final TRANSACTION_getWpsNfcConfigurationToken:I = 0x3c

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x1d

.field static final TRANSACTION_isBatchedScanSupported:I = 0x31

.field static final TRANSACTION_isDualBandSupported:I = 0x16

.field static final TRANSACTION_isMulticastEnabled:I = 0x1e

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x19

.field static final TRANSACTION_modifyPasspointCred:I = 0x57

.field static final TRANSACTION_pingSupplicant:I = 0x9

.field static final TRANSACTION_pollBatchedScan:I = 0x32

.field static final TRANSACTION_reassociate:I = 0xf

.field static final TRANSACTION_reconnect:I = 0xe

.field static final TRANSACTION_releaseMulticastLock:I = 0x20

.field static final TRANSACTION_releaseWifiLock:I = 0x1c

.field static final TRANSACTION_removeNetwork:I = 0x6

.field static final TRANSACTION_removeNetworkByMDM:I = 0x5a

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestBatchedScan:I = 0x2e

.field static final TRANSACTION_saveConfiguration:I = 0x17

.field static final TRANSACTION_saveNetworkByMDM:I = 0x5b

.field static final TRANSACTION_sendS69LocationServiceRequest:I = 0x5e

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x42

.field static final TRANSACTION_setCountryCode:I = 0x13

.field static final TRANSACTION_setCountryRev:I = 0x50

.field static final TRANSACTION_setFrequencyBand:I = 0x14

.field static final TRANSACTION_setFullRoamScanPeriod:I = 0x4c

.field static final TRANSACTION_setIsFmcNetwork:I = 0x53

.field static final TRANSACTION_setRoamBand:I = 0x4e

.field static final TRANSACTION_setRoamDelta:I = 0x48

.field static final TRANSACTION_setRoamScanPeriod:I = 0x4a

.field static final TRANSACTION_setRoamTrigger:I = 0x46

.field static final TRANSACTION_setS69DisableLocationService:I = 0x5d

.field static final TRANSACTION_setS69EnableLocationService:I = 0x5c

.field static final TRANSACTION_setWifiApConfigTxPower:I = 0x39

.field static final TRANSACTION_setWifiApConfiguration:I = 0x24

.field static final TRANSACTION_setWifiApEnabled:I = 0x21

.field static final TRANSACTION_setWifiApTimeOut:I = 0x3a

.field static final TRANSACTION_setWifiEnabled:I = 0x11

.field static final TRANSACTION_setWifiIBSSEnabled:I = 0x54

.field static final TRANSACTION_startPPPOE:I = 0x33

.field static final TRANSACTION_startScan:I = 0xb

.field static final TRANSACTION_startWifi:I = 0x25

.field static final TRANSACTION_stopBatchedScan:I = 0x2f

.field static final TRANSACTION_stopPPPOE:I = 0x34

.field static final TRANSACTION_stopWifi:I = 0x26

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x1b


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_3
    return-object v0

    .line 32
    :cond_4
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Landroid/net/wifi/IWifiManager;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
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
    .line 44
    sparse-switch p1, :sswitch_data_920

    .line 1049
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_7
    return v9

    .line 48
    :sswitch_8
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v9, 0x1

    goto :goto_7

    .line 53
    :sswitch_f
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    move-result v4

    .line 55
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v9, 0x1

    goto :goto_7

    .line 61
    .end local v4    # "_result":I
    :sswitch_20
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v4

    .line 63
    .local v4, "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v4, :cond_38

    .line 65
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    :goto_36
    const/4 v9, 0x1

    goto :goto_7

    .line 69
    :cond_38
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_36

    .line 75
    .end local v4    # "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    :sswitch_3d
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v8

    .line 77
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 79
    const/4 v9, 0x1

    goto :goto_7

    .line 83
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_4e
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v8

    .line 85
    .restart local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 87
    const/4 v9, 0x1

    goto :goto_7

    .line 91
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_5f
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7e

    .line 94
    sget-object v9, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 99
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_72
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 100
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v9, 0x1

    goto :goto_7

    .line 97
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "_result":I
    :cond_7e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_72

    .line 106
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_80
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v4

    .line 110
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v4, :cond_99

    const/4 v9, 0x1

    :goto_93
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 111
    :cond_99
    const/4 v9, 0x0

    goto :goto_93

    .line 116
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_9b
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_bb

    const/4 v1, 0x1

    .line 121
    .local v1, "_arg1":Z
    :goto_ab
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v4

    .line 122
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v4, :cond_bd

    const/4 v9, 0x1

    :goto_b5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 120
    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_bb
    const/4 v1, 0x0

    goto :goto_ab

    .line 123
    .restart local v1    # "_arg1":Z
    .restart local v4    # "_result":Z
    :cond_bd
    const/4 v9, 0x0

    goto :goto_b5

    .line 128
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :sswitch_bf
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v4

    .line 132
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v4, :cond_d8

    const/4 v9, 0x1

    :goto_d2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 133
    :cond_d8
    const/4 v9, 0x0

    goto :goto_d2

    .line 138
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_da
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v4

    .line 140
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v4, :cond_ef

    const/4 v9, 0x1

    :goto_e9
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 141
    :cond_ef
    const/4 v9, 0x0

    goto :goto_e9

    .line 146
    .end local v4    # "_result":Z
    :sswitch_f1
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getChannelList()Ljava/util/List;

    move-result-object v7

    .line 148
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 150
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 154
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    :sswitch_103
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_12d

    .line 157
    sget-object v9, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanSettings;

    .line 163
    .local v0, "_arg0":Landroid/net/wifi/ScanSettings;
    :goto_116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_12f

    .line 164
    sget-object v9, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 169
    .local v1, "_arg1":Landroid/os/WorkSource;
    :goto_124
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 160
    .end local v0    # "_arg0":Landroid/net/wifi/ScanSettings;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :cond_12d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/ScanSettings;
    goto :goto_116

    .line 167
    :cond_12f
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/WorkSource;
    goto :goto_124

    .line 175
    .end local v0    # "_arg0":Landroid/net/wifi/ScanSettings;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :sswitch_131
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 179
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 181
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 185
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_147
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 192
    :sswitch_155
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 199
    :sswitch_163
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 206
    :sswitch_171
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 208
    .local v4, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v4, :cond_18a

    .line 210
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 216
    :goto_187
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 214
    :cond_18a
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_187

    .line 220
    .end local v4    # "_result":Landroid/net/wifi/WifiInfo;
    :sswitch_18f
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1ab

    const/4 v0, 0x1

    .line 223
    .local v0, "_arg0":Z
    :goto_19b
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v4

    .line 224
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v4, :cond_1ad

    const/4 v9, 0x1

    :goto_1a5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 222
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_1ab
    const/4 v0, 0x0

    goto :goto_19b

    .line 225
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_1ad
    const/4 v9, 0x0

    goto :goto_1a5

    .line 230
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_1af
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v4

    .line 232
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 238
    .end local v4    # "_result":I
    :sswitch_1c1
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1da

    const/4 v1, 0x1

    .line 243
    .local v1, "_arg1":Z
    :goto_1d1
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 242
    .end local v1    # "_arg1":Z
    :cond_1da
    const/4 v1, 0x0

    goto :goto_1d1

    .line 249
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1dc
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 253
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1f5

    const/4 v1, 0x1

    .line 254
    .restart local v1    # "_arg1":Z
    :goto_1ec
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 253
    .end local v1    # "_arg1":Z
    :cond_1f5
    const/4 v1, 0x0

    goto :goto_1ec

    .line 260
    .end local v0    # "_arg0":I
    :sswitch_1f7
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v4

    .line 262
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 268
    .end local v4    # "_result":I
    :sswitch_209
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v4

    .line 270
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v4, :cond_21e

    const/4 v9, 0x1

    :goto_218
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 271
    :cond_21e
    const/4 v9, 0x0

    goto :goto_218

    .line 276
    .end local v4    # "_result":Z
    :sswitch_220
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v4

    .line 278
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    if-eqz v4, :cond_235

    const/4 v9, 0x1

    :goto_22f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 279
    :cond_235
    const/4 v9, 0x0

    goto :goto_22f

    .line 284
    .end local v4    # "_result":Z
    :sswitch_237
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    .line 286
    .local v4, "_result":Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v4, :cond_250

    .line 288
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 294
    :goto_24d
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 292
    :cond_250
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24d

    .line 298
    .end local v4    # "_result":Landroid/net/DhcpInfo;
    :sswitch_255
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v4

    .line 300
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    if-eqz v4, :cond_26a

    const/4 v9, 0x1

    :goto_264
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 301
    :cond_26a
    const/4 v9, 0x0

    goto :goto_264

    .line 306
    .end local v4    # "_result":Z
    :sswitch_26c
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 310
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 312
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_29b

    .line 315
    sget-object v9, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 320
    .local v3, "_arg3":Landroid/os/WorkSource;
    :goto_28b
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v4

    .line 321
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    if-eqz v4, :cond_29d

    const/4 v9, 0x1

    :goto_295
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 318
    .end local v3    # "_arg3":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :cond_29b
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/os/WorkSource;
    goto :goto_28b

    .line 322
    .restart local v4    # "_result":Z
    :cond_29d
    const/4 v9, 0x0

    goto :goto_295

    .line 327
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :sswitch_29f
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 331
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2bf

    .line 332
    sget-object v9, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 337
    .local v1, "_arg1":Landroid/os/WorkSource;
    :goto_2b6
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 335
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :cond_2bf
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/WorkSource;
    goto :goto_2b6

    .line 343
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :sswitch_2c1
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 346
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v4

    .line 347
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v4, :cond_2da

    const/4 v9, 0x1

    :goto_2d4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 348
    :cond_2da
    const/4 v9, 0x0

    goto :goto_2d4

    .line 353
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_2dc
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 360
    :sswitch_2ea
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v4

    .line 362
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    if-eqz v4, :cond_2ff

    const/4 v9, 0x1

    :goto_2f9
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 363
    :cond_2ff
    const/4 v9, 0x0

    goto :goto_2f9

    .line 368
    .end local v4    # "_result":Z
    :sswitch_301
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 372
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 379
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_317
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 386
    :sswitch_325
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_348

    .line 389
    sget-object v9, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 395
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_34a

    const/4 v1, 0x1

    .line 396
    .local v1, "_arg1":Z
    :goto_33f
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 392
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "_arg1":Z
    :cond_348
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_338

    .line 395
    :cond_34a
    const/4 v1, 0x0

    goto :goto_33f

    .line 402
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_34c
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v4

    .line 404
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 410
    .end local v4    # "_result":I
    :sswitch_35e
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 412
    .local v4, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    if-eqz v4, :cond_377

    .line 414
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 420
    :goto_374
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 418
    :cond_377
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_374

    .line 424
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_37c
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_398

    .line 427
    sget-object v9, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 432
    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_38f
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 430
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_398
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_38f

    .line 438
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_39a
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->startWifi()V

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 445
    :sswitch_3a8
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWifi()V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 452
    :sswitch_3b6
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 461
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_3c8
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 468
    :sswitch_3d6
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 470
    .local v4, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    if-eqz v4, :cond_3ef

    .line 472
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 478
    :goto_3ec
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 476
    :cond_3ef
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3ec

    .line 482
    .end local v4    # "_result":Landroid/os/Messenger;
    :sswitch_3f4
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 484
    .restart local v4    # "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v4, :cond_40d

    .line 486
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 492
    :goto_40a
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 490
    :cond_40d
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_40a

    .line 496
    .end local v4    # "_result":Landroid/os/Messenger;
    :sswitch_412
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v4

    .line 498
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 504
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_424
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 508
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_43d

    const/4 v1, 0x1

    .line 509
    .restart local v1    # "_arg1":Z
    :goto_434
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 508
    .end local v1    # "_arg1":Z
    :cond_43d
    const/4 v1, 0x0

    goto :goto_434

    .line 515
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_43f
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 519
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_458

    const/4 v1, 0x1

    .line 520
    .restart local v1    # "_arg1":Z
    :goto_44f
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 519
    .end local v1    # "_arg1":Z
    :cond_458
    const/4 v1, 0x0

    goto :goto_44f

    .line 526
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_45a
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_48f

    .line 529
    sget-object v9, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    .line 535
    .local v0, "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :goto_46d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 537
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_491

    .line 538
    sget-object v9, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 543
    .local v2, "_arg2":Landroid/os/WorkSource;
    :goto_47f
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z

    move-result v4

    .line 544
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    if-eqz v4, :cond_493

    const/4 v9, 0x1

    :goto_489
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 532
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :cond_48f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_46d

    .line 541
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    :cond_491
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/WorkSource;
    goto :goto_47f

    .line 545
    .restart local v4    # "_result":Z
    :cond_493
    const/4 v9, 0x0

    goto :goto_489

    .line 550
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :sswitch_495
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4b1

    .line 553
    sget-object v9, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    .line 558
    .restart local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :goto_4a8
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 556
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :cond_4b1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_4a8

    .line 564
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :sswitch_4b3
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 568
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 570
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 574
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    :sswitch_4c9
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isBatchedScanSupported()Z

    move-result v4

    .line 576
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    if-eqz v4, :cond_4de

    const/4 v9, 0x1

    :goto_4d8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 577
    :cond_4de
    const/4 v9, 0x0

    goto :goto_4d8

    .line 582
    .end local v4    # "_result":Z
    :sswitch_4e0
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pollBatchedScan()V

    .line 584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 589
    :sswitch_4ee
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_50a

    .line 592
    sget-object v9, Landroid/net/wifi/PPPOEConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/PPPOEConfig;

    .line 597
    .local v0, "_arg0":Landroid/net/wifi/PPPOEConfig;
    :goto_501
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startPPPOE(Landroid/net/wifi/PPPOEConfig;)V

    .line 598
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 595
    .end local v0    # "_arg0":Landroid/net/wifi/PPPOEConfig;
    :cond_50a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/PPPOEConfig;
    goto :goto_501

    .line 603
    .end local v0    # "_arg0":Landroid/net/wifi/PPPOEConfig;
    :sswitch_50c
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopPPPOE()V

    .line 605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 610
    :sswitch_51a
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v4

    .line 612
    .local v4, "_result":Landroid/net/wifi/PPPOEInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    if-eqz v4, :cond_533

    .line 614
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/net/wifi/PPPOEInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 620
    :goto_530
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 618
    :cond_533
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_530

    .line 624
    .end local v4    # "_result":Landroid/net/wifi/PPPOEInfo;
    :sswitch_538
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApStaList()Ljava/lang/String;

    move-result-object v4

    .line 626
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 628
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 632
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_54a
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApChameleonSsid()Ljava/lang/String;

    move-result-object v4

    .line 634
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 636
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 640
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_55c
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfigTxPower()I

    move-result v4

    .line 642
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 648
    .end local v4    # "_result":I
    :sswitch_56e
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 651
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfigTxPower(I)V

    .line 652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 657
    .end local v0    # "_arg0":I
    :sswitch_580
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 660
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApTimeOut(I)V

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 666
    .end local v0    # "_arg0":I
    :sswitch_592
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApTimeOut()I

    move-result v4

    .line 668
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 674
    .end local v4    # "_result":I
    :sswitch_5a4
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 677
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v4

    .line 678
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 680
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 684
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_5ba
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 687
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 693
    .end local v0    # "_arg0":I
    :sswitch_5cc
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v4

    .line 695
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 701
    .end local v4    # "_result":I
    :sswitch_5de
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    move-result v4

    .line 703
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 709
    .end local v4    # "_result":I
    :sswitch_5f0
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 712
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    .line 713
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 718
    .end local v0    # "_arg0":I
    :sswitch_602
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    move-result v4

    .line 720
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 726
    .end local v4    # "_result":I
    :sswitch_614
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 729
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    .line 730
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 735
    .end local v0    # "_arg0":I
    :sswitch_626
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v4

    .line 737
    .local v4, "_result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    if-eqz v4, :cond_63f

    .line 739
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 745
    :goto_63c
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 743
    :cond_63f
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_63c

    .line 749
    .end local v4    # "_result":Landroid/net/wifi/WifiConnectionStatistics;
    :sswitch_644
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_664

    .line 752
    sget-object v9, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 757
    .local v0, "_arg0":Landroid/os/Message;
    :goto_657
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->callSECApi(Landroid/os/Message;)I

    move-result v4

    .line 758
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 755
    .end local v0    # "_arg0":Landroid/os/Message;
    .end local v4    # "_result":I
    :cond_664
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Message;
    goto :goto_657

    .line 764
    .end local v0    # "_arg0":Landroid/os/Message;
    :sswitch_666
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_686

    .line 767
    sget-object v9, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 772
    .restart local v0    # "_arg0":Landroid/os/Message;
    :goto_679
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    .line 773
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 775
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 770
    .end local v0    # "_arg0":Landroid/os/Message;
    .end local v4    # "_result":Ljava/lang/String;
    :cond_686
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Message;
    goto :goto_679

    .line 779
    .end local v0    # "_arg0":Landroid/os/Message;
    :sswitch_688
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 782
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setRoamTrigger(I)Z

    move-result v4

    .line 783
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    if-eqz v4, :cond_6a1

    const/4 v9, 0x1

    :goto_69b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 784
    :cond_6a1
    const/4 v9, 0x0

    goto :goto_69b

    .line 789
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_6a3
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamTrigger()I

    move-result v4

    .line 791
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 797
    .end local v4    # "_result":I
    :sswitch_6b5
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 800
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setRoamDelta(I)Z

    move-result v4

    .line 801
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    if-eqz v4, :cond_6ce

    const/4 v9, 0x1

    :goto_6c8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 802
    :cond_6ce
    const/4 v9, 0x0

    goto :goto_6c8

    .line 807
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_6d0
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamDelta()I

    move-result v4

    .line 809
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 815
    .end local v4    # "_result":I
    :sswitch_6e2
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 818
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setRoamScanPeriod(I)Z

    move-result v4

    .line 819
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    if-eqz v4, :cond_6fb

    const/4 v9, 0x1

    :goto_6f5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 820
    :cond_6fb
    const/4 v9, 0x0

    goto :goto_6f5

    .line 825
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_6fd
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamScanPeriod()I

    move-result v4

    .line 827
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 833
    .end local v4    # "_result":I
    :sswitch_70f
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 836
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setFullRoamScanPeriod(I)Z

    move-result v4

    .line 837
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    if-eqz v4, :cond_728

    const/4 v9, 0x1

    :goto_722
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 838
    :cond_728
    const/4 v9, 0x0

    goto :goto_722

    .line 843
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_72a
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getFullRoamScanPeriod()I

    move-result v4

    .line 845
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 851
    .end local v4    # "_result":I
    :sswitch_73c
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 854
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setRoamBand(I)Z

    move-result v4

    .line 855
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    if-eqz v4, :cond_755

    const/4 v9, 0x1

    :goto_74f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 856
    :cond_755
    const/4 v9, 0x0

    goto :goto_74f

    .line 861
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_757
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamBand()I

    move-result v4

    .line 863
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 869
    .end local v4    # "_result":I
    :sswitch_769
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 872
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setCountryRev(Ljava/lang/String;)Z

    move-result v4

    .line 873
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    if-eqz v4, :cond_782

    const/4 v9, 0x1

    :goto_77c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 874
    :cond_782
    const/4 v9, 0x0

    goto :goto_77c

    .line 879
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_784
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryRev()Ljava/lang/String;

    move-result-object v4

    .line 881
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 883
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 887
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_796
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getLinkStatus()I

    move-result v4

    .line 889
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 895
    .end local v4    # "_result":I
    :sswitch_7a8
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7c4

    const/4 v0, 0x1

    .line 898
    .local v0, "_arg0":Z
    :goto_7b4
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setIsFmcNetwork(Z)Z

    move-result v4

    .line 899
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    if-eqz v4, :cond_7c6

    const/4 v9, 0x1

    :goto_7be
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 897
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_7c4
    const/4 v0, 0x0

    goto :goto_7b4

    .line 900
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_7c6
    const/4 v9, 0x0

    goto :goto_7be

    .line 905
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_7c8
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7e4

    const/4 v0, 0x1

    .line 908
    .restart local v0    # "_arg0":Z
    :goto_7d4
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiIBSSEnabled(Z)Z

    move-result v4

    .line 909
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    if-eqz v4, :cond_7e6

    const/4 v9, 0x1

    :goto_7de
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 907
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_7e4
    const/4 v0, 0x0

    goto :goto_7d4

    .line 910
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_7e6
    const/4 v9, 0x0

    goto :goto_7de

    .line 915
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_7e8
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiIBSSEnabledState()I

    move-result v4

    .line 917
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 919
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 923
    .end local v4    # "_result":I
    :sswitch_7fa
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 926
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 927
    .local v4, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    if-eqz v4, :cond_817

    .line 929
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 935
    :goto_814
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 933
    :cond_817
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_814

    .line 939
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_81c
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->modifyPasspointCred(Ljava/lang/String;)I

    move-result v4

    .line 943
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 949
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_832
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 951
    .local v4, "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    if-eqz v4, :cond_84b

    .line 953
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 959
    :goto_848
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 957
    :cond_84b
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_848

    .line 963
    .end local v4    # "_result":Landroid/net/NetworkInfo;
    :sswitch_850
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->checkWarningPopup()Z

    move-result v4

    .line 965
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    if-eqz v4, :cond_865

    const/4 v9, 0x1

    :goto_85f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 967
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 966
    :cond_865
    const/4 v9, 0x0

    goto :goto_85f

    .line 971
    .end local v4    # "_result":Z
    :sswitch_867
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 974
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->removeNetworkByMDM(I)Z

    move-result v4

    .line 975
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    if-eqz v4, :cond_880

    const/4 v9, 0x1

    :goto_87a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 977
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 976
    :cond_880
    const/4 v9, 0x0

    goto :goto_87a

    .line 981
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_882
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 983
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8a5

    .line 984
    sget-object v9, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 989
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_895
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->saveNetworkByMDM(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    .line 990
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    if-eqz v4, :cond_8a7

    const/4 v9, 0x1

    :goto_89f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 992
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 987
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "_result":Z
    :cond_8a5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_895

    .line 991
    .restart local v4    # "_result":Z
    :cond_8a7
    const/4 v9, 0x0

    goto :goto_89f

    .line 996
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "_result":Z
    :sswitch_8a9
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->setS69EnableLocationService()I

    move-result v4

    .line 998
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 1004
    .end local v4    # "_result":I
    :sswitch_8bb
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->setS69DisableLocationService()I

    move-result v4

    .line 1006
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 1012
    .end local v4    # "_result":I
    :sswitch_8cd
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->sendS69LocationServiceRequest(Ljava/lang/String;)I

    move-result v4

    .line 1016
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1018
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 1022
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_8e3
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1026
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1027
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->getS69PartMsg(II)Ljava/lang/String;

    move-result-object v4

    .line 1028
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1030
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 1034
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_8fd
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1037
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getS69BssInfo(Ljava/lang/String;)Landroid/net/wifi/S69BssInfo;

    move-result-object v4

    .line 1038
    .local v4, "_result":Landroid/net/wifi/S69BssInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    if-eqz v4, :cond_91a

    .line 1040
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1041
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/net/wifi/S69BssInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1046
    :goto_917
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 1044
    :cond_91a
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_917

    .line 44
    nop

    :sswitch_data_920
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_5f
        0x6 -> :sswitch_80
        0x7 -> :sswitch_9b
        0x8 -> :sswitch_bf
        0x9 -> :sswitch_da
        0xa -> :sswitch_f1
        0xb -> :sswitch_103
        0xc -> :sswitch_131
        0xd -> :sswitch_147
        0xe -> :sswitch_155
        0xf -> :sswitch_163
        0x10 -> :sswitch_171
        0x11 -> :sswitch_18f
        0x12 -> :sswitch_1af
        0x13 -> :sswitch_1c1
        0x14 -> :sswitch_1dc
        0x15 -> :sswitch_1f7
        0x16 -> :sswitch_209
        0x17 -> :sswitch_220
        0x18 -> :sswitch_237
        0x19 -> :sswitch_255
        0x1a -> :sswitch_26c
        0x1b -> :sswitch_29f
        0x1c -> :sswitch_2c1
        0x1d -> :sswitch_2dc
        0x1e -> :sswitch_2ea
        0x1f -> :sswitch_301
        0x20 -> :sswitch_317
        0x21 -> :sswitch_325
        0x22 -> :sswitch_34c
        0x23 -> :sswitch_35e
        0x24 -> :sswitch_37c
        0x25 -> :sswitch_39a
        0x26 -> :sswitch_3a8
        0x27 -> :sswitch_3b6
        0x28 -> :sswitch_3c8
        0x29 -> :sswitch_3d6
        0x2a -> :sswitch_3f4
        0x2b -> :sswitch_412
        0x2c -> :sswitch_424
        0x2d -> :sswitch_43f
        0x2e -> :sswitch_45a
        0x2f -> :sswitch_495
        0x30 -> :sswitch_4b3
        0x31 -> :sswitch_4c9
        0x32 -> :sswitch_4e0
        0x33 -> :sswitch_4ee
        0x34 -> :sswitch_50c
        0x35 -> :sswitch_51a
        0x36 -> :sswitch_538
        0x37 -> :sswitch_54a
        0x38 -> :sswitch_55c
        0x39 -> :sswitch_56e
        0x3a -> :sswitch_580
        0x3b -> :sswitch_592
        0x3c -> :sswitch_5a4
        0x3d -> :sswitch_5ba
        0x3e -> :sswitch_5cc
        0x3f -> :sswitch_5de
        0x40 -> :sswitch_5f0
        0x41 -> :sswitch_602
        0x42 -> :sswitch_614
        0x43 -> :sswitch_626
        0x44 -> :sswitch_644
        0x45 -> :sswitch_666
        0x46 -> :sswitch_688
        0x47 -> :sswitch_6a3
        0x48 -> :sswitch_6b5
        0x49 -> :sswitch_6d0
        0x4a -> :sswitch_6e2
        0x4b -> :sswitch_6fd
        0x4c -> :sswitch_70f
        0x4d -> :sswitch_72a
        0x4e -> :sswitch_73c
        0x4f -> :sswitch_757
        0x50 -> :sswitch_769
        0x51 -> :sswitch_784
        0x52 -> :sswitch_796
        0x53 -> :sswitch_7a8
        0x54 -> :sswitch_7c8
        0x55 -> :sswitch_7e8
        0x56 -> :sswitch_7fa
        0x57 -> :sswitch_81c
        0x58 -> :sswitch_832
        0x59 -> :sswitch_850
        0x5a -> :sswitch_867
        0x5b -> :sswitch_882
        0x5c -> :sswitch_8a9
        0x5d -> :sswitch_8bb
        0x5e -> :sswitch_8cd
        0x5f -> :sswitch_8e3
        0x60 -> :sswitch_8fd
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
