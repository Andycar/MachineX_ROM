.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$1;,
        Landroid/net/wifi/WifiManager$MulticastLock;,
        Landroid/net/wifi/WifiManager$WifiLock;,
        Landroid/net/wifi/WifiManager$ServiceHandler;,
        Landroid/net/wifi/WifiManager$TxPacketCountListener;,
        Landroid/net/wifi/WifiManager$WpsCallback;,
        Landroid/net/wifi/WifiManager$ActionListener;
    }
.end annotation


# static fields
.field public static final ACTION_FRAME_VS_WES_RECEIVED_ACTION:Ljava/lang/String; = "android.net.wifi.ACTION_FRAME_VS_WES_RECEIVED_ACTION"

.field public static final ACTION_MSAP_GAS_REQ_STATUS:Ljava/lang/String; = "android.net.wifi.MSAP_GAS_REQ_STATUS"

.field public static final ACTION_MSAP_GAS_RSP_AVAILABLE:Ljava/lang/String; = "android.net.wifi.MSAP_GAS_RSP_AVAILABLE"

.field public static final ACTION_MSAP_VENUE_SERVER_ADDED:Ljava/lang/String; = "android.net.wifi.MSAP_VENUE_SERVER_ADDED"

.field public static final ACTION_MSAP_VENUE_SERVER_DELETED:Ljava/lang/String; = "android.net.wifi.MSAP_VENUE_SERVER_DELETED"

.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.PICK_WIFI_NETWORK"

.field public static final ACTION_REQUEST_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

.field public static final ACTION_SEC_NOTIFICATION_CANCEL:Ljava/lang/String; = "android.net.wifi.SEC_NOTIFICATION_CANCEL"

.field public static final ACTION_SEC_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.SEC_PICK_WIFI_NETWORK"

.field public static final ACTION_SEC_PICK_WIFI_NETWORK_WITH_DIALOG:Ljava/lang/String; = "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

.field public static final ACTION_SEC_PICK_WIFI_NETWORK_WITH_ON:Ljava/lang/String; = "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

.field public static final ACTION_SEC_VZW_NOTIFICATION_CANCEL:Ljava/lang/String; = "android.net.wifi.SEC_VZW_NOTIFICATION_CANCEL"

.field public static final ACTION_SEC_VZW_NOTIFICATION_CONNECT:Ljava/lang/String; = "android.net.wifi.SEC_VZW_NOTIFICATION_CONNECT"

.field public static final AP_OPEN_TYPE_CAPTIVE:I = 0x3

.field public static final AP_OPEN_TYPE_INTERNET:I = 0x2

.field public static final AP_OPEN_TYPE_NONE:I = 0x0

.field public static final AP_OPEN_TYPE_NOT_ABLE_TO_CONNECT:I = 0x4

.field public static final AP_OPEN_TYPE_NO_INTERNET:I = 0x1

.field private static final BASE:I = 0x25000

.field public static final BATCHED_SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.BATCHED_RESULTS"

.field public static final BUSY:I = 0x2

.field public static final CANCEL_WPS:I = 0x2500e

.field public static final CANCEL_WPS_FAILED:I = 0x2500f

.field public static final CANCEL_WPS_SUCCEDED:I = 0x25010

.field public static final CCX_S69_AP_Available:Ljava/lang/String; = "ccx.s69.newbss_available"

.field public static final CCX_S69_AP_Removed:Ljava/lang/String; = "ccx.s69.bss_removed"

.field public static final CCX_S69_Message_received:Ljava/lang/String; = "com.s69.location_update"

.field public static final CHANGE_REASON_ADDED:I = 0x0

.field public static final CHANGE_REASON_CONFIG_CHANGE:I = 0x2

.field public static final CHANGE_REASON_REMOVED:I = 0x1

.field public static final CONFIGURED_NETWORKS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

.field public static final CONNECT_NETWORK:I = 0x25001

.field public static final CONNECT_NETWORK_FAILED:I = 0x25002

.field public static final CONNECT_NETWORK_SUCCEEDED:I = 0x25003

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_NOTIFICATION:I = 0x1

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field private static final DBG:Z

.field public static final DEFAULT_POOR_NETWORK_AVOIDANCE_ENABLED:Z = false

.field public static final DHCP_FAILURE_ERROR:I = 0x2

.field public static final DISABLE_NETWORK:I = 0x25011

.field public static final DISABLE_NETWORK_FAILED:I = 0x25012

.field public static final DISABLE_NETWORK_SUCCEEDED:I = 0x25013

.field public static final DRIVER_ERROR:I = 0xa

.field public static final ERROR:I = 0x0

.field public static final ERROR_ACTION:Ljava/lang/String; = "android.net.wifi.ERROR"

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_ACTION_FRAME_VS_WES_DATA:Ljava/lang/String; = "ActionFrameVSWESData"

.field public static final EXTRA_ACTION_MSAP_DATA:Ljava/lang/String; = "android.net.wifi.EXTRA_ACTION_MSAP_DATA"

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_CALLED_DIALOG:Ljava/lang/String; = "called_dialog"

.field public static final EXTRA_CHANGE_REASON:Ljava/lang/String; = "changeReason"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_MULTIPLE_NETWORKS_CHANGED:Ljava/lang/String; = "multipleChanges"

.field public static final EXTRA_NETWORK_CAPABILITIES:Ljava/lang/String; = "networkCapabilities"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NETWORK_RECONNECT:Ljava/lang/String; = "network_reconnect"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_PREVIOUS_WIFI_AP_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_SCAN_AVAILABLE:Ljava/lang/String; = "scan_enabled"

.field public static final EXTRA_SUPPLICANT_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_CONFIGURATION:Ljava/lang/String; = "wifiConfiguration"

.field public static final EXTRA_WIFI_INFO:Ljava/lang/String; = "wifiInfo"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field public static final FORGET_NETWORK:I = 0x25004

.field public static final FORGET_NETWORK_FAILED:I = 0x25005

.field public static final FORGET_NETWORK_SUCCEEDED:I = 0x25006

.field public static final FREE_WIFI_SCAN_OPEN_AP_CHECK_RESULT:Ljava/lang/String; = "android.net.wifi.OPEN_AP_CHECK_RESULT"

.field public static final FREE_WIFI_SCAN_OPEN_NETWORK_STATUS:Ljava/lang/String; = "free_wifi_scan_open_network_status"

.field public static final HS20_DISABLED_COMPLETE_BY_CREDERROR_ACTION:Ljava/lang/String; = "android.net.wifi.HS20_DISABLED_COMPLETE_BY_CREDERROR"

.field public static final HS20_EXPIRY_TIME_FOUND_ACTION:Ljava/lang/String; = "android.net.wifi.HS20_EXPIRY_TIME_FOUND"

.field public static final INVALID_ARGS:I = 0x8

.field private static final INVALID_KEY:I = 0x0

.field public static final IN_PROGRESS:I = 0x1

.field public static final KIES_VIA_WIFI_RUN_KIES:Ljava/lang/String; = "android.net.wifi.RUN_KIES"

.field public static final KIES_VIA_WIFI_SET_HOME_AP:Ljava/lang/String; = "android.net.wifi.SET_HOME_AP"

.field public static final LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"

.field private static final MAX_ACTIVE_LOCKS:I = 0x32

.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64

.field public static final MSAP_GAS_REQ:I = 0x25023

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_IDS_CHANGED"

.field public static final NETWORK_OXYGEN_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_OXYGEN_STATE_CHANGE"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"

.field public static final NOT_AUTHORIZED:I = 0x9

.field public static final OLSRD_ERROR:I = 0x14

.field public static final OXYGEN_SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.OXYGEN_SCAN_RESULTS"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"

.field public static final RSSI_LEVELS:I = 0x5

.field public static final RSSI_PKTCNT_FETCH:I = 0x25014

.field public static final RSSI_PKTCNT_FETCH_FAILED:I = 0x25016

