.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementService.java"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final TRANSACTION_addEnterpriseLookup:I = 0x71

.field static final TRANSACTION_addEnterpriseMasq:I = 0x6c

.field static final TRANSACTION_addIdleTimer:I = 0x41

.field static final TRANSACTION_addInterfaceToLocalNetwork:I = 0x63

.field static final TRANSACTION_addInterfaceToNetwork:I = 0x58

.field static final TRANSACTION_addLegacyRouteForNetId:I = 0x5a

.field static final TRANSACTION_addRejectDefault:I = 0x6a

.field static final TRANSACTION_addRoute:I = 0xe

.field static final TRANSACTION_addRouteWithMetric:I = 0x66

.field static final TRANSACTION_addUpstreamV6Interface:I = 0x23

.field static final TRANSACTION_addVpnUidRanges:I = 0x4d

.field static final TRANSACTION_allowProtect:I = 0x61

.field static final TRANSACTION_appendInterfaceToLocalNetwork:I = 0x65

.field static final TRANSACTION_attachPppd:I = 0x26

.field static final TRANSACTION_blockEnterpriseUids:I = 0x75

.field static final TRANSACTION_clearDefaultNetId:I = 0x5d

.field static final TRANSACTION_clearInterfaceAddresses:I = 0x6

.field static final TRANSACTION_clearPermission:I = 0x60

.field static final TRANSACTION_controlPrivatePacket:I = 0x69

.field static final TRANSACTION_createPhysicalNetwork:I = 0x55

.field static final TRANSACTION_createVirtualNetwork:I = 0x56

.field static final TRANSACTION_delSrcRoute:I = 0x68

.field static final TRANSACTION_denyProtect:I = 0x62

.field static final TRANSACTION_detachPppd:I = 0x27

.field static final TRANSACTION_disableEpdg:I = 0x79

.field static final TRANSACTION_disableIpv6:I = 0xa

.field static final TRANSACTION_disableNat:I = 0x22

.field static final TRANSACTION_enableEpdg:I = 0x78

.field static final TRANSACTION_enableIpv6:I = 0xc

.field static final TRANSACTION_enableNat:I = 0x21

.field static final TRANSACTION_flushNetworkDnsCache:I = 0x46

.field static final TRANSACTION_getAccessPointNumConnectedSta:I = 0x28

.field static final TRANSACTION_getAccessPointStaList:I = 0x29

.field static final TRANSACTION_getDnsForwarders:I = 0x1d

.field static final TRANSACTION_getInterfaceConfig:I = 0x4

.field static final TRANSACTION_getIpForwardingEnabled:I = 0x13

.field static final TRANSACTION_getNetworkStatsDetail:I = 0x34

.field static final TRANSACTION_getNetworkStatsSummaryDev:I = 0x32

.field static final TRANSACTION_getNetworkStatsSummaryXt:I = 0x33

.field static final TRANSACTION_getNetworkStatsTethering:I = 0x36

.field static final TRANSACTION_getNetworkStatsUidDetail:I = 0x35

.field static final TRANSACTION_getNetworkStatsVideoCall:I = 0x40

.field static final TRANSACTION_getRoutes:I = 0xd

.field static final TRANSACTION_getV6DnsForwarders:I = 0x1e

.field static final TRANSACTION_isBandwidthControlEnabled:I = 0x3d

.field static final TRANSACTION_isClatdStarted:I = 0x51

.field static final TRANSACTION_isFirewallEnabled:I = 0x48

.field static final TRANSACTION_isNetworkActive:I = 0x54

.field static final TRANSACTION_isTetheringStarted:I = 0x17

.field static final TRANSACTION_joinMulticastGroup:I = 0x20

.field static final TRANSACTION_listInterfaces:I = 0x3

.field static final TRANSACTION_listTetheredInterfaces:I = 0x1a

.field static final TRANSACTION_listTtys:I = 0x25

.field static final TRANSACTION_makeEnterpriseChains:I = 0x6e

.field static final TRANSACTION_markEnterpriseUids:I = 0x73

.field static final TRANSACTION_readWhiteList:I = 0x2b

.field static final TRANSACTION_registerNetworkActivityListener:I = 0x52

.field static final TRANSACTION_registerObserver:I = 0x1

.field static final TRANSACTION_removeEnterpriseLookup:I = 0x72

.field static final TRANSACTION_removeEnterpriseMasq:I = 0x6d

.field static final TRANSACTION_removeIdleTimer:I = 0x42

.field static final TRANSACTION_removeInterfaceAlert:I = 0x3a

.field static final TRANSACTION_removeInterfaceFromLocalNetwork:I = 0x64

