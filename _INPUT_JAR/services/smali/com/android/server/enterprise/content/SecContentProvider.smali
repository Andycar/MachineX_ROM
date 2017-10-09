.class public Lcom/android/server/enterprise/content/SecContentProvider;
.super Landroid/content/ContentProvider;
.source "SecContentProvider.java"


# static fields
.field public static final ACTION_MDM_BROWSERPROVIDER_CHANGED:Ljava/lang/String; = "edm.intent.certificate.action.mdmprovider.changed"

.field private static final ADVANCEDRESTRICTION:I = 0x1

.field private static final API_KEY:Ljava/lang/String; = "API"

.field private static final APPLICATIONPERMISSIONCONTROL:I = 0x17

.field private static final AUDIT:I = 0x2

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider"

.field private static final BLUETOOTH:I = 0x3

.field private static final BLUETOOTHUTILS:I = 0x4

.field private static final BROWSER:I = 0x5

.field private static final CERTIFICATE:I = 0x6

.field private static final CONTAINERAPPLICATION:I = 0x7

.field private static final DATETIME:I = 0x18

.field private static final DEVICESETTIGNS:I = 0x8

.field private static final ENTERPRISEKNOXMANAGER:I = 0x9

.field public static final EXTRA_API_CHANGED:Ljava/lang/String; = "edm.intent.certificate.action.mdmprovider.changed.api"

.field private static final FIREWALL:I = 0xa

.field private static final KNOXCONFIGURATIONTYPE:I = 0xb

.field private static final LOCATION:I = 0xc

.field private static final PASSWORD1:I = 0xd

.field private static final PASSWORD2:I = 0xe

.field public static final PROVIDER_ADMINREMOVED:Ljava/lang/String; = "ADMIN_REMOVED"

.field public static final PROVIDER_AUDITLOGPOLICY_AUDITLOGENABLED:Ljava/lang/String; = "AuditLog/isAuditLogEnabled"

.field public static final PROVIDER_AUDITLOGPOLICY_AUTOCOMPLETE:Ljava/lang/String; = "AuditLog/AUTO_COMPLETING_DATA"

.field public static final PROVIDER_AUDITLOGPOLICY_OPENPOPUP:Ljava/lang/String; = "AuditLog/OPEN_POPUP_URL"

.field public static final PROVIDER_AUDITLOGPOLICY_OPENURL:Ljava/lang/String; = "AuditLog/OPEN_URL"

.field public static final PROVIDER_BROWSERPOLICY_AUTOFILL:Ljava/lang/String; = "BrowserPolicy/getAutoFillSetting"

.field public static final PROVIDER_BROWSERPOLICY_COOKIES:Ljava/lang/String; = "BrowserPolicy/getCookiesSetting"

.field public static final PROVIDER_BROWSERPOLICY_HTTPPROXY:Ljava/lang/String; = "BrowserPolicy/getHttpProxy"

.field public static final PROVIDER_BROWSERPOLICY_JAVASCRIPT:Ljava/lang/String; = "BrowserPolicy/getJavaScriptSetting"

.field public static final PROVIDER_BROWSERPOLICY_POPUPS:Ljava/lang/String; = "BrowserPolicy/getPopupsSetting"

.field public static final PROVIDER_CERTIFICATEPOLICY_CERTIFICATE_REMOVED:Ljava/lang/String; = "CertificatePolicy/certificateRemoved"

.field public static final PROVIDER_CERTIFICATEPOLICY_NOTIFY:Ljava/lang/String; = "CertificatePolicy/notifyCertificateFailure"

.field public static final PROVIDER_FIREWALLPOLICY_SAVEURLBLOCKEDREPORT:Ljava/lang/String; = "FirewallPolicy/saveURLBlockedReport"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterEnabled"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERLIST:Ljava/lang/String; = "FirewallPolicy/getURLFilterList"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERREPORTENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterReportEnabled"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_AUTHENTICATION:Ljava/lang/String; = "SmartCardBrowserPolicy/isAuthenticationEnabled"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_GETCLIENTCERTIFICATE:Ljava/lang/String; = "SmartCardBrowserPolicy/getClientCertificateAlias"

.field private static final RESTRICTION1:I = 0xf

.field private static final RESTRICTION2:I = 0x10

.field private static final RESTRICTION3:I = 0x11

.field private static final RESTRICTION4:I = 0x12

.field private static final ROAMING:I = 0x13

.field private static final SECURITY:I = 0x14

.field private static final SMARTCARDBROWSER:I = 0x16

.field private static final SMARTCARDEMAIL:I = 0x15