.field public static final RSSI_PKTCNT_FETCH_SUCCEEDED:I = 0x25015

.field public static final SAVE_NETWORK:I = 0x25007

.field public static final SAVE_NETWORK_FAILED:I = 0x25008

.field public static final SAVE_NETWORK_SUCCEEDED:I = 0x25009

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.SCAN_RESULTS"

.field public static final SEC_COMMAND_ID_ANS_EXCEPTION_ANSWER:I = 0xc9

.field public static final SEC_COMMAND_ID_AUTO_CONNECT:I = 0x1

.field public static final SEC_COMMAND_ID_BACKUP_RESTORE:I = 0x3d

.field public static final SEC_COMMAND_ID_CHECK_SUPPORT_80211AC:I = 0x49

.field public static final SEC_COMMAND_ID_DISABLE_NETWORK_WITH_REASON:I = 0xcb

.field public static final SEC_COMMAND_ID_DNS_RECHECK:I = 0x19

.field public static final SEC_COMMAND_ID_GET_BAND:I = 0xa2

.field public static final SEC_COMMAND_ID_GET_CCX_MODE:I = 0xae

.field public static final SEC_COMMAND_ID_GET_CHAMELEON_ENABLED:I = 0x14

.field public static final SEC_COMMAND_ID_GET_CHAMELEON_MAXUSER:I = 0x16

.field public static final SEC_COMMAND_ID_GET_CHAMELEON_TETHEREDDATA:I = 0x15

.field public static final SEC_COMMAND_ID_GET_COUNTRY_REV:I = 0xa0

.field public static final SEC_COMMAND_ID_GET_DFS_SCAN_MODE:I = 0xa4

.field public static final SEC_COMMAND_ID_GET_DHCP_RENEW_AFTER_ROAMING_MODE:I = 0xb4

.field public static final SEC_COMMAND_ID_GET_FWS_OPEN_AP_CHECK:I = 0xdc

.field public static final SEC_COMMAND_ID_GET_INTERNET_CHECK_OPTION:I = 0x22

.field public static final SEC_COMMAND_ID_GET_OKC_MODE:I = 0xac

.field public static final SEC_COMMAND_ID_GET_PREFER_BAND:I = 0x1e

.field public static final SEC_COMMAND_ID_GET_RECONNECT:I = 0xc8

.field public static final SEC_COMMAND_ID_GET_ROAM_DELTA:I = 0x66

.field public static final SEC_COMMAND_ID_GET_ROAM_SCAN_CHANNELS:I = 0x6c

.field public static final SEC_COMMAND_ID_GET_ROAM_SCAN_CONTROL:I = 0x6a

.field public static final SEC_COMMAND_ID_GET_ROAM_SCAN_PERIOD:I = 0x68

.field public static final SEC_COMMAND_ID_GET_ROAM_TRIGGER:I = 0x64

.field public static final SEC_COMMAND_ID_GET_SCAN_CHANNEL_TIME:I = 0x82

.field public static final SEC_COMMAND_ID_GET_SCAN_HOME_AWAY_TIME:I = 0x86

.field public static final SEC_COMMAND_ID_GET_SCAN_HOME_TIME:I = 0x84

.field public static final SEC_COMMAND_ID_GET_SCAN_NPROBES:I = 0x88

.field public static final SEC_COMMAND_ID_GET_SCAN_RESULTS_EX:I = 0x21

.field public static final SEC_COMMAND_ID_GET_WES_MODE:I = 0xaa

.field public static final SEC_COMMAND_ID_GET_WIFIAP_RVFMODE:I = 0x1c

.field public static final SEC_COMMAND_ID_GET_WIFIAP_STANUM:I = 0x3

.field public static final SEC_COMMAND_ID_GET_WIFIAP_TEST_MODE:I = 0xbf

.field public static final SEC_COMMAND_ID_GET_WIFI_PASSPHRASE:I = 0x27

.field public static final SEC_COMMAND_ID_HS20_CLEAR_BLACKLIST:I = 0x2b

.field public static final SEC_COMMAND_ID_HS20_ENABLE:I = 0x29

.field public static final SEC_COMMAND_ID_INIT:I = 0x0

.field public static final SEC_COMMAND_ID_INIT_SCAN_INTERVAL:I = 0x2

.field public static final SEC_COMMAND_ID_IS_IBSS_SUPPORTED:I = 0x3e

.field public static final SEC_COMMAND_ID_LIST_CRED:I = 0xcf

.field public static final SEC_COMMAND_ID_LOAD_CRED:I = 0x2a

.field public static final SEC_COMMAND_ID_LTECOEX:I = 0x3f

.field public static final SEC_COMMAND_ID_PARTIAL_SCAN:I = 0x24

.field public static final SEC_COMMAND_ID_PRE_SCAN:I = 0x26

.field public static final SEC_COMMAND_ID_PROFILE_BACKUP_RESTORE:I = 0xcd

.field public static final SEC_COMMAND_ID_READ_WHITELIST:I = 0x5

.field public static final SEC_COMMAND_ID_REASSOC:I = 0x97

.field public static final SEC_COMMAND_ID_RELOAD_HIDDEN_AP_LIST:I = 0xf0

.field public static final SEC_COMMAND_ID_REMOVED_CRED:I = 0xce

.field public static final SEC_COMMAND_ID_RESET_WIFIAP:I = 0xc5

.field public static final SEC_COMMAND_ID_RMC_ENABLE:I = 0x32

.field public static final SEC_COMMAND_ID_RMC_TXRATE:I = 0x33

.field public static final SEC_COMMAND_ID_SEND_ACTION_FRAME:I = 0x96

.field public static final SEC_COMMAND_ID_SEND_SELECTED_WIFI_PROFILE:I = 0xcc

.field public static final SEC_COMMAND_ID_SETTINGS_SOFT_RESET:I = 0xc1

.field public static final SEC_COMMAND_ID_SETWMMPS:I = 0x48

.field public static final SEC_COMMAND_ID_SET_ALLOW_TO_CONNECT:I = 0x25

.field public static final SEC_COMMAND_ID_SET_AMPDU_MPDU:I = 0x11

.field public static final SEC_COMMAND_ID_SET_BAND:I = 0xa3

.field public static final SEC_COMMAND_ID_SET_CCX_MODE:I = 0xaf

.field public static final SEC_COMMAND_ID_SET_COUNTRYCODE:I = 0x37

.field public static final SEC_COMMAND_ID_SET_COUNTRY_REV:I = 0xa1

.field public static final SEC_COMMAND_ID_SET_DFS_SCAN_MODE:I = 0xa5

.field public static final SEC_COMMAND_ID_SET_DHCP_RENEW_AFTER_ROAMING_MODE:I = 0xb5

.field public static final SEC_COMMAND_ID_SET_FWS_OPEN_AP_CHECK:I = 0xdd

.field public static final SEC_COMMAND_ID_SET_IBSS_AMPDU:I = 0x34

.field public static final SEC_COMMAND_ID_SET_IBSS_ANTENNA_MODE:I = 0x35

.field public static final SEC_COMMAND_ID_SET_IMS_RSSI_POLL_STATE:I = 0x18

.field public static final SEC_COMMAND_ID_SET_INTERNET_CHECK_OPTION:I = 0x23

.field public static final SEC_COMMAND_ID_SET_MINIMIZE_RETRY:I = 0x13

.field public static final SEC_COMMAND_ID_SET_OKC_MODE:I = 0xad

.field public static final SEC_COMMAND_ID_SET_PREFER_BAND:I = 0x1f

.field public static final SEC_COMMAND_ID_SET_ROAM_DELTA:I = 0x67

.field public static final SEC_COMMAND_ID_SET_ROAM_SCAN_CHANNELS:I = 0x6d

.field public static final SEC_COMMAND_ID_SET_ROAM_SCAN_CONTROL:I = 0x6b

