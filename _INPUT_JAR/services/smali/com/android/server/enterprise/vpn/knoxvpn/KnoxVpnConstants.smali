.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;
.super Ljava/lang/Object;
.source "KnoxVpnConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants$ProfileState;
    }
.end annotation


# static fields
.field public static final ACTION_BIND_RESULT:Ljava/lang/String; = "com.samsung.android.mdm.VPN_BIND_RESULT"

.field public static final ACTION_MIGRATION_COMPLETE:Ljava/lang/String; = "com.sec.knox.migrationagent.MIGRATION_COMPLETE"

.field public static final ACTION_MIGRATION_FAIL:Ljava/lang/String; = "com.sec.enterprise.knox.VPN_MIGRAION_FAIL"

.field public static final ACTION_MIGRATION_RETRY:Ljava/lang/String; = "com.sec.enterprise.knox.VPN_MIGRAION_RETRY"

.field public static final ACTION_MIGRATION_START:Ljava/lang/String; = "com.sec.knox.migrationagent.START_VPN_MIGRATION"

.field public static final ACTION_VPN_KNOX_SERVICE:Ljava/lang/String; = "com.sec.enterprise.mdm.services.vpn.KNOX_VPN"

.field public static final ACTION_VPN_MIGRATION_COMPLETE:Ljava/lang/String; = "com.sec.enterprise.knox.VPN_MIGRATION_COMPLETE"

.field public static final ADD_ALL_APPLICATION:Ljava/lang/String; = "1"

.field public static final ADD_ALL_PACKAGES:Ljava/lang/String; = "ADD_ALL_PACKAGES"

.field public static final ADD_MEDIA_SOCKETS_TO_INTERFACE:Ljava/lang/String; = "1"

.field public static final ADD_PER_APPLICATION:Ljava/lang/String; = "0"

.field public static final ADD_UID:Ljava/lang/String; = "1"

.field public static final ANYCONNECT_BIND_ACTION:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.avf.BIND_SERVICE"

.field public static final BIND_CID:Ljava/lang/String; = "vpn_bind_cid"

.field public static final BIND_STATUS:Ljava/lang/String; = "vpn_bind_status"

.field public static final BIND_VENDOR:Ljava/lang/String; = "vpn_bind_vendor"