.field static final TRANSACTION_removeInterfaceFromNetwork:I = 0x59

.field static final TRANSACTION_removeInterfaceQuota:I = 0x38

.field static final TRANSACTION_removeLegacyRouteForNetId:I = 0x5b

.field static final TRANSACTION_removeNetwork:I = 0x57

.field static final TRANSACTION_removeRejectDefault:I = 0x6b

.field static final TRANSACTION_removeRoute:I = 0xf

.field static final TRANSACTION_removeUpstreamV6Interface:I = 0x24

.field static final TRANSACTION_removeVpnUidRanges:I = 0x4e

.field static final TRANSACTION_replaceDefaultRoute:I = 0x12

.field static final TRANSACTION_replaceSrcRoute:I = 0x67

.field static final TRANSACTION_setAccessPoint:I = 0x31

.field static final TRANSACTION_setAccessPointDisassocSta:I = 0x2a

.field static final TRANSACTION_setDefaultInterfaceForDns:I = 0x44

.field static final TRANSACTION_setDefaultNetId:I = 0x5c

.field static final TRANSACTION_setDnsForwarders:I = 0x1b

.field static final TRANSACTION_setDnsServersForInterface:I = 0x45

.field static final TRANSACTION_setDnsServersForNetwork:I = 0x43

.field static final TRANSACTION_setFirewallEgressDestRule:I = 0x4b

.field static final TRANSACTION_setFirewallEgressSourceRule:I = 0x4a

.field static final TRANSACTION_setFirewallEnabled:I = 0x47

.field static final TRANSACTION_setFirewallInterfaceRule:I = 0x49

.field static final TRANSACTION_setFirewallUidRule:I = 0x4c

.field static final TRANSACTION_setGlobalAlert:I = 0x3b

.field static final TRANSACTION_setInterfaceAlert:I = 0x39

.field static final TRANSACTION_setInterfaceConfig:I = 0x5

.field static final TRANSACTION_setInterfaceDown:I = 0x7

.field static final TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0x9

.field static final TRANSACTION_setInterfaceQuota:I = 0x37

.field static final TRANSACTION_setInterfaceUp:I = 0x8

.field static final TRANSACTION_setIpForwardingEnabled:I = 0x14

.field static final TRANSACTION_setMaxClient:I = 0x2c

.field static final TRANSACTION_setMtu:I = 0x10

.field static final TRANSACTION_setNetworkPermission:I = 0x5e

.field static final TRANSACTION_setPermission:I = 0x5f

.field static final TRANSACTION_setTxPower:I = 0x2d

.field static final TRANSACTION_setUidNetworkRules:I = 0x3c

.field static final TRANSACTION_setv6DnsForwarders:I = 0x1c

.field static final TRANSACTION_shutdown:I = 0x11

.field static final TRANSACTION_startAccessPoint:I = 0x2f

.field static final TRANSACTION_startClatd:I = 0x4f

.field static final TRANSACTION_startNetworkStatsOnPorts:I = 0x3e

.field static final TRANSACTION_startTethering:I = 0x15

.field static final TRANSACTION_stopAccessPoint:I = 0x30

.field static final TRANSACTION_stopClatd:I = 0x50

.field static final TRANSACTION_stopNetworkStatsOnPorts:I = 0x3f

.field static final TRANSACTION_stopTethering:I = 0x16

.field static final TRANSACTION_tetherInterface:I = 0x18

.field static final TRANSACTION_unblockEnterpriseUids:I = 0x76

.field static final TRANSACTION_unmarkEnterpriseUids:I = 0x74

.field static final TRANSACTION_unregisterNetworkActivityListener:I = 0x53

.field static final TRANSACTION_unregisterObserver:I = 0x2

.field static final TRANSACTION_untetherInterface:I = 0x19

.field static final TRANSACTION_updateEnterpriseBlockChain:I = 0x70

.field static final TRANSACTION_updateEnterpriseMarkChain:I = 0x6f

.field static final TRANSACTION_updateRa:I = 0x1f

.field static final TRANSACTION_updateRejectUidRangeRule:I = 0x77

.field static final TRANSACTION_wifiFirmwareReload:I = 0x2e