.field public static final SEC_COMMAND_ID_SET_ROAM_SCAN_PERIOD:I = 0x69

.field public static final SEC_COMMAND_ID_SET_ROAM_TRIGGER:I = 0x65

.field public static final SEC_COMMAND_ID_SET_RPS_MODE:I = 0x4b

.field public static final SEC_COMMAND_ID_SET_SCAN_CHANNEL_TIME:I = 0x83

.field public static final SEC_COMMAND_ID_SET_SCAN_HOME_AWAY_TIME:I = 0x87

.field public static final SEC_COMMAND_ID_SET_SCAN_HOME_TIME:I = 0x85

.field public static final SEC_COMMAND_ID_SET_SCAN_NPROBES:I = 0x89

.field public static final SEC_COMMAND_ID_SET_WES_MODE:I = 0xab

.field public static final SEC_COMMAND_ID_SET_WIFIAP_DISASSOC_STA:I = 0x4

.field public static final SEC_COMMAND_ID_SET_WIFIAP_MACADDR_ACL:I = 0xc2

.field public static final SEC_COMMAND_ID_SET_WIFIAP_MAXCLIENT:I = 0xe

.field public static final SEC_COMMAND_ID_SET_WIFIAP_RVFMODE:I = 0x1b

.field public static final SEC_COMMAND_ID_SET_WIFIAP_TEST_MODE:I = 0xc0

.field public static final SEC_COMMAND_ID_SET_WIFIAP_TX_POWER:I = 0xc3

.field public static final SEC_COMMAND_ID_SET_WIFIAP_WPS_PBC:I = 0xbe

.field public static final SEC_COMMAND_ID_SET_WIFI_ENABLED_WITH_P2P:I = 0x1a

.field public static final SEC_COMMAND_ID_SET_WIFI_ENABLED_WITH_RIL:I = 0x28

.field public static final SEC_COMMAND_ID_SET_WIFI_SCAN_WITH_P2P:I = 0x4a

.field public static final SEC_COMMAND_ID_SHOW_APLIST_EVENT:I = 0x10

.field public static final SEC_COMMAND_ID_SHUTDOWN_WIFI:I = 0xe6

.field public static final SEC_COMMAND_ID_SKIP_AUTO_CONNECTION:I = 0x20

.field public static final SEC_COMMAND_ID_STOP_PERIODIC_SCAN:I = 0x12

.field public static final SEC_COMMAND_ID_UNLOCK_MOBILITY_NETWORK:I = 0x1d

.field public static final SEC_COMMAND_ID_UPDATE_AUTOJOIN:I = 0x47

.field public static final SEC_COMMAND_ID_VERSION:I = 0x0

.field public static final SEC_COMMAND_ID_WIFI_CONNECTION_TYPE:I = 0xf

.field public static final SEC_COMMAND_ID_WLAN_ENABLE_WARNING:I = 0x46

.field public static final SEC_COMMAND_ID_WPS_AP_METHOD:I = 0xca

.field public static final SEC_COMMAND_MSAP_BSS_INFO:I = 0x44

.field public static final SEC_COMMAND_MSAP_ENABLE:I = 0x43

.field public static final SEC_COMMAND_MSAP_GAS_REQ:I = 0x40

.field public static final SEC_COMMAND_MSAP_GAS_RESP:I = 0x41

.field public static final SEC_COMMAND_MSAP_RESET:I = 0x42

.field public static final START_WPS:I = 0x2500a

.field public static final START_WPS_SUCCEEDED:I = 0x2500b

.field public static final SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.CONNECTION_CHANGE"

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.STATE_CHANGE"

.field public static final SUPPLICANT_WAPI_EVENT:Ljava/lang/String; = "android.net.wifi.supplicant.WAPI_EVENT"

.field private static final TAG:Ljava/lang/String; = "WifiManager"

.field public static final VENDORS_NOTIFICATION_ID:I = 0x2df96b

.field public static final WAPI_EVENT_AUTH_FAIL_CODE:I = 0x10

.field public static final WAPI_EVENT_CERT_FAIL_CODE:I = 0x11

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0xb

.field public static final WIFI_AP_STATE_DISABLING:I = 0xa

.field public static final WIFI_AP_STATE_ENABLED:I = 0xd

.field public static final WIFI_AP_STATE_ENABLING:I = 0xc

.field public static final WIFI_AP_STATE_FAILED:I = 0xe

.field public static final WIFI_AP_STA_ASSOCIATED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

.field public static final WIFI_AP_STA_ASSOC_LIST_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STA_ASSOC_LIST_AVAILABLE_ACTION"

.field public static final WIFI_AP_STA_STATUS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

.field public static final WIFI_AP_WPS_STATE_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

.field public static final WIFI_DIALOG_CANCEL_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

.field public static final WIFI_DIALOG_ENABLING_HOTSPOT:I = 0x2

.field public static final WIFI_DIALOG_ENABLING_WIFI:I = 0x1

.field public static final WIFI_FEATURE_ADDITIONAL_STA:I = 0x800

.field public static final WIFI_FEATURE_BATCH_SCAN:I = 0x200

.field public static final WIFI_FEATURE_D2AP_RTT:I = 0x100

.field public static final WIFI_FEATURE_D2D_RTT:I = 0x80

.field public static final WIFI_FEATURE_EPR:I = 0x4000

.field public static final WIFI_FEATURE_INFRA:I = 0x1

.field public static final WIFI_FEATURE_INFRA_5G:I = 0x2

.field public static final WIFI_FEATURE_MOBILE_HOTSPOT:I = 0x10

.field public static final WIFI_FEATURE_NAN:I = 0x40

.field public static final WIFI_FEATURE_P2P:I = 0x8

.field public static final WIFI_FEATURE_PASSPOINT:I = 0x4

.field public static final WIFI_FEATURE_PNO:I = 0x400

.field public static final WIFI_FEATURE_SCANNER:I = 0x20

.field public static final WIFI_FEATURE_TDLS:I = 0x1000

.field public static final WIFI_FEATURE_TDLS_OFFCHANNEL:I = 0x2000

.field public static final WIFI_FREQUENCY_BAND_2GHZ:I = 0x2

.field public static final WIFI_FREQUENCY_BAND_5GHZ:I = 0x1

.field public static final WIFI_FREQUENCY_BAND_AUTO:I = 0x0

.field public static final WIFI_LINK_STATUS_AC:I = 0x1

.field public static final WIFI_LINK_STATUS_AC_MIMO:I = 0x3

.field public static final WIFI_LINK_STATUS_MIMO:I = 0x2

.field public static final WIFI_LINK_STATUS_NOT_AC_MIMO:I = 0x0

.field public static final WIFI_MODE_FULL:I = 0x1

.field public static final WIFI_MODE_FULL_HIGH_PERF:I = 0x3

.field public static final WIFI_MODE_SCAN_ONLY:I = 0x2

.field public static final WIFI_OXYGEN_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_OXYGEN_STATE_CHANGE"

.field public static final WIFI_SCAN_AVAILABLE:Ljava/lang/String; = "wifi_scan_available"

.field public static final WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final WIFI_STATE_DISABLED:I = 0x1

.field public static final WIFI_STATE_DISABLING:I = 0x0

.field public static final WIFI_STATE_ENABLED:I = 0x3

.field public static final WIFI_STATE_ENABLING:I = 0x2

.field public static final WIFI_STATE_UNKNOWN:I = 0x4

.field public static final WPS_AUTH_FAILURE:I = 0x6

.field public static final WPS_COMPLETED:I = 0x2500d

.field public static final WPS_FAILED:I = 0x2500c

.field public static final WPS_OVERLAP_ERROR:I = 0x3

.field public static final WPS_TIMED_OUT:I = 0x7

.field public static final WPS_TKIP_ONLY_PROHIBITED:I = 0x5

.field public static final WPS_WEP_PROHIBITED:I = 0x4

.field private static final mVersionOfCallSECApi:I = 0x1