.field public static final TAG:Ljava/lang/String; = "SecContentProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field mEdmFirewallPolicy:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 131
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 132
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "AdvancedRestrictionPolicy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "AuditLog"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BluetoothPolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BluetoothUtils"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BrowserPolicy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "CertificatePolicy"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "ContainerApplicationPolicy"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DeviceSettingsPolicy"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "FirewallPolicy"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "KnoxConfigurationType"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "LocationPolicy"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "PasswordPolicy1"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "PasswordPolicy2"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy1"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy2"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy3"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy4"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RoamingPolicy"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SecurityPolicy"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SmartCardEmailPolicy"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SmartCardBrowserPolicy"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "ApplicationPermissionControlPolicy"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DateTimePolicy"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 9
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.sec.knox.provider/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2597
    .local v0, "content_uri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2598
    .local v2, "token":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v4, v5, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    .line 2599
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2600
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 2579
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2585
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2485
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2487
    .local v10, "callingUid":I
    sget-object v2, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    sparse-switch v2, :sswitch_data_13e

    .line 2573
    :cond_f
    :goto_f
    :sswitch_f
    const/4 v2, 0x0

    return-object v2

    .line 2495
    :sswitch_11
    const-string v2, "firewall_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .line 2498
    .local v13, "lFirewallPolicy":Lcom/android/server/enterprise/firewall/FirewallPolicy;
    if-eqz v13, :cond_f

    .line 2499
    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2500
    .local v9, "api":Ljava/lang/String;
    if-eqz v9, :cond_f

    const-string/jumbo v2, "saveURLBlockedReport"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2501
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v10}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->saveURLBlockedReport(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    goto :goto_f

    .line 2511
    .end local v9    # "api":Ljava/lang/String;
    .end local v13    # "lFirewallPolicy":Lcom/android/server/enterprise/firewall/FirewallPolicy;
    :sswitch_40
    const-string v2, "certificate_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 2514
    .local v12, "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-eqz v12, :cond_f

    .line 2515
    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2516
    .restart local v9    # "api":Ljava/lang/String;
    const-string v2, "fail"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 2517
    .local v11, "fail":Ljava/lang/Integer;
    if-eqz v9, :cond_f

    const-string/jumbo v2, "notifyCertificateFailure"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v11, :cond_f

    .line 2518
    const-string v2, "module"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_f

    .line 2530
    .end local v9    # "api":Ljava/lang/String;
    .end local v11    # "fail":Ljava/lang/Integer;
    .end local v12    # "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    :sswitch_78
    const-string v2, "auditlog"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 2533
    .local v1, "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-eqz v1, :cond_f

    .line 2534
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v10}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "severity"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "group"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v5, "outcome"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d4

    const/4 v5, 0x1

    :goto_b2
    const-string/jumbo v6, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "component"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_d4
    const/4 v5, 0x0

    goto :goto_b2

    .line 2548
    .end local v1    # "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    :sswitch_d6
    const-string/jumbo v2, "password_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 2551
    .local v14, "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-eqz v14, :cond_f

    .line 2552
    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2553
    .restart local v9    # "api":Ljava/lang/String;
    if-eqz v9, :cond_f

    const-string/jumbo v2, "setPwdChangeRequested"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2554
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v10}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string v3, "flag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v14, v2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(Landroid/app/enterprise/ContextInfo;I)Z

    goto/16 :goto_f

    .line 2560
    .end local v9    # "api":Ljava/lang/String;
    .end local v14    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    :sswitch_10a
    const-string/jumbo v2, "security_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 2562
    .local v15, "lSecurityPolicy":Lcom/android/server/enterprise/security/SecurityPolicy;
    if-eqz v15, :cond_f

    .line 2563
    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2564
    .restart local v9    # "api":Ljava/lang/String;
    if-eqz v9, :cond_f

    const-string/jumbo v2, "setDodBannerVisibleStatus"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2565
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v10}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string v3, "isVisible"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v15, v2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->setDodBannerVisibleStatus(Landroid/app/enterprise/ContextInfo;Z)Z

    goto/16 :goto_f

    .line 2487
    :sswitch_data_13e
    .sparse-switch
        0x2 -> :sswitch_78
        0x5 -> :sswitch_f
        0x6 -> :sswitch_40
        0xa -> :sswitch_11
        0xe -> :sswitch_d6
        0x14 -> :sswitch_10a
    .end sparse-switch
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 67
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 201
    .local v19, "callingUid":I
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v55

    .line 210
    .local v55, "userId":I
    const/16 v43, 0x0

    .line 212
    .local v43, "mCursor":Landroid/database/MatrixCursor;
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v59, "uri = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    sget-object v59, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, " selection = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v57, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v57

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v57

    packed-switch v57, :pswitch_data_3706

    .line 2479
    :cond_48
    :pswitch_48
    const/16 v57, 0x0

    :goto_4a
    return-object v57

    .line 216
    :pswitch_4b
    const-string/jumbo v57, "restriction_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 218
    .local v35, "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v35, :cond_48

    if-eqz p3, :cond_48

    .line 219
    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_373a

    :cond_61
    :goto_61
    packed-switch v57, :pswitch_data_3784

    .line 475
    const/16 v57, 0x0

    goto :goto_4a

    .line 219
    :sswitch_67
    const-string v58, "checkPackageSource"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_61

    const/16 v57, 0x0

    goto :goto_61

    :sswitch_76
    const-string v58, "isActivationLockAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_61

    const/16 v57, 0x1

    goto :goto_61

    :sswitch_85
    const-string v58, "isAirplaneModeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_61

    const/16 v57, 0x2

    goto :goto_61

    :sswitch_94
    const-string v58, "isAndroidBeamAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_61

    const/16 v57, 0x3

    goto :goto_61

    :sswitch_a3
    const-string v58, "isAudioRecordAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_61

    const/16 v57, 0x4

    goto :goto_61

    :sswitch_b2
    const-string v58, "isBackgroundDataEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_61

    const/16 v57, 0x5

    goto :goto_61

    :sswitch_c1
    const-string v58, "isBackgroundProcessLimitEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_61

    const/16 v57, 0x6

    goto :goto_61

    :sswitch_d0
    const-string v58, "isBackupAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_61

    const/16 v57, 0x7

    goto :goto_61

    :sswitch_df
    const-string v58, "isBluetoothTetheringEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_61

    const/16 v57, 0x8

    goto/16 :goto_61

    :sswitch_ef
    const-string v58, "isCameraEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_61

    const/16 v57, 0x9

    goto/16 :goto_61

    :sswitch_ff
    const-string v58, "isCellularDataAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_61

    const/16 v57, 0xa

    goto/16 :goto_61

    :sswitch_10f
    const-string v58, "isClipboardAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_61

    const/16 v57, 0xb

    goto/16 :goto_61

    :sswitch_11f
    const-string v58, "isClipboardAllowedAsUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_61

    const/16 v57, 0xc

    goto/16 :goto_61

    :sswitch_12f
    const-string v58, "isClipboardShareAllowedAsUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_61

    const/16 v57, 0xd

    goto/16 :goto_61

    :sswitch_13f
    const-string v58, "isClipboardShareAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_61

    const/16 v57, 0xe

    goto/16 :goto_61

    :sswitch_14f
    const-string v58, "isDeveloperModeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_61

    const/16 v57, 0xf

    goto/16 :goto_61

    :sswitch_15f
    const-string v58, "isFactoryResetAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_61

    const/16 v57, 0x10

    goto/16 :goto_61

    :sswitch_16f
    const-string v58, "isFastEncryptionAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_61

    const/16 v57, 0x11

    goto/16 :goto_61

    .line 221
    :pswitch_17f
    if-eqz p4, :cond_187

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_18b

    .line 222
    :cond_187
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 224
    :cond_18b
    const/16 v57, 0x0

    aget-object v57, p4, v57

    move-object/from16 v0, v35

    move/from16 v1, v55

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    move-result v48

    .line 227
    .local v48, "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "checkPackageSource"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 230
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_1c7
    move-object/from16 v57, v43

    .line 478
    goto/16 :goto_4a

    .line 235
    .end local v48    # "result":Z
    :pswitch_1cb
    if-eqz p4, :cond_1d3

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_1d7

    .line 236
    :cond_1d3
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 238
    :cond_1d7
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isActivationLockAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 242
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isActivationLockAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 245
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1c7

    .line 251
    .end local v48    # "result":Z
    :pswitch_221
    const/4 v6, 0x0

    .line 252
    .local v6, "arg":Z
    if-eqz p4, :cond_232

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_232

    .line 253
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 254
    :cond_232
    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v48

    .line 257
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isAirplaneModeAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 260
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c7

    .line 266
    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_268
    const/4 v6, 0x0

    .line 267
    .restart local v6    # "arg":Z
    if-eqz p4, :cond_279

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_279

    .line 268
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 269
    :cond_279
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAndroidBeamAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 272
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isAndroidBeamAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 275
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c7

    .line 281
    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_2ba
    const/4 v6, 0x0

    .line 282
    .restart local v6    # "arg":Z
    if-eqz p4, :cond_2cb

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_2cb

    .line 283
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 284
    :cond_2cb
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 287
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isAudioRecordAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 290
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c7

    .line 296
    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_30c
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 299
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isBackgroundDataEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 302
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c7

    .line 308
    .end local v48    # "result":Z
    :pswitch_34d
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundProcessLimitAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 311
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isBackgroundProcessLimitEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 314
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c7

    .line 320
    .end local v48    # "result":Z
    :pswitch_38e
    if-eqz p4, :cond_396

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_39a

    .line 321
    :cond_396
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 322
    :cond_39a
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackupAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 326
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isBackupAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 329
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c7

    .line 335
    .end local v48    # "result":Z
    :pswitch_3e5
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBluetoothTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 338
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isBluetoothTetheringEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 341
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c7

    .line 347
    .end local v48    # "result":Z
    :pswitch_426
    if-eqz p4, :cond_42e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_432

    .line 348
    :cond_42e
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 349
    :cond_432
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 352
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isCameraEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 355
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c7

    .line 361
    .end local v48    # "result":Z
    :pswitch_47d
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 364
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isCellularDataAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 367
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c7

    .line 373
    .end local v48    # "result":Z
    :pswitch_4be
    if-eqz p4, :cond_4c6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_50b

    .line 375
    :cond_4c6
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 382
    .restart local v48    # "result":Z
    :goto_4db
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isClipboardAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 385
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c7

    .line 377
    .end local v48    # "result":Z
    :cond_50b
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    goto :goto_4db

    .line 391
    .end local v48    # "result":Z
    :pswitch_527
    if-eqz p4, :cond_535

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_539

    .line 392
    :cond_535
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 393
    :cond_539
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v57

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, v35

    move/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    move-result v48

    .line 394
    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "RESTRICTIONPOLICY_CLIPBOARDALLOWEDASUSER_METHOD return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isClipboardAllowedAsUser"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 399
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c7

    .line 406
    .end local v48    # "result":Z
    :pswitch_59f
    if-eqz p4, :cond_5a7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_5ab

    .line 407
    :cond_5a7
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 408
    :cond_5ab
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v57

    move-object/from16 v0, v35

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    move-result v48

    .line 411
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isClipboardShareAllowedAsUser"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 414
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c7

    .line 420
    .end local v48    # "result":Z
    :pswitch_5eb
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 423
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isClipboardShareAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 426
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c7

    .line 432
    .end local v48    # "result":Z
    :pswitch_62c
    const/4 v6, 0x0

    .line 433
    .restart local v6    # "arg":Z
    if-eqz p4, :cond_63d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_63d

    .line 434
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 435
    :cond_63d
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDeveloperModeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 438
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isDeveloperModeAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 441
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v57, v43

    .line 446
    goto/16 :goto_4a

    .line 448
    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_680
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 451
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isFactoryResetAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 454
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c7

    .line 460
    .end local v48    # "result":Z
    :pswitch_6c1
    if-eqz p4, :cond_6d3

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_6d3

    .line 461
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 463
    :cond_6d3
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFastEncryptionAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 464
    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isFastEncryptionAllowed return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isFastEncryptionAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 469
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c7

    .line 482
    .end local v35    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v48    # "result":Z
    :pswitch_73a
    const-string/jumbo v57, "restriction_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 484
    .restart local v35    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v35, :cond_48

    if-eqz p3, :cond_48

    .line 485
    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_37ac

    :cond_750
    :goto_750
    packed-switch v57, :pswitch_data_37f2

    .line 757
    const-string v57, "SecContentProvider"

    const-string/jumbo v58, "return null"

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 485
    :sswitch_75f
    const-string v58, "isFirmwareAutoUpdateAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_750

    const/16 v57, 0x0

    goto :goto_750

    :sswitch_76e
    const-string v58, "isFirmwareRecoveryAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_750

    const/16 v57, 0x1

    goto :goto_750

    :sswitch_77d
    const-string v58, "isGoogleAccountsAutoSyncAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_750

    const/16 v57, 0x2

    goto :goto_750

    :sswitch_78c
    const-string v58, "isGoogleCrashReportedAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_750

    const/16 v57, 0x3

    goto :goto_750

    :sswitch_79b
    const-string v58, "isHeadPhoneEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_750

    const/16 v57, 0x4

    goto :goto_750

    :sswitch_7aa
    const-string v58, "isHomeKeyEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_750

    const/16 v57, 0x5

    goto :goto_750

    :sswitch_7b9
    const-string v58, "isKillingActivitiesOnLeaveAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_750

    const/16 v57, 0x6

    goto :goto_750

    :sswitch_7c8
    const-string v58, "isLockScreenEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_750

    const/16 v57, 0x7

    goto/16 :goto_750

    :sswitch_7d8
    const-string v58, "isLockScreenViewAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_750

    const/16 v57, 0x8

    goto/16 :goto_750

    :sswitch_7e8
    const-string v58, "isMicrophoneEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_750

    const/16 v57, 0x9

    goto/16 :goto_750

    :sswitch_7f8
    const-string v58, "isMicrophoneEnabledAsUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_750

    const/16 v57, 0xa

    goto/16 :goto_750

    :sswitch_808
    const-string v58, "isMockLocationEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_750

    const/16 v57, 0xb

    goto/16 :goto_750

    :sswitch_818
    const-string v58, "isNewAdminInstallationEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_750

    const/16 v57, 0xc

    goto/16 :goto_750

    :sswitch_828
    const-string v58, "isNFCEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_750

    const/16 v57, 0xd

    goto/16 :goto_750

    :sswitch_838
    const-string v58, "isNFCEnabledWithMsg"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_750

    const/16 v57, 0xe

    goto/16 :goto_750

    :sswitch_848
    const-string v58, "isNonMarketAppAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_750

    const/16 v57, 0xf

    goto/16 :goto_750

    :sswitch_858
    const-string v58, "isNonTrustedAppInstallBlocked"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_750

    const/16 v57, 0x10

    goto/16 :goto_750

    .line 487
    :pswitch_868
    if-eqz p4, :cond_870

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_874

    .line 488
    :cond_870
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 490
    :cond_874
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareAutoUpdateAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 494
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isFirmwareAutoUpdateAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 497
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_8bd
    move-object/from16 v57, v43

    .line 761
    goto/16 :goto_4a

    .line 503
    .end local v48    # "result":Z
    :pswitch_8c1
    if-eqz p4, :cond_8c9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_8cd

    .line 504
    :cond_8c9
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 506
    :cond_8cd
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 510
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isFirmwareRecoveryAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 513
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_8bd

    .line 519
    .end local v48    # "result":Z
    :pswitch_917
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 522
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isGoogleAccountsAutoSyncAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 525
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8bd

    .line 531
    .end local v48    # "result":Z
    :pswitch_958
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 534
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isGoogleCrashReportedAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 537
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8bd

    .line 543
    .end local v48    # "result":Z
    :pswitch_999
    if-eqz p4, :cond_9a1

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_9a5

    .line 544
    :cond_9a1
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 545
    :cond_9a5
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 549
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isHeadPhoneEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 552
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8bd

    .line 558
    .end local v48    # "result":Z
    :pswitch_9f0
    const/4 v6, 0x0

    .line 559
    .restart local v6    # "arg":Z
    if-eqz p4, :cond_a01

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_a01

    .line 560
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 561
    :cond_a01
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 564
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isHomeKeyEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 567
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8bd

    .line 573
    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_a42
    if-nez p4, :cond_aaf

    .line 574
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 575
    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isKillingActivitiesOnLeaveAllowed return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, " callingUid : "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :goto_a7f
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isKillingActivitiesOnLeaveAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 585
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8bd

    .line 578
    .end local v48    # "result":Z
    :cond_aaf
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 579
    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isKillingActivitiesOnLeaveAllowed return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, " userid : "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7f

    .line 591
    .end local v48    # "result":Z
    :pswitch_af3
    if-eqz p4, :cond_afb

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_aff

    .line 592
    :cond_afb
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 593
    :cond_aff
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 597
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isLockScreenEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 600
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8bd

    .line 606
    .end local v48    # "result":Z
    :pswitch_b4a
    if-eqz p4, :cond_b58

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_b5c

    .line 607
    :cond_b58
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 608
    :cond_b5c
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_bd3

    .line 609
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v48

    .line 616
    .restart local v48    # "result":Z
    :goto_b87
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isLockScreenViewAllowed return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isLockScreenViewAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 621
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8bd

    .line 613
    .end local v48    # "result":Z
    :cond_bd3
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v48

    .restart local v48    # "result":Z
    goto :goto_b87

    .line 627
    .end local v48    # "result":Z
    :pswitch_bef
    if-eqz p4, :cond_bfd

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_c01

    .line 628
    :cond_bfd
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 629
    :cond_c01
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_c78

    .line 630
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 637
    .restart local v48    # "result":Z
    :goto_c2c
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isMicrophoneEnabled return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isMicrophoneEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 642
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8bd

    .line 634
    .end local v48    # "result":Z
    :cond_c78
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    goto :goto_c2c

    .line 648
    .end local v48    # "result":Z
    :pswitch_c94
    if-eqz p4, :cond_ca2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_ca6

    .line 649
    :cond_ca2
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 650
    :cond_ca6
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v57

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, v35

    move/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v48

    .line 652
    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isMicrophoneEnabledAsUser return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isMicrophoneEnabledAsUser"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 657
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8bd

    .line 664
    .end local v48    # "result":Z
    :pswitch_d0c
    if-nez p4, :cond_d87

    .line 665
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 666
    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "callingUid = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :goto_d3b
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isMockLocationEnabled return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isMockLocationEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 677
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8bd

    .line 669
    .end local v48    # "result":Z
    :cond_d87
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 670
    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "callingUid = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d3b

    .line 683
    .end local v48    # "result":Z
    :pswitch_dbe
    if-eqz p4, :cond_dc6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_dca

    .line 684
    :cond_dc6
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 685
    :cond_dca
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 689
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isNewAdminInstallationEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 692
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8bd

    .line 698
    .end local v48    # "result":Z
    :pswitch_e15
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabled()Z

    move-result v48

    .line 701
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isNFCEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 704
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8bd

    .line 710
    .end local v48    # "result":Z
    :pswitch_e49
    const/16 v50, 0x0

    .line 711
    .local v50, "showMsg":Z
    if-eqz p4, :cond_e59

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_e93

    .line 712
    :cond_e59
    const/16 v50, 0x0

    .line 716
    :goto_e5b
    move-object/from16 v0, v35

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabledWithMsg(Z)Z

    move-result v48

    .line 719
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isNFCEnabledWithMsg"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 722
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8bd

    .line 714
    .end local v48    # "result":Z
    :cond_e93
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v50

    goto :goto_e5b

    .line 728
    .end local v50    # "showMsg":Z
    :pswitch_e9c
    if-eqz p4, :cond_ee3

    .line 729
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 736
    .restart local v48    # "result":Z
    :goto_eb3
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isNonMarketAppAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 739
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8bd

    .line 732
    .end local v48    # "result":Z
    :cond_ee3
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    goto :goto_eb3

    .line 745
    .end local v48    # "result":Z
    :pswitch_ef5
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonTrustedAppInstallBlocked(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 748
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isNonTrustedAppInstallBlocked"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 751
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8bd

    .line 765
    .end local v35    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v48    # "result":Z
    :pswitch_f36
    const-string/jumbo v57, "restriction_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 767
    .restart local v35    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v35, :cond_48

    if-eqz p3, :cond_48

    .line 768
    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_3818

    :cond_f4c
    :goto_f4c
    packed-switch v57, :pswitch_data_3852

    .line 976
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 768
    :sswitch_f53
    const-string v58, "isSettingsChangesAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_f4c

    const/16 v57, 0x0

    goto :goto_f4c

    :sswitch_f62
    const-string v58, "isOdeTrustedBootVerificationEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_f4c

    const/16 v57, 0x1

    goto :goto_f4c

    :sswitch_f71
    const-string v58, "isOTAUpgradeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_f4c

    const/16 v57, 0x2

    goto :goto_f4c

    :sswitch_f80
    const-string v58, "isPowerOffAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_f4c

    const/16 v57, 0x3

    goto :goto_f4c

    :sswitch_f8f
    const-string v58, "isSafeModeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_f4c

    const/16 v57, 0x4

    goto :goto_f4c

    :sswitch_f9e
    const-string v58, "isSBeamAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_f4c

    const/16 v57, 0x5

    goto :goto_f4c

    :sswitch_fad
    const-string v58, "isScreenCaptureEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_f4c

    const/16 v57, 0x6

    goto :goto_f4c

    :sswitch_fbc
    const-string v58, "isSdCardEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_f4c

    const/16 v57, 0x7

    goto :goto_f4c

    :sswitch_fcb
    const-string v58, "isSDCardMoveAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_f4c

    const/16 v57, 0x8

    goto/16 :goto_f4c

    :sswitch_fdb
    const-string v58, "isSmartClipModeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_f4c

    const/16 v57, 0x9

    goto/16 :goto_f4c

    :sswitch_feb
    const-string v58, "isStatusBarExpansionallowedAsUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_f4c

    const/16 v57, 0xa

    goto/16 :goto_f4c

    :sswitch_ffb
    const-string v58, "isStopSystemAppAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_f4c

    const/16 v57, 0xb

    goto/16 :goto_f4c

    :sswitch_100b
    const-string v58, "isSVoiceAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_f4c

    const/16 v57, 0xc

    goto/16 :goto_f4c

    :sswitch_101b
    const-string v58, "isUsbDebuggingEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_f4c

    const/16 v57, 0xd

    goto/16 :goto_f4c

    .line 770
    :pswitch_102b
    if-eqz p4, :cond_1039

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_103d

    .line 771
    :cond_1039
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 772
    :cond_103d
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_109a

    .line 773
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 782
    .restart local v48    # "result":Z
    :goto_1068
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSettingsChangesAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 785
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_1096
    move-object/from16 v57, v43

    .line 979
    goto/16 :goto_4a

    .line 777
    .end local v48    # "result":Z
    :cond_109a
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .restart local v48    # "result":Z
    goto :goto_1068

    .line 791
    .end local v48    # "result":Z
    :pswitch_10b6
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isODETrustedBootVerificationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 794
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isOdeTrustedBootVerificationEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 797
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1096

    .line 803
    .end local v48    # "result":Z
    :pswitch_10f6
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 806
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isOTAUpgradeAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 809
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v57, v43

    .line 814
    goto/16 :goto_4a

    .line 816
    .end local v48    # "result":Z
    :pswitch_1139
    const/4 v6, 0x0

    .line 817
    .restart local v6    # "arg":Z
    if-eqz p4, :cond_114a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_114a

    .line 818
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 820
    :cond_114a
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerOffAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 823
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isPowerOffAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 826
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1096

    .line 832
    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_118b
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 835
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSafeModeAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 838
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1096

    .line 844
    .end local v48    # "result":Z
    :pswitch_11cc
    const/4 v6, 0x0

    .line 845
    .restart local v6    # "arg":Z
    if-eqz p4, :cond_11dd

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_11dd

    .line 846
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 847
    :cond_11dd
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSBeamAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 850
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSBeamAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 853
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1096

    .line 859
    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_121e
    if-eqz p4, :cond_1226

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_122a

    .line 860
    :cond_1226
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 861
    :cond_122a
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 865
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isScreenCaptureEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 868
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1096

    .line 874
    .end local v48    # "result":Z
    :pswitch_1275
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSdCardEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 877
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSdCardEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 880
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1096

    .line 886
    .end local v48    # "result":Z
    :pswitch_12b6
    if-eqz p4, :cond_12be

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_12c2

    .line 887
    :cond_12be
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 888
    :cond_12c2
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardMoveAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 892
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSDCardMoveAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 895
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1096

    .line 901
    .end local v48    # "result":Z
    :pswitch_130d
    const/4 v6, 0x0

    .line 902
    .restart local v6    # "arg":Z
    if-eqz p4, :cond_131e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_131e

    .line 903
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 904
    :cond_131e
    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    move-result v48

    .line 907
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSmartClipModeAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 910
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1096

    .line 916
    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_1354
    const/4 v6, 0x0

    .line 917
    .restart local v6    # "arg":Z
    if-eqz p4, :cond_1365

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_1365

    .line 918
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 919
    :cond_1365
    move-object/from16 v0, v35

    move/from16 v1, v55

    invoke-virtual {v0, v6, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v48

    .line 922
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isStatusBarExpansionallowedAsUser"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 925
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1096

    .line 931
    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_139d
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStopSystemAppAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 934
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isStopSystemAppAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 937
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1096

    .line 943
    .end local v48    # "result":Z
    :pswitch_13de
    const/4 v6, 0x0

    .line 944
    .restart local v6    # "arg":Z
    move/from16 v53, v19

    .line 945
    .local v53, "uid":I
    if-eqz p4, :cond_1462

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_1462

    .line 946
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 952
    :cond_13f7
    :goto_13f7
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 953
    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isSVoiceAllowed result = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, " uid = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSVoiceAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 958
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1096

    .line 948
    .end local v48    # "result":Z
    :cond_1462
    if-eqz p4, :cond_13f7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_13f7

    .line 949
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 950
    const/16 v57, 0x1

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v53

    goto/16 :goto_13f7

    .line 964
    .end local v6    # "arg":Z
    .end local v53    # "uid":I
    :pswitch_1482
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbDebuggingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 967
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isUsbDebuggingEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 970
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1096

    .line 983
    .end local v35    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v48    # "result":Z
    :pswitch_14c3
    const-string/jumbo v57, "restriction_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 985
    .restart local v35    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v35, :cond_48

    if-eqz p3, :cond_48

    .line 986
    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_3872

    :cond_14d9
    :goto_14d9
    packed-switch v57, :pswitch_data_38a8

    .line 1176
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 986
    :sswitch_14e0
    const-string v58, "isUsbHostStorageAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_14d9

    const/16 v57, 0x0

    goto :goto_14d9

    :sswitch_14ef
    const-string v58, "isUsbMassStorageEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_14d9

    const/16 v57, 0x1

    goto :goto_14d9

    :sswitch_14fe
    const-string v58, "isUsbMediaPlayerAvailable"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_14d9

    const/16 v57, 0x2

    goto :goto_14d9

    :sswitch_150d
    const-string v58, "isUsbTetheringEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_14d9

    const/16 v57, 0x3

    goto :goto_14d9

    :sswitch_151c
    const-string v58, "isUserMobileDataLimitAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_14d9

    const/16 v57, 0x4

    goto :goto_14d9

    :sswitch_152b
    const-string v58, "isUseSecureKeypadEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_14d9

    const/16 v57, 0x5

    goto :goto_14d9

    :sswitch_153a
    const-string v58, "isVideoRecordAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_14d9

    const/16 v57, 0x6

    goto :goto_14d9

    :sswitch_1549
    const-string v58, "isVpnAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_14d9

    const/16 v57, 0x7

    goto :goto_14d9

    :sswitch_1558
    const-string v58, "isWallpaperChangeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_14d9

    const/16 v57, 0x8

    goto/16 :goto_14d9

    :sswitch_1568
    const-string v58, "isWifiDirectAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_14d9

    const/16 v57, 0x9

    goto/16 :goto_14d9

    :sswitch_1578
    const-string v58, "isWifiTetheringEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_14d9

    const/16 v57, 0xa

    goto/16 :goto_14d9

    :sswitch_1588
    const-string v58, "isSDCardWriteAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_14d9

    const/16 v57, 0xb

    goto/16 :goto_14d9

    :sswitch_1598
    const-string v58, "isWifiEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_14d9

    const/16 v57, 0xc

    goto/16 :goto_14d9

    .line 988
    :pswitch_15a8
    const/4 v6, 0x0

    .line 989
    .restart local v6    # "arg":Z
    if-eqz p4, :cond_15b9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_15b9

    .line 990
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 991
    :cond_15b9
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 995
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isUsbHostStorageAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 998
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v6    # "arg":Z
    :goto_15f8
    move-object/from16 v57, v43

    .line 1179
    goto/16 :goto_4a

    .line 1004
    .end local v48    # "result":Z
    :pswitch_15fc
    if-eqz p4, :cond_1604

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_1608

    .line 1005
    :cond_1604
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1006
    :cond_1608
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMassStorageEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 1010
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isUsbMassStorageEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1013
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_15f8

    .line 1019
    .end local v48    # "result":Z
    :pswitch_1652
    if-eqz p4, :cond_165a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_165e

    .line 1020
    :cond_165a
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1021
    :cond_165e
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMediaPlayerAvailable(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 1025
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isUsbMediaPlayerAvailable"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1028
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15f8

    .line 1034
    .end local v48    # "result":Z
    :pswitch_16a9
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 1038
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isUsbTetheringEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1041
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15f8

    .line 1047
    .end local v48    # "result":Z
    :pswitch_16ea
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUserMobileDataLimitAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 1051
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isUserMobileDataLimitAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1054
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15f8

    .line 1060
    .end local v48    # "result":Z
    :pswitch_172b
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUseSecureKeypadEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 1064
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isUseSecureKeypadEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1067
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15f8

    .line 1073
    .end local v48    # "result":Z
    :pswitch_176c
    const/4 v6, 0x0

    .line 1074
    .restart local v6    # "arg":Z
    if-eqz p4, :cond_177d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_177d

    .line 1075
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1076
    :cond_177d
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVideoRecordAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 1080
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isVideoRecordAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1083
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15f8

    .line 1089
    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_17be
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVpnAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 1093
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isVpnAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1096
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15f8

    .line 1102
    .end local v48    # "result":Z
    :pswitch_17ff
    const/4 v6, 0x0

    .line 1103
    .restart local v6    # "arg":Z
    if-eqz p4, :cond_1810

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_1810

    .line 1104
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1105
    :cond_1810
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 1109
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isWallpaperChangeAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1112
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15f8

    .line 1118
    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_1851
    const/4 v6, 0x0

    .line 1119
    .restart local v6    # "arg":Z
    if-eqz p4, :cond_1862

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-lez v57, :cond_1862

    .line 1120
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1121
    :cond_1862
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 1125
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isWifiDirectAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1128
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15f8

    .line 1134
    .end local v6    # "arg":Z
    .end local v48    # "result":Z
    :pswitch_18a3
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 1138
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isWifiTetheringEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1141
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15f8

    .line 1147
    .end local v48    # "result":Z
    :pswitch_18e4
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 1151
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSDCardWriteAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1154
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15f8

    .line 1159
    .end local v48    # "result":Z
    :pswitch_1925
    const-string/jumbo v57, "wifi_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 1161
    .local v39, "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-eqz v39, :cond_197b

    .line 1162
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v39

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 1164
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isWifiEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1167
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15f8

    .line 1172
    .end local v48    # "result":Z
    :cond_197b
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1183
    .end local v35    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v39    # "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    :pswitch_197f
    const-string v57, "certificate_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 1185
    .local v30, "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-eqz v30, :cond_48

    if-eqz p3, :cond_48

    .line 1186
    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_38c6

    :cond_1994
    :goto_1994
    packed-switch v57, :pswitch_data_38f8

    :cond_1997
    :goto_1997
    move-object/from16 v57, v43

    .line 1347
    goto/16 :goto_4a

    .line 1186
    :sswitch_199b
    const-string v58, "isCaCertificateTrusted"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1994

    const/16 v57, 0x0

    goto :goto_1994

    :sswitch_19aa
    const-string v58, "isCaCertificateDisabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1994

    const/16 v57, 0x1

    goto :goto_1994

    :sswitch_19b9
    const-string v58, "isUserRemoveCertificatesAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1994

    const/16 v57, 0x2

    goto :goto_1994

    :sswitch_19c8
    const-string v58, "isSignatureIdentityInformationEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1994

    const/16 v57, 0x3

    goto :goto_1994

    :sswitch_19d7
    const-string v58, "getIdentitiesFromSignatures"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1994

    const/16 v57, 0x4

    goto :goto_1994

    :sswitch_19e6
    const-string/jumbo v58, "notifyCertificateFailure"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1994

    const/16 v57, 0x5

    goto :goto_1994

    :sswitch_19f6
    const-string v58, "isRevocationCheckEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1994

    const/16 v57, 0x6

    goto :goto_1994

    :sswitch_1a05
    const-string v58, "isOcspCheckEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1994

    const/16 v57, 0x7

    goto :goto_1994

    :sswitch_1a14
    const-string v58, "isCertificateValidationAtInstallEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1994

    const/16 v57, 0x8

    goto/16 :goto_1994

    :sswitch_1a24
    const-string/jumbo v58, "validateCertificateAtInstall"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1994

    const/16 v57, 0x9

    goto/16 :goto_1994

    :sswitch_1a35
    const-string/jumbo v58, "validateChainAtInstall"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1994

    const/16 v57, 0xa

    goto/16 :goto_1994

    :sswitch_1a46
    const-string v58, "isPrivateKeyApplicationPermitted"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1994

    const/16 v57, 0xb

    goto/16 :goto_1994

    .line 1188
    :pswitch_1a56
    if-eqz p4, :cond_1a64

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-gt v0, v1, :cond_1a68

    .line 1189
    :cond_1a64
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1190
    :cond_1a68
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/app/enterprise/CertificateInfo;

    const/16 v59, 0x1

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    move-object/from16 v2, v57

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateTrusted(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/CertificateInfo;Z)Z

    move-result v48

    .line 1194
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isCaCertificateTrusted"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1198
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1997

    .line 1203
    .end local v48    # "result":Z
    :pswitch_1abf
    if-eqz p4, :cond_1ac7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_1acb

    .line 1204
    :cond_1ac7
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1205
    :cond_1acb
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateDisabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v48

    .line 1208
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isCaCertificateDisabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1212
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1997

    .line 1217
    .end local v48    # "result":Z
    :pswitch_1b12
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 1220
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isUserRemoveCertificatesAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1224
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1997

    .line 1229
    .end local v48    # "result":Z
    :pswitch_1b53
    if-eqz p4, :cond_1b5b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_1b5f

    .line 1230
    :cond_1b5b
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1231
    :cond_1b5f
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    .line 1234
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSignatureIdentityInformationEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1238
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1997

    .line 1243
    .end local v48    # "result":Z
    :pswitch_1baa
    if-eqz p4, :cond_1bb2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_1bb6

    .line 1244
    :cond_1bb2
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1245
    :cond_1bb6
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, [Landroid/content/pm/Signature;

    check-cast v57, [Landroid/content/pm/Signature;

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getIdentitiesFromSignatures(Landroid/app/enterprise/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v42

    .line 1248
    .local v42, "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getIdentitiesFromSignatures"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1252
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    if-eqz v42, :cond_1997

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->isEmpty()Z

    move-result v57

    if-nez v57, :cond_1997

    .line 1254
    invoke-interface/range {v42 .. v42}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_1bf8
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_1997

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, [Ljava/lang/String;

    .line 1255
    .local v56, "value":[Ljava/lang/String;
    move-object/from16 v7, v56

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v40, v0

    .local v40, "len$":I
    const/16 v24, 0x0

    .local v24, "i$":I
    :goto_1c0b
    move/from16 v0, v24

    move/from16 v1, v40

    if-ge v0, v1, :cond_1bf8

    aget-object v25, v7, v24

    .line 1256
    .local v25, "internalValue":Ljava/lang/String;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v25, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1255
    add-int/lit8 v24, v24, 0x1

    goto :goto_1c0b

    .line 1264
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v24    # "i$":I
    .end local v25    # "internalValue":Ljava/lang/String;
    .end local v40    # "len$":I
    .end local v42    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v56    # "value":[Ljava/lang/String;
    :pswitch_1c29
    if-eqz p4, :cond_1c37

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-gt v0, v1, :cond_1c3b

    .line 1265
    :cond_1c37
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1266
    :cond_1c3b
    const/16 v57, 0x0

    aget-object v57, p4, v57

    const/16 v58, 0x1

    aget-object v58, p4, v58

    const/16 v59, 0x2

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1268
    const/16 v43, 0x0

    .line 1269
    goto/16 :goto_1997

    .line 1271
    :pswitch_1c5a
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 1274
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isRevocationCheckEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1278
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1997

    .line 1283
    .end local v48    # "result":Z
    :pswitch_1c9b
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isOcspCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 1286
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isOcspCheckEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1290
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1997

    .line 1295
    .end local v48    # "result":Z
    :pswitch_1cdc
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 1298
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isCertificateValidationAtInstallEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1302
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1997

    .line 1307
    .end local v48    # "result":Z
    :pswitch_1d1d
    if-eqz p4, :cond_1d25

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_1d29

    .line 1308
    :cond_1d25
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1309
    :cond_1d29
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/app/enterprise/CertificateInfo;

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstall(Landroid/app/enterprise/CertificateInfo;)I

    move-result v47

    .line 1311
    .local v47, "res":I
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string/jumbo v59, "validateCertificateAtInstall"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1315
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1997

    .line 1320
    .end local v47    # "res":I
    :pswitch_1d6c
    if-eqz p4, :cond_1d74

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_1d78

    .line 1321
    :cond_1d74
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1322
    :cond_1d78
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/util/List;

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateChainAtInstall(Ljava/util/List;)I

    move-result v47

    .line 1324
    .restart local v47    # "res":I
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string/jumbo v59, "validateChainAtInstall"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1328
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1997

    .line 1333
    .end local v47    # "res":I
    :pswitch_1dbb
    if-eqz p4, :cond_1dc9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-gt v0, v1, :cond_1dcd

    .line 1334
    :cond_1dc9
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1335
    :cond_1dcd
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    const/16 v59, 0x1

    aget-object v59, p4, v59

    const/16 v60, 0x2

    aget-object v60, p4, v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    move-object/from16 v3, v59

    move/from16 v4, v60

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isPrivateKeyApplicationPermitted(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v52

    .line 1338
    .local v52, "stringResult":Ljava/lang/String;
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isPrivateKeyApplicationPermitted"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1342
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v52, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1997

    .line 1351
    .end local v30    # "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .end local v52    # "stringResult":Ljava/lang/String;
    :pswitch_1e20
    const-string/jumbo v57, "password_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 1353
    .local v34, "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-eqz v34, :cond_48

    if-eqz p3, :cond_48

    .line 1354
    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_3914

    :cond_1e36
    :goto_1e36
    packed-switch v57, :pswitch_data_3946

    .line 1544
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1354
    :sswitch_1e3d
    const-string v58, "getForbiddenStrings"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1e36

    const/16 v57, 0x0

    goto :goto_1e36

    :sswitch_1e4c
    const-string v58, "getMaximumCharacterOccurences"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1e36

    const/16 v57, 0x1

    goto :goto_1e36

    :sswitch_1e5b
    const-string v58, "getMaximumCharacterSequenceLength"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1e36

    const/16 v57, 0x2

    goto :goto_1e36

    :sswitch_1e6a
    const-string v58, "getMaximumNumericSequenceLength"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1e36

    const/16 v57, 0x3

    goto :goto_1e36

    :sswitch_1e79
    const-string v58, "getMinimumCharacterChangeLength"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1e36

    const/16 v57, 0x4

    goto :goto_1e36

    :sswitch_1e88
    const-string v58, "getPasswordChangeTimeout"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1e36

    const/16 v57, 0x5

    goto :goto_1e36

    :sswitch_1e97
    const-string v58, "getRequiredPwdPatternRestrictions"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1e36

    const/16 v57, 0x6

    goto :goto_1e36

    :sswitch_1ea6
    const-string v58, "hasForbiddenCharacterSequence"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1e36

    const/16 v57, 0x7

    goto :goto_1e36

    :sswitch_1eb5
    const-string v58, "hasForbiddenData"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1e36

    const/16 v57, 0x8

    goto/16 :goto_1e36

    :sswitch_1ec5
    const-string v58, "hasForbiddenNumericSequence"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1e36

    const/16 v57, 0x9

    goto/16 :goto_1e36

    :sswitch_1ed5
    const-string v58, "hasForbiddenStringDistance"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1e36

    const/16 v57, 0xa

    goto/16 :goto_1e36

    :sswitch_1ee5
    const-string v58, "hasMaxRepeatedCharacters"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_1e36

    const/16 v57, 0xb

    goto/16 :goto_1e36

    .line 1356
    :pswitch_1ef5
    if-eqz p4, :cond_1efd

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_1f01

    .line 1357
    :cond_1efd
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1358
    :cond_1f01
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getForbiddenStrings(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v41

    .line 1362
    .local v41, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getForbiddenStrings"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1366
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    if-eqz v41, :cond_1f9e

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->isEmpty()Z

    move-result v57

    if-nez v57, :cond_1f9e

    .line 1369
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :goto_1f3f
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_1f9e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/lang/String;

    .line 1370
    .local v56, "value":Ljava/lang/String;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v56, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1f3f

    .line 1378
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v41    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v56    # "value":Ljava/lang/String;
    :pswitch_1f5f
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    .line 1382
    .restart local v47    # "res":I
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getMaximumCharacterOccurences"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1386
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v47    # "res":I
    :cond_1f9e
    :goto_1f9e
    move-object/from16 v57, v43

    .line 1547
    goto/16 :goto_4a

    .line 1392
    :pswitch_1fa2
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    .line 1396
    .restart local v47    # "res":I
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getMaximumCharacterSequenceLength"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1400
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1f9e

    .line 1406
    .end local v47    # "res":I
    :pswitch_1fe2
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    .line 1410
    .restart local v47    # "res":I
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getMaximumNumericSequenceLength"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1414
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f9e

    .line 1420
    .end local v47    # "res":I
    :pswitch_2023
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    .line 1424
    .restart local v47    # "res":I
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getMinimumCharacterChangeLength"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1428
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f9e

    .line 1434
    .end local v47    # "res":I
    :pswitch_2064
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordChangeTimeout(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    .line 1438
    .restart local v47    # "res":I
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getPasswordChangeTimeout"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1442
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f9e

    .line 1448
    .end local v47    # "res":I
    :pswitch_20a5
    if-eqz p4, :cond_20ad

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_20b1

    .line 1449
    :cond_20ad
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1450
    :cond_20b1
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getRequiredPwdPatternRestrictions(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;

    move-result-object v51

    .line 1454
    .local v51, "str":Ljava/lang/String;
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getRequiredPwdPatternRestrictions"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1458
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v51, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f9e

    .line 1464
    .end local v51    # "str":Ljava/lang/String;
    :pswitch_20f8
    if-eqz p4, :cond_2100

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_2104

    .line 1465
    :cond_2100
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1466
    :cond_2104
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenCharacterSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v48

    .line 1470
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "hasForbiddenCharacterSequence"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1474
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f9e

    .line 1480
    .end local v48    # "result":Z
    :pswitch_214b
    if-eqz p4, :cond_2153

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_2157

    .line 1481
    :cond_2153
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1482
    :cond_2157
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v48

    .line 1486
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "hasForbiddenData"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1490
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f9e

    .line 1496
    .end local v48    # "result":Z
    :pswitch_219e
    if-eqz p4, :cond_21a6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_21aa

    .line 1497
    :cond_21a6
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1498
    :cond_21aa
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenNumericSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v48

    .line 1502
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "hasForbiddenNumericSequence"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1506
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f9e

    .line 1512
    .end local v48    # "result":Z
    :pswitch_21f1
    if-eqz p4, :cond_21ff

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-gt v0, v1, :cond_2203

    .line 1513
    :cond_21ff
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1514
    :cond_2203
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    const/16 v59, 0x1

    aget-object v59, p4, v59

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    move-object/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenStringDistance(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v48

    .line 1518
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "hasForbiddenStringDistance"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1522
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f9e

    .line 1528
    .end local v48    # "result":Z
    :pswitch_2250
    if-eqz p4, :cond_2258

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_225c

    .line 1529
    :cond_2258
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1530
    :cond_225c
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasMaxRepeatedCharacters(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v48

    .line 1534
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "hasMaxRepeatedCharacters"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1538
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f9e

    .line 1551
    .end local v34    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    .end local v48    # "result":Z
    :pswitch_22a3
    const-string/jumbo v57, "password_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 1553
    .restart local v34    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-eqz v34, :cond_48

    if-eqz p3, :cond_48

    .line 1554
    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_3962

    :cond_22b9
    :goto_22b9
    packed-switch v57, :pswitch_data_3988

    .line 1723
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1554
    :sswitch_22c0
    const-string v58, "isBiometricAuthenticationEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_22b9

    const/16 v57, 0x0

    goto :goto_22b9

    :sswitch_22cf
    const-string v58, "isChangeRequested"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_22b9

    const/16 v57, 0x1

    goto :goto_22b9

    :sswitch_22de
    const-string v58, "isExternalStorageForFailedPasswordsWipeExcluded"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_22b9

    const/16 v57, 0x2

    goto :goto_22b9

    :sswitch_22ed
    const-string v58, "isPasswordPatternMatched"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_22b9

    const/16 v57, 0x3

    goto :goto_22b9

    :sswitch_22fc
    const-string v58, "isPasswordVisibilityEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_22b9

    const/16 v57, 0x4

    goto :goto_22b9

    :sswitch_230b
    const-string v58, "isPasswordVisibilityEnabledAsUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_22b9

    const/16 v57, 0x5

    goto :goto_22b9

    :sswitch_231a
    const-string v58, "getPasswordLockDelay"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_22b9

    const/16 v57, 0x6

    goto :goto_22b9

    :sswitch_2329
    const-string v58, "getMaximumFailedPasswordsForDisable"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_22b9

    const/16 v57, 0x7

    goto :goto_22b9

    :sswitch_2338
    const-string v58, "getMaximumFailedPasswordsForWipe"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_22b9

    const/16 v57, 0x8

    goto/16 :goto_22b9

    .line 1556
    :pswitch_2348
    if-eqz p4, :cond_2350

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_2354

    .line 1557
    :cond_2350
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1558
    :cond_2354
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v48

    .line 1562
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isBiometricAuthenticationEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1566
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v48    # "result":Z
    :goto_239d
    move-object/from16 v57, v43

    .line 1726
    goto/16 :goto_4a

    .line 1572
    :pswitch_23a1
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequested(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    .line 1576
    .restart local v47    # "res":I
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isChangeRequested"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1580
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_239d

    .line 1586
    .end local v47    # "res":I
    :pswitch_23e1
    if-eqz p4, :cond_2460

    .line 1587
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD user id = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 1595
    .restart local v48    # "result":Z
    :goto_2414
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isExternalStorageForFailedPasswordsWipeExcluded"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1601
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_239d

    .line 1592
    .end local v48    # "result":Z
    :cond_2460
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .restart local v48    # "result":Z
    goto :goto_2414

    .line 1607
    .end local v48    # "result":Z
    :pswitch_2472
    if-eqz p4, :cond_247a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_247e

    .line 1608
    :cond_247a
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1609
    :cond_247e
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordPatternMatched(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v48

    .line 1613
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isPasswordPatternMatched"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1617
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_239d

    .line 1623
    .end local v48    # "result":Z
    :pswitch_24c5
    if-nez p4, :cond_2540

    .line 1624
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 1626
    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isPasswordVisibilityEnabled callingUid = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :goto_24f4
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isPasswordVisibilityEnabled return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isPasswordVisibilityEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1639
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_239d

    .line 1629
    .end local v48    # "result":Z
    :cond_2540
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 1631
    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isPasswordVisibilityEnabled callingUid = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24f4

    .line 1646
    .end local v48    # "result":Z
    :pswitch_2577
    if-eqz p4, :cond_2585

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_2589

    .line 1647
    :cond_2585
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1648
    :cond_2589
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v57

    move-object/from16 v0, v34

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v48

    .line 1650
    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isPasswordVisibilityEnabledAsUser return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isPasswordVisibilityEnabledAsUser"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1656
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_239d

    .line 1662
    .end local v48    # "result":Z
    :pswitch_25e5
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    .line 1666
    .restart local v47    # "res":I
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getPasswordLockDelay"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1670
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_239d

    .line 1676
    .end local v47    # "res":I
    :pswitch_2626
    if-eqz p4, :cond_26a5

    .line 1677
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD user id = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    .line 1685
    .restart local v47    # "res":I
    :goto_2659
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getMaximumFailedPasswordsForDisable"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1691
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_239d

    .line 1682
    .end local v47    # "res":I
    :cond_26a5
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    .restart local v47    # "res":I
    goto :goto_2659

    .line 1697
    .end local v47    # "res":I
    :pswitch_26b7
    if-eqz p4, :cond_26c5

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_26c9

    .line 1698
    :cond_26c5
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1700
    :cond_26c9
    const/16 v57, 0x0

    aget-object v57, p4, v57

    if-nez v57, :cond_275c

    .line 1701
    const/16 v20, 0x0

    .line 1704
    .local v20, "cn":Landroid/content/ComponentName;
    :goto_26d1
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_2766

    .line 1705
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD user id = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-direct/range {v57 .. v58}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I

    move-result v47

    .line 1713
    .restart local v47    # "res":I
    :goto_2710
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD return = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getMaximumFailedPasswordsForWipe"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1718
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_239d

    .line 1703
    .end local v20    # "cn":Landroid/content/ComponentName;
    .end local v47    # "res":I
    :cond_275c
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v20

    .restart local v20    # "cn":Landroid/content/ComponentName;
    goto/16 :goto_26d1

    .line 1710
    :cond_2766
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I

    move-result v47

    .restart local v47    # "res":I
    goto :goto_2710

    .line 1731
    .end local v20    # "cn":Landroid/content/ComponentName;
    .end local v34    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    .end local v47    # "res":I
    :pswitch_277a
    const-string v57, "browser_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 1734
    .local v29, "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    if-eqz v29, :cond_48

    if-eqz p3, :cond_48

    .line 1735
    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_399e

    :cond_278f
    :goto_278f
    packed-switch v57, :pswitch_data_39b8

    .line 1828
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1735
    :sswitch_2796
    const-string v58, "getHttpProxy"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_278f

    const/16 v57, 0x0

    goto :goto_278f

    :sswitch_27a5
    const-string v58, "getAutoFillSetting"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_278f

    const/16 v57, 0x1

    goto :goto_278f

    :sswitch_27b4
    const-string v58, "getCookiesSetting"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_278f

    const/16 v57, 0x2

    goto :goto_278f

    :sswitch_27c3
    const-string v58, "getJavaScriptSetting"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_278f

    const/16 v57, 0x3

    goto :goto_278f

    :sswitch_27d2
    const-string v58, "getPopupsSetting"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_278f

    const/16 v57, 0x4

    goto :goto_278f

    :sswitch_27e1
    const-string v58, "getForceFraudWarningSetting"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_278f

    const/16 v57, 0x5

    goto :goto_278f

    .line 1737
    :pswitch_27f0
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getHttpProxy(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v46

    .line 1740
    .local v46, "proxy":Ljava/lang/String;
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getHttpProxy"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1743
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v46, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v46    # "proxy":Ljava/lang/String;
    :goto_282b
    move-object/from16 v57, v43

    .line 1831
    goto/16 :goto_4a

    .line 1750
    :pswitch_282f
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x4

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v8

    .line 1755
    .local v8, "bAutoFill":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getAutoFillSetting"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1759
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_282b

    .line 1767
    .end local v8    # "bAutoFill":Z
    :pswitch_2873
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x2

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v9

    .line 1772
    .local v9, "bCookiesSettings":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getCookiesSetting"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1775
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_282b

    .line 1782
    .end local v9    # "bCookiesSettings":Z
    :pswitch_28b8
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x10

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v15

    .line 1787
    .local v15, "bJavaScriptSetting":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getJavaScriptSetting"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1791
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_282b

    .line 1799
    .end local v15    # "bJavaScriptSetting":Z
    :pswitch_28fd
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v16

    .line 1804
    .local v16, "bPopupSettings":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getPopupsSetting"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1807
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_282b

    .line 1814
    .end local v16    # "bPopupSettings":Z
    :pswitch_2942
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x8

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v10

    .line 1819
    .local v10, "bForceWarning":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getForceFraudWarningSetting"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1822
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_282b

    .line 1837
    .end local v10    # "bForceWarning":Z
    .end local v29    # "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    :pswitch_2987
    const-string v57, "bluetooth_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 1839
    .local v28, "lBluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-eqz v28, :cond_48

    if-eqz p3, :cond_48

    .line 1840
    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_39c8

    :cond_299c
    :goto_299c
    packed-switch v57, :pswitch_data_39ea

    .line 1950
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1840
    :sswitch_29a3
    const-string v58, "isBluetoothEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_299c

    const/16 v57, 0x0

    goto :goto_299c

    :sswitch_29b2
    const-string v58, "isBluetoothEnabledWithMsg"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_299c

    const/16 v57, 0x1

    goto :goto_299c

    :sswitch_29c1
    const-string v58, "isOutgoingCallsAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_299c

    const/16 v57, 0x2

    goto :goto_299c

    :sswitch_29d0
    const-string v58, "isLimitedDiscoverableEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_299c

    const/16 v57, 0x3

    goto :goto_299c

    :sswitch_29df
    const-string v58, "isDiscoverableEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_299c

    const/16 v57, 0x4

    goto :goto_299c

    :sswitch_29ee
    const-string v58, "isDesktopConnectivityEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_299c

    const/16 v57, 0x5

    goto :goto_299c

    :sswitch_29fd
    const-string v58, "bluetoothLog"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_299c

    const/16 v57, 0x6

    goto :goto_299c

    :sswitch_2a0c
    const-string v58, "isBluetoothLogEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_299c

    const/16 v57, 0x7

    goto :goto_299c

    .line 1842
    :pswitch_2a1b
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 1843
    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isBluetoothEnabled = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isBluetoothEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1849
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2a76
    move-object/from16 v57, v43

    .line 1953
    goto/16 :goto_4a

    .line 1855
    .end local v48    # "result":Z
    :pswitch_2a7a
    if-eqz p4, :cond_2a82

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_2a86

    .line 1856
    :cond_2a82
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1857
    :cond_2a86
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v57

    move-object/from16 v0, v28

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabledWithMsg(Z)Z

    move-result v48

    .line 1859
    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isBluetoothEnabled = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isBluetoothEnabledWithMsg"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1865
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2a76

    .line 1871
    .end local v48    # "result":Z
    :pswitch_2ae1
    if-eqz p4, :cond_2ae9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_2aed

    .line 1872
    :cond_2ae9
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1873
    :cond_2aed
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v57

    move-object/from16 v0, v28

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v48

    .line 1875
    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "isOutgoingCallsAllowed = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isOutgoingCallsAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1881
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a76

    .line 1887
    .end local v48    # "result":Z
    :pswitch_2b49
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isLimitedDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 1890
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isLimitedDiscoverableEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1894
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a76

    .line 1899
    .end local v48    # "result":Z
    :pswitch_2b8a
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 1902
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isDiscoverableEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1906
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a76

    .line 1911
    .end local v48    # "result":Z
    :pswitch_2bcb
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 1914
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isDesktopConnectivityEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1918
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a76

    .line 1923
    .end local v48    # "result":Z
    :pswitch_2c0c
    if-eqz p4, :cond_2c1a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_2c1e

    .line 1924
    :cond_2c1a
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1925
    :cond_2c1e
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    const/16 v59, 0x1

    aget-object v59, p4, v59

    move-object/from16 v0, v28

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    move-object/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->bluetoothLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v48

    .line 1929
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "bluetoothLog"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1933
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a76

    .line 1938
    .end local v48    # "result":Z
    :pswitch_2c6b
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 1941
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isBluetoothLogEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1945
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a76

    .line 1957
    .end local v28    # "lBluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    .end local v48    # "result":Z
    :pswitch_2cac
    if-eqz p3, :cond_48

    .line 1958
    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_39fe

    :cond_2cb7
    :goto_2cb7
    packed-switch v57, :pswitch_data_3a28

    :goto_2cba
    move-object/from16 v57, v43

    .line 2072
    goto/16 :goto_4a

    .line 1958
    :sswitch_2cbe
    const-string v58, "isProfileAuthorizedBySecurityPolicy"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2cb7

    const/16 v57, 0x0

    goto :goto_2cb7

    :sswitch_2ccd
    const-string v58, "isBluetoothLogEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2cb7

    const/16 v57, 0x1

    goto :goto_2cb7

    :sswitch_2cdc
    const-string v58, "isPairingAllowedbySecurityPolicy"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2cb7

    const/16 v57, 0x2

    goto :goto_2cb7

    :sswitch_2ceb
    const-string v58, "isHeadsetAllowedBySecurityPolicy"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2cb7

    const/16 v57, 0x3

    goto :goto_2cb7

    :sswitch_2cfa
    const-string v58, "isSocketAllowedBySecurityPolicy"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2cb7

    const/16 v57, 0x4

    goto :goto_2cb7

    :sswitch_2d09
    const-string v58, "bluetoothSocketLog"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2cb7

    const/16 v57, 0x5

    goto :goto_2cb7

    :sswitch_2d18
    const-string v58, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2cb7

    const/16 v57, 0x6

    goto :goto_2cb7

    :sswitch_2d27
    const-string v58, "bluetoothLog"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2cb7

    const/16 v57, 0x7

    goto :goto_2cb7

    :sswitch_2d36
    const-string v58, "bluetoothLogForRemote"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2cb7

    const/16 v57, 0x8

    goto/16 :goto_2cb7

    :sswitch_2d46
    const-string v58, "bluetoothLogForDevice"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_2cb7

    const/16 v57, 0x9

    goto/16 :goto_2cb7

    .line 1960
    :pswitch_2d56
    if-eqz p4, :cond_2d5e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_2d62

    .line 1961
    :cond_2d5e
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1962
    :cond_2d62
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v57

    invoke-static/range {v57 .. v57}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z

    move-result v48

    .line 1965
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isProfileAuthorizedBySecurityPolicy"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1969
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2cba

    .line 1974
    .end local v48    # "result":Z
    :pswitch_2d9e
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v48

    .line 1977
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isBluetoothLogEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1981
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2cba

    .line 1986
    .end local v48    # "result":Z
    :pswitch_2dd2
    if-eqz p4, :cond_2dda

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_2dde

    .line 1987
    :cond_2dda
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 1988
    :cond_2dde
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Landroid/sec/enterprise/BluetoothUtils;->isPairingAllowedbySecurityPolicy(Ljava/lang/String;)Z

    move-result v48

    .line 1989
    .restart local v48    # "result":Z
    const-string v57, "SecContentProvider"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "PAIRINGALLOWEDBYSECURITY = "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isPairingAllowedbySecurityPolicy"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1995
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2cba

    .line 2000
    .end local v48    # "result":Z
    :pswitch_2e32
    if-eqz p4, :cond_2e3a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_2e3e

    .line 2001
    :cond_2e3a
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 2002
    :cond_2e3e
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v57

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-virtual/range {v57 .. v58}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v57

    invoke-static/range {v57 .. v57}, Landroid/sec/enterprise/BluetoothUtils;->isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v48

    .line 2005
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isHeadsetAllowedBySecurityPolicy"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2009
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2cba

    .line 2014
    .end local v48    # "result":Z
    :pswitch_2e7e
    if-eqz p4, :cond_2e8c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x3

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_2e90

    .line 2015
    :cond_2e8c
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 2016
    :cond_2e90
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v57

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-virtual/range {v57 .. v58}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v57

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    const/16 v59, 0x2

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    const/16 v60, 0x3

    aget-object v60, p4, v60

    invoke-static/range {v60 .. v60}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v60

    invoke-static/range {v57 .. v60}, Landroid/sec/enterprise/BluetoothUtils;->isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelUuid;)Z

    move-result v48

    .line 2019
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSocketAllowedBySecurityPolicy"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2023
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2cba

    .line 2028
    .end local v48    # "result":Z
    :pswitch_2ee8
    if-eqz p4, :cond_2ef6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x3

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_2efa

    .line 2029
    :cond_2ef6
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 2030
    :cond_2efa
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v58

    const/16 v59, 0x1

    aget-object v59, p4, v59

    invoke-virtual/range {v58 .. v59}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v58

    const/16 v59, 0x2

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    const/16 v60, 0x3

    aget-object v60, p4, v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    invoke-static/range {v57 .. v60}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothSocketLog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_2cba

    .line 2034
    :pswitch_2f1f
    if-eqz p4, :cond_2f27

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_2f2b

    .line 2035
    :cond_2f27
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 2036
    :cond_2f2b
    const/16 v57, 0x0

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v57

    invoke-static/range {v57 .. v57}, Landroid/sec/enterprise/BluetoothUtils;->isSvcRfComPortNumberBlockedBySecurityPolicy(I)Z

    move-result v48

    .line 2040
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2044
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2cba

    .line 2049
    .end local v48    # "result":Z
    :pswitch_2f67
    if-eqz p4, :cond_2f7b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-lt v0, v1, :cond_2f7b

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v57

    if-nez v57, :cond_2f7f

    .line 2050
    :cond_2f7b
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 2051
    :cond_2f7f
    const/16 v57, 0x0

    aget-object v57, p4, v57

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v57 .. v58}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2cba

    .line 2054
    :pswitch_2f8c
    if-eqz p4, :cond_2fa0

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x3

    move/from16 v0, v57

    move/from16 v1, v58

    if-lt v0, v1, :cond_2fa0

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v57

    if-nez v57, :cond_2fa4

    .line 2055
    :cond_2fa0
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 2056
    :cond_2fa4
    const/16 v57, 0x0

    aget-object v57, p4, v57

    const/16 v58, 0x1

    aget-object v58, p4, v58

    const/16 v59, 0x2

    aget-object v59, p4, v59

    invoke-static/range {v57 .. v59}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2cba

    .line 2060
    :pswitch_2fb5
    if-eqz p4, :cond_2fc9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x3

    move/from16 v0, v57

    move/from16 v1, v58

    if-lt v0, v1, :cond_2fc9

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v57

    if-nez v57, :cond_2fcd

    .line 2061
    :cond_2fc9
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 2062
    :cond_2fcd
    const/16 v57, 0x2

    aget-object v57, p4, v57

    if-nez v57, :cond_2fe6

    .line 2063
    const/16 v57, 0x0

    aget-object v57, p4, v57

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    const/16 v59, 0x0

    invoke-static/range {v57 .. v59}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_2cba

    .line 2067
    :cond_2fe6
    const/16 v57, 0x0

    aget-object v57, p4, v57

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v59

    const/16 v60, 0x2

    aget-object v60, p4, v60

    invoke-virtual/range {v59 .. v60}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v59

    invoke-static/range {v57 .. v59}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_2cba

    .line 2076
    :pswitch_3003
    const-string/jumbo v57, "roaming_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .line 2078
    .local v36, "lRoamingPolicy":Lcom/android/server/enterprise/restriction/RoamingPolicy;
    if-eqz v36, :cond_48

    if-eqz p3, :cond_48

    .line 2079
    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_3a40

    :cond_3019
    :goto_3019
    packed-switch v57, :pswitch_data_3a52

    .line 2133
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 2079
    :sswitch_3020
    const-string v58, "isRoamingSyncEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3019

    const/16 v57, 0x0

    goto :goto_3019

    :sswitch_302f
    const-string v58, "isRoamingPushEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3019

    const/16 v57, 0x1

    goto :goto_3019

    :sswitch_303e
    const-string v58, "isRoamingDataEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3019

    const/16 v57, 0x2

    goto :goto_3019

    :sswitch_304d
    const-string v58, "isRoamingVoiceCallsEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3019

    const/16 v57, 0x3

    goto :goto_3019

    .line 2081
    :pswitch_305c
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 2084
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isRoamingSyncEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2088
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_309b
    move-object/from16 v57, v43

    .line 2136
    goto/16 :goto_4a

    .line 2094
    .end local v48    # "result":Z
    :pswitch_309f
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingPushEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 2097
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isRoamingPushEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2101
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_309b

    .line 2107
    .end local v48    # "result":Z
    :pswitch_30df
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 2110
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isRoamingDataEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2114
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_309b

    .line 2120
    .end local v48    # "result":Z
    :pswitch_3120
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingVoiceCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 2123
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isRoamingVoiceCallsEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2127
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_309b

    .line 2142
    .end local v36    # "lRoamingPolicy":Lcom/android/server/enterprise/restriction/RoamingPolicy;
    .end local v48    # "result":Z
    :pswitch_3161
    const-string v57, "location_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/enterprise/location/LocationPolicy;

    .line 2144
    .local v33, "lLocationPolicy":Lcom/android/server/enterprise/location/LocationPolicy;
    if-eqz v33, :cond_48

    if-eqz p3, :cond_48

    .line 2145
    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_3a5e

    :cond_3176
    :goto_3176
    packed-switch v57, :pswitch_data_3a6c

    .line 2195
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 2145
    :sswitch_317d
    const-string v58, "isLocationProviderBlocked"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3176

    const/16 v57, 0x0

    goto :goto_3176

    :sswitch_318c
    const-string v58, "isLocationProviderBlockedAsUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3176

    const/16 v57, 0x1

    goto :goto_3176

    :sswitch_319b
    const-string v58, "isGPSStateChangeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_3176

    const/16 v57, 0x2

    goto :goto_3176

    .line 2147
    :pswitch_31aa
    if-eqz p4, :cond_31b2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_31b6

    .line 2148
    :cond_31b2
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 2149
    :cond_31b6
    const/16 v57, 0x0

    aget-object v57, p4, v57

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v48

    .line 2152
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isLocationProviderBlocked"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2156
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_31f0
    move-object/from16 v57, v43

    .line 2198
    goto/16 :goto_4a

    .line 2162
    .end local v48    # "result":Z
    :pswitch_31f4
    if-eqz p4, :cond_3202

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_3206

    .line 2163
    :cond_3202
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 2164
    :cond_3206
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x2

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_3257

    .line 2165
    const/16 v57, 0x0

    aget-object v57, p4, v57

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v48

    .line 2172
    .restart local v48    # "result":Z
    :goto_3228
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isLocationProviderBlockedAsUser"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2176
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_31f0

    .line 2168
    .end local v48    # "result":Z
    :cond_3257
    const/16 v57, 0x0

    aget-object v57, p4, v57

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v48

    .restart local v48    # "result":Z
    goto :goto_3228

    .line 2182
    .end local v48    # "result":Z
    :pswitch_3266
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 2185
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isGPSStateChangeAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2189
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_31f0

    .line 2202
    .end local v33    # "lLocationPolicy":Lcom/android/server/enterprise/location/LocationPolicy;
    .end local v48    # "result":Z
    :pswitch_32a7
    const-string v57, "auditlog"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 2205
    .local v27, "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-eqz v27, :cond_48

    .line 2206
    if-eqz p3, :cond_48

    const-string v57, "isAuditLogEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-eqz v57, :cond_48

    .line 2208
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    move-result v13

    .line 2211
    .local v13, "bIsAuditLogEnabled":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isAuditLogEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2214
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v57, v43

    .line 2219
    goto/16 :goto_4a

    .line 2227
    .end local v13    # "bIsAuditLogEnabled":Z
    .end local v27    # "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    :pswitch_32f5
    const-string/jumbo v57, "smartcard_browser_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    .line 2230
    .local v38, "lSmartCardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    if-eqz v38, :cond_48

    .line 2231
    if-eqz p3, :cond_3351

    const-string v57, "isAuthenticationEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-eqz v57, :cond_3351

    .line 2233
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v38

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v14

    .line 2237
    .local v14, "bIsAuthenticationEnabled":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isAuthenticationEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2241
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v57, v43

    .line 2246
    goto/16 :goto_4a

    .line 2248
    .end local v14    # "bIsAuthenticationEnabled":Z
    :cond_3351
    if-eqz p3, :cond_48

    const-string v57, "getClientCertificateAlias"

    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-eqz v57, :cond_48

    .line 2251
    if-eqz p4, :cond_3367

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_336b

    .line 2252
    :cond_3367
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 2254
    :cond_336b
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    const/16 v59, 0x1

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    move-object/from16 v0, v38

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getClientCertificateAlias(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v49

    .line 2259
    .local v49, "sGetClientCertificateAlias":Ljava/lang/String;
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getClientCertificateAlias"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2264
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v49, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v57, v43

    .line 2269
    goto/16 :goto_4a

    .line 2275
    .end local v38    # "lSmartCardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .end local v49    # "sGetClientCertificateAlias":Ljava/lang/String;
    :pswitch_33ba
    const-string/jumbo v57, "security_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 2278
    .local v37, "lSecurityPolicy":Lcom/android/server/enterprise/security/SecurityPolicy;
    if-eqz v37, :cond_48

    if-eqz p3, :cond_48

    .line 2279
    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    packed-switch v58, :pswitch_data_3a76

    :cond_33d0
    :goto_33d0
    packed-switch v57, :pswitch_data_3a7c

    .line 2296
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 2279
    :pswitch_33d7
    const-string v58, "isDodBannerVisible"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_33d0

    const/16 v57, 0x0

    goto :goto_33d0

    .line 2283
    :pswitch_33e6
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisible(Landroid/app/enterprise/ContextInfo;)Z

    move-result v21

    .line 2286
    .local v21, "dodbanner":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isDodBannerVisible"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2290
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v57, v43

    .line 2299
    goto/16 :goto_4a

    .line 2304
    .end local v21    # "dodbanner":Z
    .end local v37    # "lSecurityPolicy":Lcom/android/server/enterprise/security/SecurityPolicy;
    :pswitch_3429
    const-string v57, "firewall_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .line 2307
    .local v32, "lFirewallPolicy":Lcom/android/server/enterprise/firewall/FirewallPolicy;
    if-eqz v32, :cond_48

    if-eqz p3, :cond_48

    .line 2308
    const/16 v57, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v58

    sparse-switch v58, :sswitch_data_3a82

    :cond_343e
    :goto_343e
    packed-switch v57, :pswitch_data_3a98

    .line 2397
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 2308
    :sswitch_3445
    const-string v58, "getURLFilterEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_343e

    const/16 v57, 0x0

    goto :goto_343e

    :sswitch_3454
    const-string v58, "getURLFilterList"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_343e

    const/16 v57, 0x1

    goto :goto_343e

    :sswitch_3463
    const-string v58, "getURLFilterReportEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_343e

    const/16 v57, 0x2

    goto :goto_343e

    :sswitch_3472
    const-string v58, "isUrlBlocked"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_343e

    const/16 v57, 0x3

    goto :goto_343e

    :sswitch_3481
    const-string v58, "isGlobalProxyAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_343e

    const/16 v57, 0x4

    goto :goto_343e

    .line 2312
    :pswitch_3490
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x1

    const/16 v59, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v57

    move/from16 v2, v58

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v11

    .line 2316
    .local v11, "bGetURLFilterEnabled":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getURLFilterEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2320
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v11    # "bGetURLFilterEnabled":Z
    :cond_34d7
    :goto_34d7
    move-object/from16 v57, v43

    .line 2400
    goto/16 :goto_4a

    .line 2329
    :pswitch_34db
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x1

    const/16 v59, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v57

    move/from16 v2, v58

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterList(Landroid/app/enterprise/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v54

    .line 2332
    .local v54, "urFilterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getURLFilterList"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2337
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    if-eqz v54, :cond_34d7

    invoke-interface/range {v54 .. v54}, Ljava/util/List;->isEmpty()Z

    move-result v57

    if-nez v57, :cond_34d7

    .line 2340
    invoke-interface/range {v54 .. v54}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :goto_3517
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_34d7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 2341
    .local v22, "filterList":Ljava/lang/String;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v22, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3517

    .line 2352
    .end local v22    # "filterList":Ljava/lang/String;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v54    # "urFilterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3537
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x1

    const/16 v59, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v57

    move/from16 v2, v58

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 2356
    .local v18, "bUrlFilterReportEnable":Ljava/lang/Boolean;
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getURLFilterReportEnabled"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2360
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v18, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_34d7

    .line 2366
    .end local v18    # "bUrlFilterReportEnable":Ljava/lang/Boolean;
    :pswitch_3580
    if-eqz p4, :cond_3588

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_358c

    .line 2367
    :cond_3588
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 2368
    :cond_358c
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    move-object/from16 v0, v32

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isUrlBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 2372
    .local v17, "bUrlBlocked":Ljava/lang/Boolean;
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isUrlBlocked"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2376
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v17, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_34d7

    .line 2382
    .end local v17    # "bUrlBlocked":Ljava/lang/Boolean;
    :pswitch_35d3
    if-eqz p4, :cond_35db

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    if-gtz v57, :cond_35df

    .line 2383
    :cond_35db
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 2384
    :cond_35df
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isGlobalProxyAllowed()Z

    move-result v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 2387
    .local v12, "bGlobalProxy":Ljava/lang/Boolean;
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isGlobalProxyAllowed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2391
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v12, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_34d7

    .line 2416
    .end local v12    # "bGlobalProxy":Ljava/lang/Boolean;
    .end local v32    # "lFirewallPolicy":Lcom/android/server/enterprise/firewall/FirewallPolicy;
    :pswitch_3613
    const-string v57, "apppermission_control_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    .line 2419
    .local v26, "lAppPermissionControlPol":Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;
    if-eqz v26, :cond_48

    if-eqz p3, :cond_48

    .line 2420
    if-eqz p4, :cond_362d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v57

    const/16 v58, 0x1

    move/from16 v0, v57

    move/from16 v1, v58

    if-gt v0, v1, :cond_3631

    .line 2421
    :cond_362d
    const/16 v57, 0x0

    goto/16 :goto_4a

    .line 2423
    :cond_3631
    const-string v57, "getPermissionBlockedList"

    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-eqz v57, :cond_48

    .line 2424
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2425
    .local v5, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v57, 0x1

    aget-object v57, p4, v57

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v5, Ljava/util/List;

    .line 2426
    .restart local v5    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    move-object/from16 v0, v26

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPermissionBlockedList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v45

    .line 2430
    .local v45, "permList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "getPermissionBlockedList"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2435
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    if-eqz v45, :cond_36a6

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->isEmpty()Z

    move-result v57

    if-nez v57, :cond_36a6

    .line 2438
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :goto_3686
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_36a6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/String;

    .line 2439
    .local v44, "perm":Ljava/lang/String;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v44, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3686

    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v44    # "perm":Ljava/lang/String;
    :cond_36a6
    move-object/from16 v57, v43

    .line 2446
    goto/16 :goto_4a

    .line 2452
    .end local v5    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "lAppPermissionControlPol":Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;
    .end local v45    # "permList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_36aa
    const-string v57, "date_time_policy"

    invoke-static/range {v57 .. v57}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 2455
    .local v31, "lDateTimePolicy":Lcom/android/server/enterprise/datetime/DateTimePolicy;
    if-eqz v31, :cond_48

    if-eqz p3, :cond_48

    .line 2456
    const-string v57, "isDateTimeChangeEnalbed"

    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v57

    if-eqz v57, :cond_48

    .line 2457
    new-instance v57, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v57

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v31

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    .line 2461
    .restart local v48    # "result":Z
    new-instance v43, Landroid/database/MatrixCursor;

    .end local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    const-string v59, "isDateTimeChangeEnalbed"

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2466
    .restart local v43    # "mCursor":Landroid/database/MatrixCursor;
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v57, v43

    .line 2471
    goto/16 :goto_4a

    .line 214
    nop

    :pswitch_data_3706
    .packed-switch 0x1
        :pswitch_48
        :pswitch_32a7
        :pswitch_2987
        :pswitch_2cac
        :pswitch_277a
        :pswitch_197f
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_3429
        :pswitch_48
        :pswitch_3161
        :pswitch_1e20
        :pswitch_22a3
        :pswitch_4b
        :pswitch_73a
        :pswitch_f36
        :pswitch_14c3
        :pswitch_3003
        :pswitch_33ba
        :pswitch_48
        :pswitch_32f5
        :pswitch_3613
        :pswitch_36aa
    .end packed-switch

    .line 219
    :sswitch_data_373a
    .sparse-switch
        -0x5d9fe8ab -> :sswitch_df
        -0x5c7edb84 -> :sswitch_10f
        -0x4bfd3947 -> :sswitch_11f
        -0x38cefab6 -> :sswitch_ff
        -0x36978d55 -> :sswitch_a3
        -0x34742384 -> :sswitch_d0
        -0x2d47f4e1 -> :sswitch_b2
        -0x2b582cae -> :sswitch_ef
        0x3e05fd -> :sswitch_c1
        0x7ed85f2 -> :sswitch_12f
        0x2ea4b8a5 -> :sswitch_14f
        0x3593cbd4 -> :sswitch_94
        0x3d337bfd -> :sswitch_76
        0x4ef9c1f9 -> :sswitch_15f
        0x64034c9f -> :sswitch_16f
        0x71560275 -> :sswitch_13f
        0x77163a49 -> :sswitch_85
        0x7e3d73d9 -> :sswitch_67
    .end sparse-switch

    :pswitch_data_3784
    .packed-switch 0x0
        :pswitch_17f
        :pswitch_1cb
        :pswitch_221
        :pswitch_268
        :pswitch_2ba
        :pswitch_30c
        :pswitch_34d
        :pswitch_38e
        :pswitch_3e5
        :pswitch_426
        :pswitch_47d
        :pswitch_4be
        :pswitch_527
        :pswitch_59f
        :pswitch_5eb
        :pswitch_62c
        :pswitch_680
        :pswitch_6c1
    .end packed-switch

    .line 485
    :sswitch_data_37ac
    .sparse-switch
        -0x74a4d725 -> :sswitch_838
        -0x71206782 -> :sswitch_858
        -0x6c0db8af -> :sswitch_78c
        -0x694bd3d6 -> :sswitch_7f8
        -0x553c4d53 -> :sswitch_7e8
        -0x4d525a40 -> :sswitch_7c8
        -0x4406e5f2 -> :sswitch_818
        -0x39e13355 -> :sswitch_75f
        -0x2de531be -> :sswitch_7d8
        -0x1ab59b72 -> :sswitch_76e
        -0xa2586fa -> :sswitch_848
        0x5ad79eb -> :sswitch_7aa
        0x5be9d3d -> :sswitch_79b
        0x26581d58 -> :sswitch_808
        0x36e6d3e0 -> :sswitch_828
        0x4bd14915 -> :sswitch_77d
        0x6c3b6517 -> :sswitch_7b9
    .end sparse-switch

    :pswitch_data_37f2
    .packed-switch 0x0
        :pswitch_868
        :pswitch_8c1
        :pswitch_917
        :pswitch_958
        :pswitch_999
        :pswitch_9f0
        :pswitch_a42
        :pswitch_af3
        :pswitch_b4a
        :pswitch_bef
        :pswitch_c94
        :pswitch_d0c
        :pswitch_dbe
        :pswitch_e15
        :pswitch_e49
        :pswitch_e9c
        :pswitch_ef5
    .end packed-switch

    .line 768
    :sswitch_data_3818
    .sparse-switch
        -0x5eef4930 -> :sswitch_f9e
        -0x55af2a6c -> :sswitch_f80
        -0x42b9a7be -> :sswitch_ffb
        -0x3d0295e2 -> :sswitch_f71
        -0x331a660a -> :sswitch_fbc
        -0x1ad99baa -> :sswitch_fdb
        -0x10b8615d -> :sswitch_f62
        -0x53b1dd2 -> :sswitch_f8f
        0x3e90c48d -> :sswitch_101b
        0x405a90ec -> :sswitch_fcb
        0x53ef861d -> :sswitch_feb
        0x5bb25232 -> :sswitch_f53
        0x6bef28f1 -> :sswitch_fad
        0x7c45f31f -> :sswitch_100b
    .end sparse-switch

    :pswitch_data_3852
    .packed-switch 0x0
        :pswitch_102b
        :pswitch_10b6
        :pswitch_10f6
        :pswitch_1139
        :pswitch_118b
        :pswitch_11cc
        :pswitch_121e
        :pswitch_1275
        :pswitch_12b6
        :pswitch_130d
        :pswitch_1354
        :pswitch_139d
        :pswitch_13de
        :pswitch_1482
    .end packed-switch

    .line 986
    :sswitch_data_3872
    .sparse-switch
        -0x562f9482 -> :sswitch_14fe
        -0x4e3d6d40 -> :sswitch_1558
        -0x460411da -> :sswitch_153a
        -0x39b5211e -> :sswitch_1598
        -0x37226d22 -> :sswitch_1549
        -0x3581de92 -> :sswitch_151c
        -0x30c133a0 -> :sswitch_1568
        -0x28516cec -> :sswitch_1588
        -0x4e1daa7 -> :sswitch_152b
        0x12bbc810 -> :sswitch_1578
        0x5f1771f4 -> :sswitch_14ef
        0x730fdeab -> :sswitch_150d
        0x75020c0f -> :sswitch_14e0
    .end sparse-switch

    :pswitch_data_38a8
    .packed-switch 0x0
        :pswitch_15a8
        :pswitch_15fc
        :pswitch_1652
        :pswitch_16a9
        :pswitch_16ea
        :pswitch_172b
        :pswitch_176c
        :pswitch_17be
        :pswitch_17ff
        :pswitch_1851
        :pswitch_18a3
        :pswitch_18e4
        :pswitch_1925
    .end packed-switch

    .line 1186
    :sswitch_data_38c6
    .sparse-switch
        -0x7f682541 -> :sswitch_1a14
        -0x6f783fb9 -> :sswitch_1a24
        -0x51cc33cc -> :sswitch_1a05
        -0x4d8cc16d -> :sswitch_19b9
        -0x3c6ca389 -> :sswitch_19d7
        -0x3bc628df -> :sswitch_19c8
        -0x3a9ab315 -> :sswitch_19aa
        -0x374aace4 -> :sswitch_19e6
        -0x1c091992 -> :sswitch_1a46
        0x19ef78a8 -> :sswitch_199b
        0x6305badd -> :sswitch_1a35
        0x692685a1 -> :sswitch_19f6
    .end sparse-switch

    :pswitch_data_38f8
    .packed-switch 0x0
        :pswitch_1a56
        :pswitch_1abf
        :pswitch_1b12
        :pswitch_1b53
        :pswitch_1baa
        :pswitch_1c29
        :pswitch_1c5a
        :pswitch_1c9b
        :pswitch_1cdc
        :pswitch_1d1d
        :pswitch_1d6c
        :pswitch_1dbb
    .end packed-switch

    .line 1354
    :sswitch_data_3914
    .sparse-switch
        -0x7f91d479 -> :sswitch_1e79
        -0x7c284bba -> :sswitch_1e5b
        -0x6f335556 -> :sswitch_1e6a
        -0x4cb7d87b -> :sswitch_1ed5
        -0x2d0cb7a5 -> :sswitch_1e4c
        0xdc5fecf -> :sswitch_1e97
        0x33b94bbf -> :sswitch_1e3d
        0x367ce700 -> :sswitch_1e88
        0x465482c9 -> :sswitch_1eb5
        0x552e154b -> :sswitch_1ea6
        0x69712d6f -> :sswitch_1ec5
        0x6ab4c78e -> :sswitch_1ee5
    .end sparse-switch

    :pswitch_data_3946
    .packed-switch 0x0
        :pswitch_1ef5
        :pswitch_1f5f
        :pswitch_1fa2
        :pswitch_1fe2
        :pswitch_2023
        :pswitch_2064
        :pswitch_20a5
        :pswitch_20f8
        :pswitch_214b
        :pswitch_219e
        :pswitch_21f1
        :pswitch_2250
    .end packed-switch

    .line 1554
    :sswitch_data_3962
    .sparse-switch
        -0x4e857510 -> :sswitch_2329
        -0x1c894ef7 -> :sswitch_22de
        -0xe2e3396 -> :sswitch_22fc
        -0x9b47ac1 -> :sswitch_2338
        0x17f43207 -> :sswitch_231a
        0x48803b14 -> :sswitch_22cf
        0x60a98cb9 -> :sswitch_22ed
        0x65054427 -> :sswitch_230b
        0x75f9239b -> :sswitch_22c0
    .end sparse-switch

    :pswitch_data_3988
    .packed-switch 0x0
        :pswitch_2348
        :pswitch_23a1
        :pswitch_23e1
        :pswitch_2472
        :pswitch_24c5
        :pswitch_2577
        :pswitch_25e5
        :pswitch_2626
        :pswitch_26b7
    .end packed-switch

    .line 1735
    :sswitch_data_399e
    .sparse-switch
        -0x74ddc0dd -> :sswitch_27e1
        -0x67f870ad -> :sswitch_27d2
        -0x499a7018 -> :sswitch_27a5
        -0x364e80b3 -> :sswitch_27c3
        0x9515810 -> :sswitch_2796
        0x78a801b7 -> :sswitch_27b4
    .end sparse-switch

    :pswitch_data_39b8
    .packed-switch 0x0
        :pswitch_27f0
        :pswitch_282f
        :pswitch_2873
        :pswitch_28b8
        :pswitch_28fd
        :pswitch_2942
    .end packed-switch

    .line 1840
    :sswitch_data_39c8
    .sparse-switch
        -0x625ba203 -> :sswitch_29a3
        -0x534f8be2 -> :sswitch_29b2
        -0x5319be4a -> :sswitch_29fd
        -0x4ebf90df -> :sswitch_2a0c
        -0x11927f68 -> :sswitch_29ee
        0x52d2774 -> :sswitch_29df
        0x3962d1ce -> :sswitch_29d0
        0x6422cbe9 -> :sswitch_29c1
    .end sparse-switch

    :pswitch_data_39ea
    .packed-switch 0x0
        :pswitch_2a1b
        :pswitch_2a7a
        :pswitch_2ae1
        :pswitch_2b49
        :pswitch_2b8a
        :pswitch_2bcb
        :pswitch_2c0c
        :pswitch_2c6b
    .end packed-switch

    .line 1958
    :sswitch_data_39fe
    .sparse-switch
        -0x74fa9afd -> :sswitch_2cbe
        -0x5319be4a -> :sswitch_2d27
        -0x4ebf90df -> :sswitch_2ccd
        -0x3ce44687 -> :sswitch_2ceb
        -0x3a6a65ad -> :sswitch_2cdc
        -0x103e8c3d -> :sswitch_2d09
        0x292f3f94 -> :sswitch_2d18
        0x2eef3494 -> :sswitch_2cfa
        0x65788769 -> :sswitch_2d46
        0x7d586159 -> :sswitch_2d36
    .end sparse-switch

    :pswitch_data_3a28
    .packed-switch 0x0
        :pswitch_2d56
        :pswitch_2d9e
        :pswitch_2dd2
        :pswitch_2e32
        :pswitch_2e7e
        :pswitch_2ee8
        :pswitch_2f1f
        :pswitch_2f67
        :pswitch_2f8c
        :pswitch_2fb5
    .end packed-switch

    .line 2079
    :sswitch_data_3a40
    .sparse-switch
        -0x3edf31d1 -> :sswitch_304d
        -0x15a386e9 -> :sswitch_3020
        -0xc145ad8 -> :sswitch_303e
        0x4744a7b8 -> :sswitch_302f
    .end sparse-switch

    :pswitch_data_3a52
    .packed-switch 0x0
        :pswitch_305c
        :pswitch_309f
        :pswitch_30df
        :pswitch_3120
    .end packed-switch

    .line 2145
    :sswitch_data_3a5e
    .sparse-switch
        -0x66608807 -> :sswitch_318c
        -0x40efadf9 -> :sswitch_319b
        0x63cbc5bc -> :sswitch_317d
    .end sparse-switch

    :pswitch_data_3a6c
    .packed-switch 0x0
        :pswitch_31aa
        :pswitch_31f4
        :pswitch_3266
    .end packed-switch

    .line 2279
    :pswitch_data_3a76
    .packed-switch -0x6e1bb3c9
        :pswitch_33d7
    .end packed-switch

    :pswitch_data_3a7c
    .packed-switch 0x0
        :pswitch_33e6
    .end packed-switch

    .line 2308
    :sswitch_data_3a82
    .sparse-switch
        -0x7bb5f0b1 -> :sswitch_3454
        -0x3ecb9a99 -> :sswitch_3481
        0x3ba3e2f0 -> :sswitch_3445
        0x62658647 -> :sswitch_3472
        0x6f38e3dc -> :sswitch_3463
    .end sparse-switch

    :pswitch_data_3a98
    .packed-switch 0x0
        :pswitch_3490
        :pswitch_34db
        :pswitch_3537
        :pswitch_3580
        :pswitch_35d3
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 2592
    const/4 v0, 0x0

    return v0
.end method