.field public static final BLACK_LISTED_APPLICATION:[Ljava/lang/String;

.field public static final BLACK_LISTED_UID:[Ljava/lang/Integer;

.field public static BLOCK_APP_TRAFFIC:Ljava/lang/String; = null

.field public static final CALLER_FRAMEWORK:Ljava/lang/String; = "1000"

.field public static final CALLER_MEDIA:Ljava/lang/String; = "1013"

.field public static final CHAINED_APPLICATION_DEFAULT_USER_ID:I = 0x0

.field public static final CHAINING_DEFAULT_VALUE:I = -0x1

.field public static final CHAINING_DISABLED:I = 0x0

.field public static final CHAINING_ENABLED:I = 0x1

.field public static final CHAINING_NOT_APPLICABLE:I = -0x1

.field public static final CHAINING_STATUS_ERROR:I = -0x1

.field public static final CHAINING_STATUS_NOT_READY:I = 0x0

.field public static final CHAINING_STATUS_READY:I = 0x1

.field public static final CISCO_ANYCONNECT_PKG:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.avf"

.field public static final CISCO_APPLICATION_NAME:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.avf"

.field public static final CISCO_PROXY_APPLICATION_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.cisco.anyconnect.vpn.service"

.field public static final CONTAINER_PREFIX:Ljava/lang/String; = "sec_container_"

.field public static final CONTAINER_REMOVAL_INTENT:Ljava/lang/String; = "enterprise.container.uninstalled"

.field public static final CONTAINER_VPN_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.KNOX_CONTAINER_VPN"

.field public static final DEFAULT_CONTAINER_VPN_STATE:I = -0x1

.field public static final DNS_CONF_FILE_PATH:Ljava/lang/String; = "/data/system/dnsproperties.ini"

.field public static final EXTRA_ADMIN_PKG_NAME:Ljava/lang/String; = "admin_package_name"

.field public static final EXTRA_CONTAINER_PKG_COUNT:Ljava/lang/String; = "knox_1_apk_count"

.field public static final EXTRA_NEW_ADMIN_ID:Ljava/lang/String; = "admin_uid"

.field public static final EXTRA_NEW_CONTAINER_ID:Ljava/lang/String; = "knox_2_container_id"

.field public static final EXTRA_OLD_ADMIN_ID:Ljava/lang/String; = "admin_uid"

.field public static final EXTRA_OLD_CONTAINER_ID:Ljava/lang/String; = "knox_1_container_id"

.field private static final F5_KNOX_CLIENT_PACKAGE:Ljava/lang/String; = "com.f5.edge.client_ics"

.field public static final FIPS_MODE:I = 0x1

.field public static final INVALID_CONTAINER_ID:I = 0x0

.field public static final INVALID_KNOX_NETWORK_ID:I = -0x1

.field public static final JSON_TAG_CHAINED_APPLICATION:Ljava/lang/String; = "chainingApplication"

.field public static final JSON_TAG_CHAINED_APPLICATION_USER_ID:Ljava/lang/String; = "chainingUserId"

.field public static final JSON_TAG_CHAIN_ENABLED:Ljava/lang/String; = "chaining_enabled"

.field public static final JSON_TAG_KNOX:Ljava/lang/String; = "knox"

.field public static final JSON_TAG_KNOX_PARENT:Ljava/lang/String; = "KNOX_VPN_PARAMETERS"

.field public static final JSON_TAG_PROFILE:Ljava/lang/String; = "profile_attribute"

.field public static final JSON_TAG_PROFILENAME:Ljava/lang/String; = "profileName"

.field public static final JSON_TAG_PROTOCOLTYPE:Ljava/lang/String; = "vpn_type"

.field public static final JSON_TAG_ROUTETYPE:Ljava/lang/String; = "vpn_route_type"

.field public static final JSON_TAG_UIDPIDSEARCH:Ljava/lang/String; = "uidpidsearch"

.field public static final JSON_TAG_UIDPIDSEARCHENABLED:Ljava/lang/String; = "uidpid_search_enabled"

.field public static final JSON_TAG_VPN_CONNECTION_TYPE:Ljava/lang/String; = "connectionType"

.field public static final KEEP_ON:Ljava/lang/String; = "keepon"

.field public static final KEEP_ON_CONNECTION_TYPE:Ljava/lang/String; = "keepon"

.field public static final KEEP_ON_ENABLED:I = 0x0

.field public static final KNOX10_CONTAINER_ID:I = 0x1

.field public static final KNOX20_MIN_CONTAINER_ID:I = 0x64

.field public static final KNOX_BLOCKING_ID:Ljava/lang/String; = "500"

.field public static final KNOX_FW:Ljava/lang/String; = "Knox_Framework"

.field public static final KNOX_STRONGSWAN_NET_ID:I = 0x64

.field public static final KNOX_TUNNEL_ID:Ljava/lang/String; = "tun"

.field public static KNOX_VPN:Ljava/lang/String; = null

.field public static final KNOX_VPN_BASE_MARK:I = 0x65

.field public static final MAX_DNS_SERVERS:I = 0x4

.field public static final MAX_KNOX_NETWORK_NET_ID:I = 0x1f4

.field public static final META_MARK_ENABLED_PROPERTY:Ljava/lang/String; = "net.vpn.markbase"

.field public static final MIGRATION_AGENT_FIXED_VERSION:Ljava/lang/String; = "4.0"

.field public static final MIGRATION_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field public static final MIGRATION_DONE:I = 0x1

.field public static final MIGRATION_ERROR:Ljava/lang/String; = "vpn_migration_error"

.field public static final MIGRATION_FAIL:I = 0x3

.field public static final MIGRATION_INVALID:I = 0x5

.field public static final MIGRATION_IN_PROCESSING:I = 0x2

.field public static final MIGRATION_LIMIT_TRYING:I = 0x3

.field public static final MIGRATION_NEED:I = 0x0

.field public static final MIGRATION_NOT_NEED:I = 0x4

.field public static final MIGRATION_STATUS:Ljava/lang/String; = "vpn_migration_status"

.field public static final MIN_KNOX_NETWORK_NET_ID:I = 0x64

.field public static final MOCANA_VPN_SERVICE_PKG:Ljava/lang/String; = "com.mocana.vpn.android"

.field public static final NON_FIPS_MODE:I = 0x0

.field public static final ON_DEMAND:Ljava/lang/String; = "ondemand"

.field public static final ON_DEMAND_CONNECTION_TYPE:Ljava/lang/String; = "ondemand"

.field public static final ON_DEMAND_ENABLED:I = 0x1

.field public static final PACKAGE_CID:I = -0x1

.field public static final PACKAGE_DELIMETER:Ljava/lang/String; = "_"

.field public static final PACKAGE_UID:I = -0x1

.field public static final PERMISSION_MIGRATION_RECEIVE:Ljava/lang/String; = "com.sec.knox.migrationagent.permission.RECEIVE_MIGRATION"

.field public static final PER_APP_VPN:I = 0x1

.field public static final PREFIX_MIGRATION_LOCATION:Ljava/lang/String; = "/data/system/knoxvpn_"

.field public static final PROFILENAME_MAX_LENGTH:I = 0x80

.field public static final PROFILE_ACTIVATED:I = 0x1

.field public static final PROFILE_DEACTIVATED:I = 0x0

.field public static final REMOVE_MEDIA_SOCKETS_FROM_INTERFACE:Ljava/lang/String; = "0"

.field public static final REMOVE_UID:Ljava/lang/String; = "0"

.field public static final ROOT_ID:I = 0x0

.field public static final STRONGSWAN_MARK:Ljava/lang/String; = "100"

.field public static final STRONSWAN_PROXY_PGK:Ljava/lang/String; = "com.samsung.sVpn"

.field public static final SYSTEM_VPN:I = 0x0

.field public static final TUN_INTERFACE_DOWN:I = 0x2

.field public static final TUN_INTERFACE_UP:I = 0x1

.field public static final UID_ADD_ALL_CONTAINER_PACKAGES:I = -0x2

.field public static final UID_PID_SEARCH_DISABLED:I = 0x0

.field public static final UID_PID_SEARCH_ENABLED:I = 0x1

.field public static final USERID_RANGE:I = 0x186a0

.field public static final VENDOR_BIND_ACTION:Ljava/lang/String; = ".BIND_SERVICE"

.field public static final VPN_DIALOG_PKG:Ljava/lang/String; = "com.android.vpndialogs"

.field public static final VPN_INTERFACE_STATUS:Ljava/lang/String; = "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

.field public static final VPN_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.KNOX_GENERIC_VPN"

.field public static final VPN_PROP_MIGRATION_VERSION:Ljava/lang/String; = "net.vpn.migration.version"

.field public static VPN_RETURN_BOOL_ERROR:Z = false

.field public static final VPN_RETURN_INT_ERROR:I = -0x1

.field public static final VPN_RETURN_INT_SUCCESS:I

.field public static final WHITE_LISTED_APPLICATION_TO_SEND_FD:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    const-string v0, "knoxvpn"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->KNOX_VPN:Ljava/lang/String;

    .line 79
    sput-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_BOOL_ERROR:Z

    .line 81
    const-string v0, "block_traffic"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    .line 303
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.android.providers.downloads"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLACK_LISTED_APPLICATION:[Ljava/lang/String;

    .line 304
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLACK_LISTED_UID:[Ljava/lang/Integer;

    .line 305
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.android.providers.downloads"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->WHITE_LISTED_APPLICATION_TO_SEND_FD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method