.field private static sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private static sConnected:Ljava/util/concurrent/CountDownLatch;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sListenerKey:I

.field private static final sListenerMap:Landroid/util/SparseArray;

.field private static final sListenerMapLock:Ljava/lang/Object;

.field private static sThreadRefCount:I

.field private static final sThreadRefLock:Ljava/lang/Object;


# instance fields
.field private mActiveLockCount:I

.field private mContext:Landroid/content/Context;

.field mService:Landroid/net/wifi/IWifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v1, :cond_22

    const/4 v0, 0x0

    :goto_8
    sput-boolean v0, Landroid/net/wifi/WifiManager;->DBG:Z

    .line 859
    sput v1, Landroid/net/wifi/WifiManager;->sListenerKey:I

    .line 860
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    .line 861
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    .line 866
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sThreadRefLock:Ljava/lang/Object;

    return-void

    :cond_22
    move v0, v1

    .line 83
    goto :goto_8
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IWifiManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/IWifiManager;

    .prologue
    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 882
    iput-object p2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 883
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->init()V

    .line 884
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 82
    invoke-static {p0}, Landroid/net/wifi/WifiManager;->removeListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/internal/util/AsyncChannel;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 82
    sput-object p0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Landroid/util/SparseArray;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiManager;)I
    .registers 2
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 82
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$508(Landroid/net/wifi/WifiManager;)I
    .registers 3
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 82
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$510(Landroid/net/wifi/WifiManager;)I
    .registers 3
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 82
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$520(Landroid/net/wifi/WifiManager;I)I
    .registers 3
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1000
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1002
    :goto_6
    return v1

    .line 1001
    :catch_7
    move-exception v0

    .line 1002
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public static calculateSignalLevel(II)I
    .registers 9
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v6, -0x4b

    const/16 v5, -0x53

    const/16 v4, -0x59

    .line 1709
    const/4 v3, 0x5

    if-ne p1, v3, :cond_23

    .line 1710
    if-gt p0, v4, :cond_d

    .line 1728
    :cond_c
    :goto_c
    return v2

    .line 1712
    :cond_d
    if-le p0, v4, :cond_13

    if-gt p0, v5, :cond_13

    .line 1713
    const/4 v2, 0x1

    goto :goto_c

    .line 1714
    :cond_13
    if-le p0, v5, :cond_19

    if-gt p0, v6, :cond_19

    .line 1715
    const/4 v2, 0x2

    goto :goto_c

    .line 1716
    :cond_19
    if-le p0, v6, :cond_21

    const/16 v2, -0x40

    if-gt p0, v2, :cond_21

    .line 1717
    const/4 v2, 0x3

    goto :goto_c

    .line 1719
    :cond_21
    const/4 v2, 0x4

    goto :goto_c

    .line 1721
    :cond_23
    const/16 v3, -0x64

    if-le p0, v3, :cond_c

    .line 1723
    const/16 v2, -0x37

    if-lt p0, v2, :cond_2e

    .line 1724
    add-int/lit8 v2, p1, -0x1

    goto :goto_c

    .line 1726
    :cond_2e
    const/high16 v0, 0x42340000    # 45.0f

    .line 1727
    .local v0, "inputRange":F
    add-int/lit8 v2, p1, -0x1

    int-to-float v1, v2

    .line 1728
    .local v1, "outputRange":F
    add-int/lit8 v2, p0, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    float-to-int v2, v2

    goto :goto_c
.end method

.method public static compareSignalLevel(II)I
    .registers 3
    .param p0, "rssiA"    # I
    .param p1, "rssiB"    # I

    .prologue
    .line 1742
    sub-int v0, p0, p1

    return v0
.end method

.method private getSupportedFeatures()I
    .registers 3

    .prologue
    .line 1166
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getSupportedFeatures()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1168
    :goto_6
    return v1

    .line 1167
    :catch_7
    move-exception v0

    .line 1168
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method private init()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 2310
    sget-object v4, Landroid/net/wifi/WifiManager;->sThreadRefLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2311
    :try_start_4
    sget v3, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    if-ne v3, v5, :cond_4b

    .line 2312
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v2

    .line 2313
    .local v2, "messenger":Landroid/os/Messenger;
    if-nez v2, :cond_17

    .line 2314
    const/4 v3, 0x0

    sput-object v3, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2315
    monitor-exit v4

    .line 2332
    .end local v2    # "messenger":Landroid/os/Messenger;
    :goto_16
    return-void

    .line 2318
    .restart local v2    # "messenger":Landroid/os/Messenger;
    :cond_17
    new-instance v3, Landroid/os/HandlerThread;

    const-string v5, "WifiManager"

    invoke-direct {v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Landroid/net/wifi/WifiManager;->sHandlerThread:Landroid/os/HandlerThread;

    .line 2319
    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    sput-object v3, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2320
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v3, Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    .line 2322
    sget-object v3, Landroid/net/wifi/WifiManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 2323
    new-instance v1, Landroid/net/wifi/WifiManager$ServiceHandler;

    sget-object v3, Landroid/net/wifi/WifiManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/WifiManager$ServiceHandler;-><init>(Landroid/os/Looper;)V

    .line 2324
    .local v1, "handler":Landroid/os/Handler;
    sget-object v3, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v5, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v1, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    :try_end_46
    .catchall {:try_start_4 .. :try_end_46} :catchall_4d

    .line 2326
    :try_start_46
    sget-object v3, Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_4b} :catch_50
    .catchall {:try_start_46 .. :try_end_4b} :catchall_4d

    .line 2331
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "messenger":Landroid/os/Messenger;
    :cond_4b
    :goto_4b
    :try_start_4b
    monitor-exit v4

    goto :goto_16

    :catchall_4d
    move-exception v3

    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_4d

    throw v3

    .line 2327
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "messenger":Landroid/os/Messenger;
    :catch_50
    move-exception v0

    .line 2328
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_51
    const-string v3, "WifiManager"

    const-string v5, "interrupted wait at init"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_4d

    goto :goto_4b
.end method

.method private isFeatureSupported(I)Z
    .registers 3
    .param p1, "feature"    # I

    .prologue
    .line 1173
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getSupportedFeatures()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static putListener(Ljava/lang/Object;)I
    .registers 4
    .param p0, "listener"    # Ljava/lang/Object;

    .prologue
    .line 2289
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 2297
    :goto_3
    return v0

    .line 2291
    :cond_4
    sget-object v2, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2293
    :cond_7
    :try_start_7
    sget v0, Landroid/net/wifi/WifiManager;->sListenerKey:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/net/wifi/WifiManager;->sListenerKey:I

    .line 2294
    .local v0, "key":I
    if-eqz v0, :cond_7

    .line 2295
    sget-object v1, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2296
    monitor-exit v2

    goto :goto_3

    .end local v0    # "key":I
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private static removeListener(I)Ljava/lang/Object;
    .registers 4
    .param p0, "key"    # I

    .prologue
    .line 2301
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 2305
    :goto_3
    return-object v0

    .line 2302
    :cond_4
    sget-object v2, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2303
    :try_start_7
    sget-object v1, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2304
    .local v0, "listener":Ljava/lang/Object;
    sget-object v1, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 2305
    monitor-exit v2

    goto :goto_3

    .line 2306
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private validateChannel()V
    .registers 3

    .prologue
    .line 2335
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No permission to access and change wifi or a bad initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2337
    :cond_c
    return-void
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, -0x1

    .line 961
    if-nez p1, :cond_4

    .line 965
    :goto_3
    return v0

    .line 964
    :cond_4
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 965
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_3
.end method