.field static final TRANSACTION_wps_ap_method:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetworkManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
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
    const-string v1, "android.os.INetworkManagementService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/os/INetworkManagementService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/os/INetworkManagementService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 41
    sparse-switch p1, :sswitch_data_b38

    .line 1365
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 45
    :sswitch_8
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    goto :goto_7

    .line 50
    :sswitch_f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v1

    .line 53
    .local v1, "_arg0":Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v0, 0x1

    goto :goto_7

    .line 59
    .end local v1    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :sswitch_24
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v1

    .line 62
    .restart local v1    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    const/4 v0, 0x1

    goto :goto_7

    .line 68
    .end local v1    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :sswitch_39
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    move-result-object v11

    .line 70
    .local v11, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    goto :goto_7

    .line 76
    .end local v11    # "_result":[Ljava/lang/String;
    :sswitch_4a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v11

    .line 80
    .local v11, "_result":Landroid/net/InterfaceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v11, :cond_66

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {v11, p3, v0}, Landroid/net/InterfaceConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    :goto_64
    const/4 v0, 0x1

    goto :goto_7

    .line 86
    :cond_66
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_64

    .line 92
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Landroid/net/InterfaceConfiguration;
    :sswitch_6b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8b

    .line 97
    sget-object v0, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/InterfaceConfiguration;

    .line 102
    .local v2, "_arg1":Landroid/net/InterfaceConfiguration;
    :goto_82
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 100
    .end local v2    # "_arg1":Landroid/net/InterfaceConfiguration;
    :cond_8b
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/InterfaceConfiguration;
    goto :goto_82

    .line 108
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/InterfaceConfiguration;
    :sswitch_8d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 117
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_9f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceDown(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 126
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_b1
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceUp(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 135
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_c3
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_dc

    const/4 v2, 0x1

    .line 140
    .local v2, "_arg1":Z
    :goto_d3
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 139
    .end local v2    # "_arg1":Z
    :cond_dc
    const/4 v2, 0x0

    goto :goto_d3

    .line 146
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_de
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->disableIpv6(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 155
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_f0
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->wps_ap_method(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 161
    .local v11, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 167
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_10a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->enableIpv6(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 176
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_11c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getRoutes(Ljava/lang/String;)[Landroid/net/RouteInfo;

    move-result-object v11

    .line 180
    .local v11, "_result":[Landroid/net/RouteInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    const/4 v0, 0x1

    invoke-virtual {p3, v11, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 182
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 186
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":[Landroid/net/RouteInfo;
    :sswitch_133
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 190
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_153

    .line 191
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 196
    .local v2, "_arg1":Landroid/net/RouteInfo;
    :goto_14a
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addRoute(ILandroid/net/RouteInfo;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 194
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :cond_153
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_14a

    .line 202
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_155
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 206
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_175

    .line 207
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 212
    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    :goto_16c
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->removeRoute(ILandroid/net/RouteInfo;)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 210
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :cond_175
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_16c

    .line 218
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_177
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setMtu(Ljava/lang/String;I)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 229
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_18d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 236
    :sswitch_19b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 241
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->replaceDefaultRoute(Ljava/lang/String;[B)Z

    move-result v11

    .line 242
    .local v11, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v11, :cond_1b8

    const/4 v0, 0x1

    :goto_1b2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 243
    :cond_1b8
    const/4 v0, 0x0

    goto :goto_1b2

    .line 248
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v11    # "_result":Z
    :sswitch_1ba
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getIpForwardingEnabled()Z

    move-result v11

    .line 250
    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v11, :cond_1cf

    const/4 v0, 0x1

    :goto_1c9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 251
    :cond_1cf
    const/4 v0, 0x0

    goto :goto_1c9

    .line 256
    .end local v11    # "_result":Z
    :sswitch_1d1
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e6

    const/4 v1, 0x1

    .line 259
    .local v1, "_arg0":Z
    :goto_1dd
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setIpForwardingEnabled(Z)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 258
    .end local v1    # "_arg0":Z
    :cond_1e6
    const/4 v1, 0x0

    goto :goto_1dd

    .line 265
    :sswitch_1e8
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->startTethering([Ljava/lang/String;)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 274
    .end local v1    # "_arg0":[Ljava/lang/String;
    :sswitch_1fa
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopTethering()V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 281
    :sswitch_208
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isTetheringStarted()Z

    move-result v11

    .line 283
    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v11, :cond_21d

    const/4 v0, 0x1

    :goto_217
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 284
    :cond_21d
    const/4 v0, 0x0

    goto :goto_217

    .line 289
    .end local v11    # "_result":Z
    :sswitch_21f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->tetherInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 298
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_231
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 301
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->untetherInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 307
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_243
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v11

    .line 309
    .local v11, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 311
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 315
    .end local v11    # "_result":[Ljava/lang/String;
    :sswitch_255
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_275

    .line 318
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 324
    .local v1, "_arg0":Landroid/net/Network;
    :goto_268
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 321
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":[Ljava/lang/String;
    :cond_275
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_268

    .line 331
    .end local v1    # "_arg0":Landroid/net/Network;
    :sswitch_277
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setv6DnsForwarders([Ljava/lang/String;)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 340
    .end local v1    # "_arg0":[Ljava/lang/String;
    :sswitch_289
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getDnsForwarders()[Ljava/lang/String;

    move-result-object v11

    .line 342
    .restart local v11    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 344
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 348
    .end local v11    # "_result":[Ljava/lang/String;
    :sswitch_29b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getV6DnsForwarders()[Ljava/lang/String;

    move-result-object v11

    .line 350
    .restart local v11    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 352
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 356
    .end local v11    # "_result":[Ljava/lang/String;
    :sswitch_2ad
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 363
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->updateRa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 369
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_2c7
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 373
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 374
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->joinMulticastGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 380
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_2dd
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 384
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 385
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 391
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_2f3
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 395
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 396
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 402
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_309
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 405
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->addUpstreamV6Interface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 411
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_31b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 414
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeUpstreamV6Interface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 420
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_32d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listTtys()[Ljava/lang/String;

    move-result-object v11

    .line 422
    .restart local v11    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 424
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 428
    .end local v11    # "_result":[Ljava/lang/String;
    :sswitch_33f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 432
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 434
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 436
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg4":Ljava/lang/String;
    move-object v0, p0

    .line 439
    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 445
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :sswitch_362
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 448
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->detachPppd(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 454
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_374
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getAccessPointNumConnectedSta()I

    move-result v11

    .line 456
    .local v11, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 462
    .end local v11    # "_result":I
    :sswitch_386
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getAccessPointStaList()Ljava/lang/String;

    move-result-object v11

    .line 464
    .local v11, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 470
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_398
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 473
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setAccessPointDisassocSta(Ljava/lang/String;)I

    move-result v11

    .line 474
    .local v11, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 480
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":I
    :sswitch_3ae
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->readWhiteList()I

    move-result v11

    .line 482
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 488
    .end local v11    # "_result":I
    :sswitch_3c0
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 491
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setMaxClient(I)I

    move-result v11

    .line 492
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 498
    .end local v1    # "_arg0":I
    .end local v11    # "_result":I
    :sswitch_3d6
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 501
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setTxPower(I)I

    move-result v11

    .line 502
    .restart local v11    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 508
    .end local v1    # "_arg0":I
    .end local v11    # "_result":I
    :sswitch_3ec
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 513
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 519
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_402
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_422

    .line 522
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 528
    .local v1, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_415
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 529
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 525
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_422
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_415

    .line 535
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_424
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->stopAccessPoint(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 544
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_436
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_456

    .line 547
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 553
    .local v1, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_449
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 554
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 550
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_456
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_449

    .line 560
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_458
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v11

    .line 562
    .local v11, "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    if-eqz v11, :cond_471

    .line 564
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    const/4 v0, 0x1

    invoke-virtual {v11, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 570
    :goto_46e
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 568
    :cond_471
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_46e

    .line 574
    .end local v11    # "_result":Landroid/net/NetworkStats;
    :sswitch_476
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v11

    .line 576
    .restart local v11    # "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    if-eqz v11, :cond_48f

    .line 578
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    const/4 v0, 0x1

    invoke-virtual {v11, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 584
    :goto_48c
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 582
    :cond_48f
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_48c

    .line 588
    .end local v11    # "_result":Landroid/net/NetworkStats;
    :sswitch_494
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsDetail()Landroid/net/NetworkStats;

    move-result-object v11

    .line 590
    .restart local v11    # "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    if-eqz v11, :cond_4ad

    .line 592
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    const/4 v0, 0x1

    invoke-virtual {v11, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 598
    :goto_4aa
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 596
    :cond_4ad
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4aa

    .line 602
    .end local v11    # "_result":Landroid/net/NetworkStats;
    :sswitch_4b2
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 605
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v11

    .line 606
    .restart local v11    # "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    if-eqz v11, :cond_4cf

    .line 608
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    const/4 v0, 0x1

    invoke-virtual {v11, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 614
    :goto_4cc
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 612
    :cond_4cf
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4cc

    .line 618
    .end local v1    # "_arg0":I
    .end local v11    # "_result":Landroid/net/NetworkStats;
    :sswitch_4d4
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v11

    .line 620
    .restart local v11    # "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    if-eqz v11, :cond_4ed

    .line 622
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    const/4 v0, 0x1

    invoke-virtual {v11, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 628
    :goto_4ea
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 626
    :cond_4ed
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4ea

    .line 632
    .end local v11    # "_result":Landroid/net/NetworkStats;
    :sswitch_4f2
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 637
    .local v8, "_arg1":J
    invoke-virtual {p0, v1, v8, v9}, Landroid/os/INetworkManagementService$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 643
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":J
    :sswitch_508
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 646
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 652
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_51a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 656
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 657
    .restart local v8    # "_arg1":J
    invoke-virtual {p0, v1, v8, v9}, Landroid/os/INetworkManagementService$Stub;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 658
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 663
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":J
    :sswitch_530
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 666
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceAlert(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 672
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_542
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 675
    .local v6, "_arg0":J
    invoke-virtual {p0, v6, v7}, Landroid/os/INetworkManagementService$Stub;->setGlobalAlert(J)V

    .line 676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 681
    .end local v6    # "_arg0":J
    :sswitch_554
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 685
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_56d

    const/4 v2, 0x1

    .line 686
    .local v2, "_arg1":Z
    :goto_564
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setUidNetworkRules(IZ)V

    .line 687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 685
    .end local v2    # "_arg1":Z
    :cond_56d
    const/4 v2, 0x0

    goto :goto_564

    .line 692
    .end local v1    # "_arg0":I
    :sswitch_56f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isBandwidthControlEnabled()Z

    move-result v11

    .line 694
    .local v11, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    if-eqz v11, :cond_584

    const/4 v0, 0x1

    :goto_57e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 695
    :cond_584
    const/4 v0, 0x0

    goto :goto_57e

    .line 700
    .end local v11    # "_result":Z
    :sswitch_586
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 706
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 707
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->startNetworkStatsOnPorts(Ljava/lang/String;II)V

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 713
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_5a0
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 717
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 719
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 720
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->stopNetworkStatsOnPorts(Ljava/lang/String;II)V

    .line 721
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 726
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_5ba
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 730
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 732
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 733
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsVideoCall(Ljava/lang/String;II)Landroid/net/NetworkStats;

    move-result-object v11

    .line 734
    .local v11, "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    if-eqz v11, :cond_5df

    .line 736
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    const/4 v0, 0x1

    invoke-virtual {v11, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 742
    :goto_5dc
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 740
    :cond_5df
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5dc

    .line 746
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v11    # "_result":Landroid/net/NetworkStats;
    :sswitch_5e4
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 750
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 752
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 753
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->addIdleTimer(Ljava/lang/String;II)V

    .line 754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 759
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_5fe
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 762
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeIdleTimer(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 768
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_610
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 772
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 774
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 775
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 781
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_62a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setDefaultInterfaceForDns(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 790
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_63c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 794
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 796
    .restart local v2    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 797
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 803
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_656
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 806
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->flushNetworkDnsCache(I)V

    .line 807
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 812
    .end local v1    # "_arg0":I
    :sswitch_668
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_67d

    const/4 v1, 0x1

    .line 815
    .local v1, "_arg0":Z
    :goto_674
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallEnabled(Z)V

    .line 816
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 814
    .end local v1    # "_arg0":Z
    :cond_67d
    const/4 v1, 0x0

    goto :goto_674

    .line 821
    :sswitch_67f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isFirewallEnabled()Z

    move-result v11

    .line 823
    .local v11, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    if-eqz v11, :cond_694

    const/4 v0, 0x1

    :goto_68e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 824
    :cond_694
    const/4 v0, 0x0

    goto :goto_68e

    .line 829
    .end local v11    # "_result":Z
    :sswitch_696
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 833
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6af

    const/4 v2, 0x1

    .line 834
    .local v2, "_arg1":Z
    :goto_6a6
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 833
    .end local v2    # "_arg1":Z
    :cond_6af
    const/4 v2, 0x0

    goto :goto_6a6

    .line 840
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_6b1
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 844
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6ca

    const/4 v2, 0x1

    .line 845
    .restart local v2    # "_arg1":Z
    :goto_6c1
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 844
    .end local v2    # "_arg1":Z
    :cond_6ca
    const/4 v2, 0x0

    goto :goto_6c1

    .line 851
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_6cc
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 855
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 857
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6e9

    const/4 v3, 0x1

    .line 858
    .local v3, "_arg2":Z
    :goto_6e0
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 857
    .end local v3    # "_arg2":Z
    :cond_6e9
    const/4 v3, 0x0

    goto :goto_6e0

    .line 864
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_6eb
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 868
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_704

    const/4 v2, 0x1

    .line 869
    .local v2, "_arg1":Z
    :goto_6fb
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRule(IZ)V

    .line 870
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 868
    .end local v2    # "_arg1":Z
    :cond_704
    const/4 v2, 0x0

    goto :goto_6fb

    .line 875
    .end local v1    # "_arg0":I
    :sswitch_706
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 879
    .restart local v1    # "_arg0":I
    sget-object v0, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/UidRange;

    .line 880
    .local v2, "_arg1":[Landroid/net/UidRange;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addVpnUidRanges(I[Landroid/net/UidRange;)V

    .line 881
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 886
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Landroid/net/UidRange;
    :sswitch_720
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 890
    .restart local v1    # "_arg0":I
    sget-object v0, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/UidRange;

    .line 891
    .restart local v2    # "_arg1":[Landroid/net/UidRange;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->removeVpnUidRanges(I[Landroid/net/UidRange;)V

    .line 892
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 897
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Landroid/net/UidRange;
    :sswitch_73a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 900
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->startClatd(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 906
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_74c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopClatd()V

    .line 908
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 913
    :sswitch_75a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isClatdStarted()Z

    move-result v11

    .line 915
    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    if-eqz v11, :cond_76f

    const/4 v0, 0x1

    :goto_769
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 916
    :cond_76f
    const/4 v0, 0x0

    goto :goto_769

    .line 921
    .end local v11    # "_result":Z
    :sswitch_771
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    move-result-object v1

    .line 924
    .local v1, "_arg0":Landroid/os/INetworkActivityListener;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    .line 925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 930
    .end local v1    # "_arg0":Landroid/os/INetworkActivityListener;
    :sswitch_787
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    move-result-object v1

    .line 933
    .restart local v1    # "_arg0":Landroid/os/INetworkActivityListener;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    .line 934
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 939
    .end local v1    # "_arg0":Landroid/os/INetworkActivityListener;
    :sswitch_79d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isNetworkActive()Z

    move-result v11

    .line 941
    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    if-eqz v11, :cond_7b2

    const/4 v0, 0x1

    :goto_7ac
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 942
    :cond_7b2
    const/4 v0, 0x0

    goto :goto_7ac

    .line 947
    .end local v11    # "_result":Z
    :sswitch_7b4
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 951
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 952
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->createPhysicalNetwork(ILjava/lang/String;)V

    .line 953
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 958
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_7ca
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 962
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7ea

    const/4 v2, 0x1

    .line 964
    .local v2, "_arg1":Z
    :goto_7da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7ec

    const/4 v3, 0x1

    .line 965
    .restart local v3    # "_arg2":Z
    :goto_7e1
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->createVirtualNetwork(IZZ)V

    .line 966
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 962
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    :cond_7ea
    const/4 v2, 0x0

    goto :goto_7da

    .line 964
    .restart local v2    # "_arg1":Z
    :cond_7ec
    const/4 v3, 0x0

    goto :goto_7e1

    .line 971
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :sswitch_7ee
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 974
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeNetwork(I)V

    .line 975
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 980
    .end local v1    # "_arg0":I
    :sswitch_800
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 984
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 985
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToNetwork(Ljava/lang/String;I)V

    .line 986
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 991
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_816
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 995
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 996
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromNetwork(Ljava/lang/String;I)V

    .line 997
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1002
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_82c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1006
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_850

    .line 1007
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 1013
    .local v2, "_arg1":Landroid/net/RouteInfo;
    :goto_843
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1014
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V

    .line 1015
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1010
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    .end local v3    # "_arg2":I
    :cond_850
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_843

    .line 1020
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_852
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1024
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_876

    .line 1025
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 1031
    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    :goto_869
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1032
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->removeLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V

    .line 1033
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1028
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    .end local v3    # "_arg2":I
    :cond_876
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_869

    .line 1038
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_878
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1041
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setDefaultNetId(I)V

    .line 1042
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1047
    .end local v1    # "_arg0":I
    :sswitch_88a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->clearDefaultNetId()V

    .line 1049
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1054
    :sswitch_898
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1058
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1059
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setNetworkPermission(ILjava/lang/String;)V

    .line 1060
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1065
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_8ae
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1069
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1070
    .local v2, "_arg1":[I
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setPermission(Ljava/lang/String;[I)V

    .line 1071
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1076
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[I
    :sswitch_8c4
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1079
    .local v1, "_arg0":[I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->clearPermission([I)V

    .line 1080
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1085
    .end local v1    # "_arg0":[I
    :sswitch_8d6
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1088
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->allowProtect(I)V

    .line 1089
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1090
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1094
    .end local v1    # "_arg0":I
    :sswitch_8e8
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1097
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->denyProtect(I)V

    .line 1098
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1103
    .end local v1    # "_arg0":I
    :sswitch_8fa
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1107
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1108
    .local v10, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-virtual {p0, v1, v10}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 1109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1114
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :sswitch_912
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1117
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1123
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_924
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1127
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1128
    .restart local v10    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-virtual {p0, v1, v10}, Landroid/os/INetworkManagementService$Stub;->appendInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 1129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1134
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :sswitch_93c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1138
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1140
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_967

    .line 1141
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 1146
    .local v3, "_arg2":Landroid/net/RouteInfo;
    :goto_957
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->addRouteWithMetric(Ljava/lang/String;ILandroid/net/RouteInfo;)Z

    move-result v11

    .line 1147
    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    if-eqz v11, :cond_969

    const/4 v0, 0x1

    :goto_961
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1149
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1144
    .end local v3    # "_arg2":Landroid/net/RouteInfo;
    .end local v11    # "_result":Z
    :cond_967
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/net/RouteInfo;
    goto :goto_957

    .line 1148
    .restart local v11    # "_result":Z
    :cond_969
    const/4 v0, 0x0

    goto :goto_961

    .line 1153
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/net/RouteInfo;
    .end local v11    # "_result":Z
    :sswitch_96b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1157
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1159
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1161
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1162
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z

    move-result v11

    .line 1163
    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    if-eqz v11, :cond_990

    const/4 v0, 0x1

    :goto_98a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1165
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1164
    :cond_990
    const/4 v0, 0x0

    goto :goto_98a

    .line 1169
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":I
    .end local v11    # "_result":Z
    :sswitch_992
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1173
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1174
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->delSrcRoute([BI)Z

    move-result v11

    .line 1175
    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1176
    if-eqz v11, :cond_9af

    const/4 v0, 0x1

    :goto_9a9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1177
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1176
    :cond_9af
    const/4 v0, 0x0

    goto :goto_9a9

    .line 1181
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v11    # "_result":Z
    :sswitch_9b1
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1185
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1187
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1188
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->controlPrivatePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1194
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_9cb
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1197
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->addRejectDefault(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1203
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_9dd
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1206
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeRejectDefault(Ljava/lang/String;)V

    .line 1207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1208
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1212
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_9ef
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1215
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->addEnterpriseMasq(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1221
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_a01
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1224
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeEnterpriseMasq(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1226
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1230
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_a13
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1234
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a2c

    const/4 v2, 0x1

    .line 1235
    .local v2, "_arg1":Z
    :goto_a23
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->makeEnterpriseChains(Ljava/lang/String;Z)V

    .line 1236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1234
    .end local v2    # "_arg1":Z
    :cond_a2c
    const/4 v2, 0x0

    goto :goto_a23

    .line 1241
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_a2e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1245
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1247
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a4b

    const/4 v3, 0x1

    .line 1248
    .local v3, "_arg2":Z
    :goto_a42
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->updateEnterpriseMarkChain(Ljava/lang/String;IZ)V

    .line 1249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1247
    .end local v3    # "_arg2":Z
    :cond_a4b
    const/4 v3, 0x0

    goto :goto_a42

    .line 1254
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_a4d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1256
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1258
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a66

    const/4 v2, 0x1

    .line 1259
    .local v2, "_arg1":Z
    :goto_a5d
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->updateEnterpriseBlockChain(Ljava/lang/String;Z)V

    .line 1260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1258
    .end local v2    # "_arg1":Z
    :cond_a66
    const/4 v2, 0x0

    goto :goto_a5d

    .line 1265
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_a68
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1269
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1270
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addEnterpriseLookup(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1272
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1276
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_a7e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1280
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1281
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->removeEnterpriseLookup(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1287
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_a94
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1291
    .local v1, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1292
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->markEnterpriseUids([ILjava/lang/String;)V

    .line 1293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1298
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_aaa
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1302
    .restart local v1    # "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1303
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->unmarkEnterpriseUids([ILjava/lang/String;)V

    .line 1304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1309
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_ac0
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1313
    .restart local v1    # "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1314
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->blockEnterpriseUids([ILjava/lang/String;)V

    .line 1315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1316
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1320
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_ad6
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1324
    .restart local v1    # "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1325
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->unblockEnterpriseUids([ILjava/lang/String;)V

    .line 1326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1331
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_aec
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b09

    const/4 v1, 0x1

    .line 1335
    .local v1, "_arg0":Z
    :goto_af8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1337
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1338
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->updateRejectUidRangeRule(ZII)V

    .line 1339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1333
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :cond_b09
    const/4 v1, 0x0

    goto :goto_af8

    .line 1344
    :sswitch_b0b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1346
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1348
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1349
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->enableEpdg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1355
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_b21
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1359
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1360
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->disableEpdg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1362
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 41
    nop

    :sswitch_data_b38
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_24
        0x3 -> :sswitch_39
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_6b
        0x6 -> :sswitch_8d
        0x7 -> :sswitch_9f
        0x8 -> :sswitch_b1
        0x9 -> :sswitch_c3
        0xa -> :sswitch_de
        0xb -> :sswitch_f0
        0xc -> :sswitch_10a
        0xd -> :sswitch_11c
        0xe -> :sswitch_133
        0xf -> :sswitch_155
        0x10 -> :sswitch_177
        0x11 -> :sswitch_18d
        0x12 -> :sswitch_19b
        0x13 -> :sswitch_1ba
        0x14 -> :sswitch_1d1
        0x15 -> :sswitch_1e8
        0x16 -> :sswitch_1fa
        0x17 -> :sswitch_208
        0x18 -> :sswitch_21f
        0x19 -> :sswitch_231
        0x1a -> :sswitch_243
        0x1b -> :sswitch_255
        0x1c -> :sswitch_277
        0x1d -> :sswitch_289
        0x1e -> :sswitch_29b
        0x1f -> :sswitch_2ad
        0x20 -> :sswitch_2c7
        0x21 -> :sswitch_2dd
        0x22 -> :sswitch_2f3
        0x23 -> :sswitch_309
        0x24 -> :sswitch_31b
        0x25 -> :sswitch_32d
        0x26 -> :sswitch_33f
        0x27 -> :sswitch_362
        0x28 -> :sswitch_374
        0x29 -> :sswitch_386
        0x2a -> :sswitch_398
        0x2b -> :sswitch_3ae
        0x2c -> :sswitch_3c0
        0x2d -> :sswitch_3d6
        0x2e -> :sswitch_3ec
        0x2f -> :sswitch_402
        0x30 -> :sswitch_424
        0x31 -> :sswitch_436
        0x32 -> :sswitch_458
        0x33 -> :sswitch_476
        0x34 -> :sswitch_494
        0x35 -> :sswitch_4b2
        0x36 -> :sswitch_4d4
        0x37 -> :sswitch_4f2
        0x38 -> :sswitch_508
        0x39 -> :sswitch_51a
        0x3a -> :sswitch_530
        0x3b -> :sswitch_542
        0x3c -> :sswitch_554
        0x3d -> :sswitch_56f
        0x3e -> :sswitch_586
        0x3f -> :sswitch_5a0
        0x40 -> :sswitch_5ba
        0x41 -> :sswitch_5e4
        0x42 -> :sswitch_5fe
        0x43 -> :sswitch_610
        0x44 -> :sswitch_62a
        0x45 -> :sswitch_63c
        0x46 -> :sswitch_656
        0x47 -> :sswitch_668
        0x48 -> :sswitch_67f
        0x49 -> :sswitch_696
        0x4a -> :sswitch_6b1
        0x4b -> :sswitch_6cc
        0x4c -> :sswitch_6eb
        0x4d -> :sswitch_706
        0x4e -> :sswitch_720
        0x4f -> :sswitch_73a
        0x50 -> :sswitch_74c
        0x51 -> :sswitch_75a
        0x52 -> :sswitch_771
        0x53 -> :sswitch_787
        0x54 -> :sswitch_79d
        0x55 -> :sswitch_7b4
        0x56 -> :sswitch_7ca
        0x57 -> :sswitch_7ee
        0x58 -> :sswitch_800
        0x59 -> :sswitch_816
        0x5a -> :sswitch_82c
        0x5b -> :sswitch_852
        0x5c -> :sswitch_878
        0x5d -> :sswitch_88a
        0x5e -> :sswitch_898
        0x5f -> :sswitch_8ae
        0x60 -> :sswitch_8c4
        0x61 -> :sswitch_8d6
        0x62 -> :sswitch_8e8
        0x63 -> :sswitch_8fa
        0x64 -> :sswitch_912
        0x65 -> :sswitch_924
        0x66 -> :sswitch_93c
        0x67 -> :sswitch_96b
        0x68 -> :sswitch_992
        0x69 -> :sswitch_9b1
        0x6a -> :sswitch_9cb
        0x6b -> :sswitch_9dd
        0x6c -> :sswitch_9ef
        0x6d -> :sswitch_a01
        0x6e -> :sswitch_a13
        0x6f -> :sswitch_a2e
        0x70 -> :sswitch_a4d
        0x71 -> :sswitch_a68
        0x72 -> :sswitch_a7e
        0x73 -> :sswitch_a94
        0x74 -> :sswitch_aaa
        0x75 -> :sswitch_ac0
        0x76 -> :sswitch_ad6
        0x77 -> :sswitch_aec
        0x78 -> :sswitch_b0b
        0x79 -> :sswitch_b21
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