.method public addToBlacklist(Ljava/lang/String;)Z
    .registers 4
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1951
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addToBlacklist(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1952
    const/4 v1, 0x1

    .line 1954
    :goto_6
    return v1

    .line 1953
    :catch_7
    move-exception v0

    .line 1954
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public callSECApi(Landroid/os/Message;)I
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3117
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_6

    .line 3118
    const/4 v1, 0x1

    .line 3123
    :goto_5
    return v1

    .line 3121
    :cond_6
    :try_start_6
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 3122
    :catch_d
    move-exception v0

    .line 3123
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_5
.end method

.method public callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3137
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 3139
    :goto_6
    return-object v1

    .line 3138
    :catch_7
    move-exception v0

    .line 3139
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V
    .registers 6
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$WpsCallback;

    .prologue
    .line 2476
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 2477
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2500e

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2478
    return-void
.end method

.method public clearBlacklist()Z
    .registers 3

    .prologue
    .line 1968
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->clearBlacklist()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1969
    const/4 v1, 0x1

    .line 1971
    :goto_6
    return v1

    .line 1970
    :catch_7
    move-exception v0

    .line 1971
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public connect(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .registers 6
    .param p1, "networkId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 2378
    if-gez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2379
    :cond_a
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 2380
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25001

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2381
    return-void
.end method

.method public connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .registers 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 2356
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2357
    :cond_a
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 2360
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25001

    const/4 v2, -0x1

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2362
    return-void
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 3387
    new-instance v0, Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .registers 5
    .param p1, "lockType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 3353
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 3369
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public disable(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .registers 6
    .param p1, "netId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 2449
    if-gez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2450
    :cond_a
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 2451
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25011

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2452
    return-void
.end method

.method public disableNetwork(I)Z
    .registers 4
    .param p1, "netId"    # I

    .prologue
    .line 1051
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disableNetwork(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1053
    :goto_6
    return v1

    .line 1052
    :catch_7
    move-exception v0

    .line 1053
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disconnect()Z
    .registers 3

    .prologue
    .line 1064
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disconnect()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1065
    const/4 v1, 0x1

    .line 1067
    :goto_6
    return v1

    .line 1066
    :catch_7
    move-exception v0

    .line 1067
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enableAggressiveHandover(I)V
    .registers 3
    .param p1, "enabled"    # I

    .prologue
    .line 3736
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->enableAggressiveHandover(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 3740
    :goto_5
    return-void

    .line 3737
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public enableNetwork(IZ)Z
    .registers 5
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 1036
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1038
    :goto_6
    return v1

    .line 1037
    :catch_7
    move-exception v0

    .line 1038
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enableVerboseLogging(I)V
    .registers 6
    .param p1, "verbose"    # I

    .prologue
    .line 3670
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enableVerboseLogging(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 3675
    :goto_5
    return-void

    .line 3671
    :catch_6
    move-exception v0

    .line 3673
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableVerboseLogging "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3587
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiManager;->sThreadRefLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_1c

    .line 3588
    :try_start_3
    sget v0, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    if-nez v0, :cond_14

    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_14

    .line 3589
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 3591
    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    .line 3593
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3595
    return-void

    .line 3591
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    .line 3593
    :catchall_1c
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public forget(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .registers 6
    .param p1, "netId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 2434
    if-gez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2435
    :cond_a
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 2436
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25004

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2437
    return-void
.end method

.method public getAggressiveHandover()I
    .registers 3

    .prologue
    .line 3749
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getAggressiveHandover()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 3751
    :goto_6
    return v1

    .line 3750
    :catch_7
    move-exception v0

    .line 3751
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAllowScansWithTraffic()I
    .registers 3

    .prologue
    .line 3773
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getAllowScansWithTraffic()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 3775
    :goto_6
    return v1

    .line 3774
    :catch_7
    move-exception v0

    .line 3775
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getBatchedScanResults()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1432
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    .line 1434
    :goto_c
    return-object v1

    .line 1433
    :catch_d
    move-exception v0

    .line 1434
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getChannelList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1126
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getChannelList()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1128
    :goto_6
    return-object v1

    .line 1127
    :catch_7
    move-exception v0

    .line 1128
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConfigFile()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2504
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfigFile()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 2506
    :goto_6
    return-object v1

    .line 2505
    :catch_7
    move-exception v0

    .line 2506
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 907
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 909
    :goto_6
    return-object v1

    .line 908
    :catch_7
    move-exception v0

    .line 909
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 3

    .prologue
    .line 1485
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1487
    :goto_6
    return-object v1

    .line 1486
    :catch_7
    move-exception v0

    .line 1487
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;
    .registers 3

    .prologue
    .line 940
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 942
    :goto_6
    return-object v1

    .line 941
    :catch_7
    move-exception v0

    .line 942
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getControllerActivityEnergyInfo(I)Landroid/net/wifi/WifiActivityEnergyInfo;
    .registers 8
    .param p1, "updateType"    # I

    .prologue
    const/4 v2, 0x0

    .line 1292
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v3, :cond_7

    move-object v1, v2

    .line 1309
    :goto_6
    return-object v1

    .line 1295
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    move-result v3

    if-nez v3, :cond_f

    move-object v1, v2

    .line 1296
    goto :goto_6

    .line 1298
    :cond_f
    monitor-enter p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_21

    .line 1299
    :try_start_10
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v3}, Landroid/net/wifi/IWifiManager;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v1

    .line 1300
    .local v1, "record":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1301
    monitor-exit p0

    goto :goto_6

    .line 1305
    .end local v1    # "record":Landroid/net/wifi/WifiActivityEnergyInfo;
    :catchall_1e
    move-exception v3

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_1e

    :try_start_20
    throw v3
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_21} :catch_21

    .line 1306
    :catch_21
    move-exception v0

    .line 1307
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getControllerActivityEnergyInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 1309
    goto :goto_6

    .line 1303
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "record":Landroid/net/wifi/WifiActivityEnergyInfo;
    :cond_3c
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_1e

    move-object v1, v2

    goto :goto_6
.end method

.method public getCountryRev()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2707
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getCountryRev()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 2709
    :goto_6
    return-object v1

    .line 2708
    :catch_7
    move-exception v0

    .line 2709
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 3

    .prologue
    .line 1601
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1603
    :goto_6
    return-object v1

    .line 1602
    :catch_7
    move-exception v0

    .line 1603
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getFrequencyBand()I
    .registers 3

    .prologue
    .line 1575
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getFrequencyBand()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1577
    :goto_6
    return v1

    .line 1576
    :catch_7
    move-exception v0

    .line 1577
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getFullRoamScanPeriod()I
    .registers 3

    .prologue
    .line 2640
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getFullRoamScanPeriod()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2642
    :goto_6
    return v1

    .line 2641
    :catch_7
    move-exception v0

    .line 2642
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getLinkStatus()I
    .registers 3

    .prologue
    .line 2728
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getLinkStatus()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2730
    :goto_6
    return v1

    .line 2729
    :catch_7
    move-exception v0

    .line 2730
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    .line 2811
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 2813
    :goto_6
    return-object v1

    .line 2812
    :catch_7
    move-exception v0

    .line 2813
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .registers 4

    .prologue
    .line 3657
    :try_start_0
    const-string/jumbo v1, "pppoe"

    const-string v2, "WifiManager: getPPPOEInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    .line 3660
    :goto_e
    return-object v1

    .line 3659
    :catch_f
    move-exception v0

    .line 3660
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getPrivilegedConfiguredNetworks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 930
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 932
    :goto_6
    return-object v1

    .line 931
    :catch_7
    move-exception v0

    .line 932
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRoamBand()I
    .registers 3

    .prologue
    .line 2674
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamBand()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2676
    :goto_6
    return v1

    .line 2675
    :catch_7
    move-exception v0

    .line 2676
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getRoamDelta()I
    .registers 3

    .prologue
    .line 2572
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamDelta()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2574
    :goto_6
    return v1

    .line 2573
    :catch_7
    move-exception v0

    .line 2574
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getRoamScanPeriod()I
    .registers 3

    .prologue
    .line 2606
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamScanPeriod()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2608
    :goto_6
    return v1

    .line 2607
    :catch_7
    move-exception v0

    .line 2608
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getRoamTrigger()I
    .registers 3

    .prologue
    .line 2538
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamTrigger()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2540
    :goto_6
    return v1

    .line 2539
    :catch_7
    move-exception v0

    .line 2540
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getS69BssInfo(Ljava/lang/String;)Landroid/net/wifi/S69BssInfo;
    .registers 5
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 3852
    sget-boolean v1, Landroid/net/wifi/WifiManager;->DBG:Z

    if-eqz v1, :cond_b

    const-string v1, "WifiManager"

    const-string v2, "getS69BssInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3854
    :cond_b
    :try_start_b
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->getS69BssInfo(Ljava/lang/String;)Landroid/net/wifi/S69BssInfo;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v1

    .line 3856
    :goto_11
    return-object v1

    .line 3855
    :catch_12
    move-exception v0

    .line 3856
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getS69PartMsg(II)Ljava/lang/String;
    .registers 6
    .param p1, "start"    # I
    .param p2, "size"    # I

    .prologue
    .line 3832
    sget-boolean v1, Landroid/net/wifi/WifiManager;->DBG:Z

    if-eqz v1, :cond_b

    const-string v1, "WifiManager"

    const-string v2, "getS69PartMsg"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    :cond_b
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v1, :cond_12

    .line 3834
    const-string v1, ""

    .line 3839
    :goto_11
    return-object v1

    .line 3837
    :cond_12
    :try_start_12
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->getS69PartMsg(II)Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_19

    move-result-object v1

    goto :goto_11

    .line 3838
    :catch_19
    move-exception v0

    .line 3839
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, ""

    goto :goto_11
.end method

.method public getScanResults()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1497
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->getScanResults(Ljava/lang/String;)Ljava/util/List;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    .line 1499
    :goto_c
    return-object v1

    .line 1498
    :catch_d
    move-exception v0

    .line 1499
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .registers 4
    .param p1, "netID"    # I

    .prologue
    .line 920
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 922
    :goto_6
    return-object v1

    .line 921
    :catch_7
    move-exception v0

    .line 922
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getSupportedChannels()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2799
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getChannelList()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 2801
    :goto_6
    return-object v1

    .line 2800
    :catch_7
    move-exception v0

    .line 2801
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getTxPacketCount(Landroid/net/wifi/WifiManager$TxPacketCountListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .prologue
    .line 1694
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 1695
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25014

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1696
    return-void
.end method

.method public getVerboseLoggingLevel()I
    .registers 3

    .prologue
    .line 3684
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getVerboseLoggingLevel()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 3686
    :goto_6
    return v1

    .line 3685
    :catch_7
    move-exception v0

    .line 3686
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiApChameleonSsid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1846
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApChameleonSsid()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1848
    :goto_6
    return-object v1

    .line 1847
    :catch_7
    move-exception v0

    .line 1848
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiApConfigTxPower()I
    .registers 3

    .prologue
    .line 1881
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConfigTxPower()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1883
    :goto_6
    return v1

    .line 1882
    :catch_7
    move-exception v0

    .line 1883
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 3

    .prologue
    .line 1809
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1811
    :goto_6
    return-object v1

    .line 1810
    :catch_7
    move-exception v0

    .line 1811
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiApStaList()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1835
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApStaList()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1837
    :goto_6
    return-object v1

    .line 1836
    :catch_7
    move-exception v0

    .line 1837
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiApState()I
    .registers 3

    .prologue
    .line 1784
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1786
    :goto_6
    return v1

    .line 1785
    :catch_7
    move-exception v0

    .line 1786
    .local v0, "e":Landroid/os/RemoteException;
    const/16 v1, 0xe

    goto :goto_6
.end method

.method public getWifiApTimeOut()I
    .registers 3

    .prologue
    .line 1869
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApTimeOut()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1871
    :goto_6
    return v1

    .line 1870
    :catch_7
    move-exception v0

    .line 1871
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getWifiIBSSState()I
    .registers 3

    .prologue
    .line 2767
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiIBSSEnabledState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2769
    :goto_6
    return v1

    .line 2768
    :catch_7
    move-exception v0

    .line 2769
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_6
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2489
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_6} :catch_a

    move-result-object v1

    .line 2493
    :goto_7
    return-object v1

    .line 2490
    :catch_8
    move-exception v0

    .line 2491
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_7

    .line 2492
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_a
    move-exception v0

    .line 2493
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_7
.end method

.method public getWifiState()I
    .registers 3

    .prologue
    .line 1672
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1674
    :goto_6
    return v1

    .line 1673
    :catch_7
    move-exception v0

    .line 1674
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_6
.end method

.method public getWifiStateMachineMessenger()Landroid/os/Messenger;
    .registers 3

    .prologue
    .line 2414
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiStateMachineMessenger()Landroid/os/Messenger;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 2416
    :goto_6
    return-object v1

    .line 2415
    :catch_7
    move-exception v0

    .line 2416
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWpsNfcConfigurationToken(I)Ljava/lang/String;
    .registers 4
    .param p1, "netId"    # I

    .prologue
    .line 1473
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->getWpsNfcConfigurationToken(I)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1475
    :goto_6
    return-object v1

    .line 1474
    :catch_7
    move-exception v0

    .line 1475
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public initializeMulticastFiltering()Z
    .registers 3

    .prologue
    .line 3578
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3579
    const/4 v1, 0x1

    .line 3581
    :goto_6
    return v1

    .line 3580
    :catch_7
    move-exception v0

    .line 3581
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public is5GHzBandSupported()Z
    .registers 2

    .prologue
    .line 1179
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isAdditionalStaSupported()Z
    .registers 2

    .prologue
    .line 1256
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isAllowWifiWarning()Z
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3886
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3887
    .local v0, "ChinaNalSecurityType":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_52

    const-string v6, "ChinaNalSecurity"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    const-string v6, ""

    const-string v7, "CHINA_UP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    move v3, v4

    .line 3889
    .local v3, "isCscWifiEnableWarning":Z
    :goto_25
    const-string v6, "WifiManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAllowWifiWarning() -> isCscWifiEnableWarning : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ChinaNalSecurityType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    :try_start_47
    iget-object v6, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v6}, Landroid/net/wifi/IWifiManager;->checkWarningPopup()Z
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4c} :catch_56

    move-result v2

    .line 3892
    .local v2, "isAllowPopup":Z
    if-eqz v3, :cond_54

    if-eqz v2, :cond_54

    .line 3895
    .end local v2    # "isAllowPopup":Z
    :goto_51
    return v4

    .end local v3    # "isCscWifiEnableWarning":Z
    :cond_52
    move v3, v5

    .line 3887
    goto :goto_25

    .restart local v2    # "isAllowPopup":Z
    .restart local v3    # "isCscWifiEnableWarning":Z
    :cond_54
    move v4, v5

    .line 3892
    goto :goto_51

    .line 3893
    .end local v2    # "isAllowPopup":Z
    :catch_56
    move-exception v1

    .line 3894
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "WifiManager"

    const-string v5, "RemoteException occured. WifiManager.isAllowWifiWarning()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 3895
    goto :goto_51
.end method

.method public isBatchedScanSupported()Z
    .registers 3

    .prologue
    .line 1405
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isBatchedScanSupported()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1406
    :goto_6
    return v1

    :catch_7
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isDeviceToApRttSupported()Z
    .registers 2

    .prologue
    .line 1240
    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceToDeviceRttSupported()Z
    .registers 2

    .prologue
    .line 1230
    const/4 v0, 0x0

    return v0
.end method

.method public isDualBandSupported()Z
    .registers 3

    .prologue
    .line 1588
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isDualBandSupported()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1590
    :goto_6
    return v1

    .line 1589
    :catch_7
    move-exception v0

    .line 1590
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isEnhancedPowerReportingSupported()Z
    .registers 2

    .prologue
    .line 1278
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isMulticastEnabled()Z
    .registers 3

    .prologue
    .line 3566
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 3568
    :goto_6
    return v1

    .line 3567
    :catch_7
    move-exception v0

    .line 3568
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isNanSupported()Z
    .registers 2

    .prologue
    .line 1220
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isOffChannelTdlsSupported()Z
    .registers 2

    .prologue
    .line 1271
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isP2pSupported()Z
    .registers 2

    .prologue
    .line 1194
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isPasspointSupported()Z
    .registers 2

    .prologue
    .line 1187
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isPortableHotspotSupported()Z
    .registers 2

    .prologue
    .line 1203
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isPreferredNetworkOffloadSupported()Z
    .registers 2

    .prologue
    .line 1248
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isReconnecting()I
    .registers 4

    .prologue
    .line 3870
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3871
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0xc8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3874
    :try_start_9
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, v1}, Landroid/net/wifi/IWifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v2

    .line 3876
    :goto_f
    return v2

    .line 3875
    :catch_10
    move-exception v0

    .line 3876
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    goto :goto_f
.end method

.method public isScanAlwaysAvailable()Z
    .registers 3

    .prologue
    .line 1513
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isScanAlwaysAvailable()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1515
    :goto_6
    return v1

    .line 1514
    :catch_7
    move-exception v0

    .line 1515
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isTdlsSupported()Z
    .registers 2

    .prologue
    .line 1263
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isUserAction()Z
    .registers 8

    .prologue
    .line 1646
    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1647
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 1649
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_95

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1650
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v4, "com.android.systemui"

    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    const-string v4, "com.android.settings"

    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    const-string v4, "com.sec.android.easysettings"

    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1653
    :cond_48
    const-string v4, "WifiManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    if-ne v4, v5, :cond_12

    .line 1655
    const-string v4, "WifiManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  Binder.getCallingPid() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    const/4 v4, 0x1

    .line 1660
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_94
    return v4

    :cond_95
    const/4 v4, 0x0

    goto :goto_94
.end method

.method public isWifiApEnabled()Z
    .registers 3

    .prologue
    .line 1798
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isWifiEnabled()Z
    .registers 3

    .prologue
    .line 1684
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isWifiIBSSEnabled()Z
    .registers 3

    .prologue
    .line 2784
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiIBSSState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isWifiScannerSupported()Z
    .registers 2

    .prologue
    .line 1212
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public modifyPasspointCred(Ljava/lang/String;)I
    .registers 5
    .param p1, "credInfo"    # Ljava/lang/String;

    .prologue
    .line 3723
    :try_start_0
    const-string/jumbo v1, "modifyPasspointCred"

    const-string v2, "WifiManager: getPPPOEInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->modifyPasspointCred(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v1

    .line 3726
    :goto_e
    return v1

    .line 3725
    :catch_f
    move-exception v0

    .line 3726
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_e
.end method

.method public pingSupplicant()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1107
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v2, :cond_6

    .line 1112
    :goto_5
    return v1

    .line 1110
    :cond_6
    :try_start_6
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->pingSupplicant()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 1111
    :catch_d
    move-exception v0

    .line 1112
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public pollBatchedScan()V
    .registers 2

    .prologue
    .line 1460
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->pollBatchedScan()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1462
    :goto_5
    return-void

    .line 1461
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public reassociate()Z
    .registers 3

    .prologue
    .line 1094
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reassociate()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1095
    const/4 v1, 0x1

    .line 1097
    :goto_6
    return v1

    .line 1096
    :catch_7
    move-exception v0

    .line 1097
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public reconnect()Z
    .registers 3

    .prologue
    .line 1079
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reconnect()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1080
    const/4 v1, 0x1

    .line 1082
    :goto_6
    return v1

    .line 1081
    :catch_7
    move-exception v0

    .line 1082
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public removeNetwork(I)Z
    .registers 4
    .param p1, "netId"    # I

    .prologue
    .line 1016
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->removeNetwork(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1018
    :goto_6
    return v1

    .line 1017
    :catch_7
    move-exception v0

    .line 1018
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;)Z
    .registers 6
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;

    .prologue
    .line 1386
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroid/net/wifi/IWifiManager;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 1387
    :goto_c
    return v1

    :catch_d
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/WorkSource;)Z
    .registers 6
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1392
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, p1, v2, p2}, Landroid/net/wifi/IWifiManager;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v1

    .line 1393
    :goto_b
    return v1

    :catch_c
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .registers 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 2402
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2403
    :cond_a
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 2404
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25007

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2405
    return-void
.end method

.method public saveConfiguration()Z
    .registers 3

    .prologue
    .line 1530
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1532
    :goto_6
    return v1

    .line 1531
    :catch_7
    move-exception v0

    .line 1532
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public sendS69LocationServiceRequest(Ljava/lang/String;)I
    .registers 6
    .param p1, "location_request"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3812
    sget-boolean v2, Landroid/net/wifi/WifiManager;->DBG:Z

    if-eqz v2, :cond_d

    const-string v2, "WifiManager"

    const-string/jumbo v3, "sendS69LocationServiceRequest"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    :cond_d
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v2, :cond_12

    .line 3819
    :goto_11
    return v1

    .line 3817
    :cond_12
    :try_start_12
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, p1}, Landroid/net/wifi/IWifiManager;->sendS69LocationServiceRequest(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 3818
    :catch_19
    move-exception v0

    .line 3819
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_11
.end method

.method public setAllowScansWithTraffic(I)V
    .registers 3
    .param p1, "enabled"    # I

    .prologue
    .line 3761
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setAllowScansWithTraffic(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 3765
    :goto_5
    return-void

    .line 3762
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 1545
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1547
    :goto_5
    return-void

    .line 1546
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .registers 4
    .param p1, "countryRev"    # Ljava/lang/String;

    .prologue
    .line 2691
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setCountryRev(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2693
    :goto_6
    return v1

    .line 2692
    :catch_7
    move-exception v0

    .line 2693
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setFrequencyBand(IZ)V
    .registers 4
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 1560
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setFrequencyBand(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1562
    :goto_5
    return-void

    .line 1561
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setFullRoamScanPeriod(I)Z
    .registers 4
    .param p1, "fullRoamScanPeriod"    # I

    .prologue
    .line 2623
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setFullRoamScanPeriod(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2625
    :goto_6
    return v1

    .line 2624
    :catch_7
    move-exception v0

    .line 2625
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setIsFmcNetwork(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 2829
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setIsFmcNetwork(Z)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2831
    :goto_6
    return v1

    .line 2830
    :catch_7
    move-exception v0

    .line 2831
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setRoamBand(I)Z
    .registers 4
    .param p1, "roamBand"    # I

    .prologue
    .line 2657
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamBand(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2659
    :goto_6
    return v1

    .line 2658
    :catch_7
    move-exception v0

    .line 2659
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setRoamDelta(I)Z
    .registers 4
    .param p1, "roamDelta"    # I

    .prologue
    .line 2555
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamDelta(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2557
    :goto_6
    return v1

    .line 2556
    :catch_7
    move-exception v0

    .line 2557
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setRoamScanPeriod(I)Z
    .registers 4
    .param p1, "roamScanPeriod"    # I

    .prologue
    .line 2589
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamScanPeriod(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2591
    :goto_6
    return v1

    .line 2590
    :catch_7
    move-exception v0

    .line 2591
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setRoamTrigger(I)Z
    .registers 4
    .param p1, "roamTrigger"    # I

    .prologue
    .line 2521
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamTrigger(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 2523
    :goto_6
    return v1

    .line 2522
    :catch_7
    move-exception v0

    .line 2523
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setS69DisableLocationService()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 3790
    sget-boolean v2, Landroid/net/wifi/WifiManager;->DBG:Z

    if-eqz v2, :cond_d

    const-string v2, "WifiManager"

    const-string/jumbo v3, "setS69DisableLocationService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3791
    :cond_d
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v2, :cond_12

    .line 3797
    :goto_11
    return v1

    .line 3795
    :cond_12
    :try_start_12
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->setS69DisableLocationService()I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 3796
    :catch_19
    move-exception v0

    .line 3797
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_11
.end method

.method public setS69EnableLocationService()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 3701
    sget-boolean v2, Landroid/net/wifi/WifiManager;->DBG:Z

    if-eqz v2, :cond_d

    const-string v2, "WifiManager"

    const-string/jumbo v3, "setS69EnableLocationService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    :cond_d
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v2, :cond_12

    .line 3708
    :goto_11
    return v1

    .line 3706
    :cond_12
    :try_start_12
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->setS69EnableLocationService()I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 3707
    :catch_19
    move-exception v0

    .line 3708
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_11
.end method

.method public setTdlsEnabled(Ljava/net/InetAddress;Z)V
    .registers 5
    .param p1, "remoteIPAddress"    # Ljava/net/InetAddress;
    .param p2, "enable"    # Z

    .prologue
    .line 1998
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/wifi/IWifiManager;->enableTdls(Ljava/lang/String;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 2002
    :goto_9
    return-void

    .line 1999
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public setTdlsEnabledWithMacAddress(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 2012
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2016
    :goto_5
    return-void

    .line 2013
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setWifiApConfigTxPower(I)Z
    .registers 4
    .param p1, "txPowerMode"    # I

    .prologue
    .line 1892
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfigTxPower(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1893
    const/4 v1, 0x1

    .line 1895
    :goto_6
    return v1

    .line 1894
    :catch_7
    move-exception v0

    .line 1895
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 4
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1823
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1824
    const/4 v1, 0x1

    .line 1826
    :goto_6
    return v1

    .line 1825
    :catch_7
    move-exception v0

    .line 1826
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .registers 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    .line 1760
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1761
    const/4 v1, 0x1

    .line 1763
    :goto_6
    return v1

    .line 1762
    :catch_7
    move-exception v0

    .line 1763
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiApTimeOut(I)Z
    .registers 4
    .param p1, "sec"    # I

    .prologue
    .line 1857
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApTimeOut(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1858
    const/4 v1, 0x1

    .line 1860
    :goto_6
    return v1

    .line 1859
    :catch_7
    move-exception v0

    .line 1860
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiEnabled(Z)Z
    .registers 11
    .param p1, "enabled"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 1614
    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1615
    .local v1, "packageName":Ljava/lang/String;
    const-string v4, "WifiManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "packageName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    const-string v4, "CHINA"

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 1617
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isAllowWifiWarning()Z

    move-result v4

    if-ne v8, v4, :cond_a4

    if-ne v8, p1, :cond_a4

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_43

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    const/16 v6, 0xa

    if-ne v4, v6, :cond_a4

    :cond_43
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_a4

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_a4

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isUserAction()Z

    move-result v4

    if-nez v4, :cond_a4

    .line 1621
    sget-boolean v4, Landroid/net/wifi/WifiManager;->DBG:Z

    if-eqz v4, :cond_69

    const-string v4, "WifiManager"

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_69
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1623
    .local v3, "wifiEnableWarningIntent":Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v6, "com.android.settings.wifi.WifiWarningDialog"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1624
    const/high16 v4, 0x14800000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1625
    const-string v4, "dialog_type"

    const-string/jumbo v6, "wlan_enable_warning"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1626
    const-string v4, "WifiManager"

    const-string v6, "WifiManager.setWifiEnabled Prepare to stat activity: WifiWarningDialog"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 1628
    .local v2, "userId":I
    iget-object v6, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    const-string v4, "com.android.systemui"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9e

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    :goto_99
    invoke-virtual {v6, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move v4, v5

    .line 1635
    .end local v2    # "userId":I
    .end local v3    # "wifiEnableWarningIntent":Landroid/content/Intent;
    :goto_9d
    return v4

    .line 1628
    .restart local v2    # "userId":I
    .restart local v3    # "wifiEnableWarningIntent":Landroid/content/Intent;
    :cond_9e
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_99

    .line 1633
    .end local v2    # "userId":I
    .end local v3    # "wifiEnableWarningIntent":Landroid/content/Intent;
    :cond_a4
    :try_start_a4
    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v4, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_a9} :catch_ab

    move-result v4

    goto :goto_9d

    .line 1634
    :catch_ab
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    move v4, v5

    .line 1635
    goto :goto_9d
.end method

.method public setWifiIBSSEnabled(Z)Z
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    .line 2746
    :try_start_0
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWifiIBSSEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    sget-boolean v1, Landroid/net/wifi/WifiManager;->DBG:Z

    if-eqz v1, :cond_2b

    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    :cond_2b
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiIBSSEnabled(Z)Z
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_32

    move-result v1

    .line 2751
    :goto_31
    return v1

    .line 2749
    :catch_32
    move-exception v0

    .line 2750
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v2, "RemoteException occured. WifiManager.setWifiIBSSEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    const/4 v1, 0x0

    goto :goto_31
.end method

.method public startCustomizedScan(Landroid/net/wifi/ScanSettings;)Z
    .registers 5
    .param p1, "requested"    # Landroid/net/wifi/ScanSettings;

    .prologue
    .line 1356
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 1357
    const/4 v1, 0x1

    .line 1359
    :goto_7
    return v1

    .line 1358
    :catch_8
    move-exception v0

    .line 1359
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public startCustomizedScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z
    .registers 5
    .param p1, "requested"    # Landroid/net/wifi/ScanSettings;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1366
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1367
    const/4 v1, 0x1

    .line 1369
    :goto_6
    return v1

    .line 1368
    :catch_7
    move-exception v0

    .line 1369
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    .registers 5
    .param p1, "config"    # Landroid/net/wifi/PPPOEConfig;

    .prologue
    .line 3607
    :try_start_0
    const-string/jumbo v1, "pppoe"

    const-string v2, "WifiManager: startPPPOE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 3613
    :goto_d
    return-void

    .line 3609
    :catch_e
    move-exception v0

    .line 3611
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "pppoe"

    const-string v2, "RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public startScan()Z
    .registers 5

    .prologue
    .line 1320
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 1321
    const/4 v1, 0x1

    .line 1323
    :goto_8
    return v1

    .line 1322
    :catch_9
    move-exception v0

    .line 1323
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public startScan(Landroid/os/WorkSource;)Z
    .registers 5
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1331
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 1332
    const/4 v1, 0x1

    .line 1334
    :goto_7
    return v1

    .line 1333
    :catch_8
    move-exception v0

    .line 1334
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public startWifi()Z
    .registers 3

    .prologue
    .line 1914
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->startWifi()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1915
    const/4 v1, 0x1

    .line 1917
    :goto_6
    return v1

    .line 1916
    :catch_7
    move-exception v0

    .line 1917
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V
    .registers 7
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$WpsCallback;

    .prologue
    .line 2463
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2464
    :cond_a
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 2465
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2500a

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2466
    return-void
.end method

.method public stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
    .registers 3
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;

    .prologue
    .line 1420
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1422
    :goto_5
    return-void

    .line 1421
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public stopPPPOE()V
    .registers 4

    .prologue
    .line 3632
    :try_start_0
    const-string/jumbo v1, "pppoe"

    const-string v2, "WifiManager: stopPPPOE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopPPPOE()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 3638
    :goto_d
    return-void

    .line 3634
    :catch_e
    move-exception v0

    .line 3636
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "pppoe"

    const-string v2, "RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public stopWifi()Z
    .registers 3

    .prologue
    .line 1934
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopWifi()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1935
    const/4 v1, 0x1

    .line 1937
    :goto_6
    return v1

    .line 1936
    :catch_7
    move-exception v0

    .line 1937
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 984
    if-eqz p1, :cond_6

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v0, :cond_8

    .line 985
    :cond_6
    const/4 v0, -0x1

    .line 987
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_7
.end method
