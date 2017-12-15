.class public Landroid/sec/enterprise/EnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;
    }
.end annotation


# static fields
.field private static final EDM_CLASS_NAME:Ljava/lang/String; = "android.app.enterprise.EnterpriseDeviceManager"

.field public static final ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_policy"

.field public static final ENTERPRISE_PROXY_SERVICE:Ljava/lang/String; = "edm_proxy"

.field private static final KNOX_CLASS_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.EnterpriseKnoxManager"

.field public static final KNOX_ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "knox_enterprise_policy"

.field private static mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

.field private static mInstanceCreated:Z


# instance fields
.field private mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

.field private mApplicationPolicyCreated:Z

.field private mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

.field private mBluetoothPolicyCreated:Z

.field private mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

.field private mBrowserPolicyCreated:Z

.field private mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

.field private mCertificatePolicyCreated:Z

.field private mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

.field private mClientCertificateManagerCreated:Z

.field private mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

.field private mDateTimePolicyCreated:Z

.field private mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

.field private mDeviceAccountPolicyCreated:Z

.field private mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

.field private mDeviceInventoryCreated:Z

.field private mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

.field private mFirewallPolicyCreated:Z

.field private mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

.field private mKioskModeCreated:Z

.field private mKnoxCustomManager:Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

.field private mKnoxCustomManagerCreated:Z

.field private mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

.field private mLocationPolicyCreated:Z

.field private mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;

.field private mMiscPolicyCreated:Z

.field private mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

.field private mPasswordPolicyCreated:Z

.field private mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

.field private mPhonePolicyCreated:Z

.field private mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private mRestrictionPolicyCreated:Z

.field private mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

.field private mRoamingPolicyCreated:Z

.field private mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;

.field private mSmartCardAccessPolicyCreated:Z

.field private mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

.field private mTimaKeystoreCreated:Z

.field private mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

.field private mWifiPolicyCreated:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicyCreated:Z

    .line 157
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManagerCreated:Z

    .line 158
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystoreCreated:Z

    .line 160
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    .line 161
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    .line 162
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    .line 163
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    .line 164
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    .line 165
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    .line 166
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    .line 167
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    .line 168
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    .line 169
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    .line 170
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    .line 171
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    .line 172
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskModeCreated:Z

    .line 174
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicyCreated:Z

    .line 176
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicyCreated:Z

    .line 179
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicyCreated:Z

    .line 184
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManagerCreated:Z

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Ljava/lang/Object;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 93
    :try_start_0
    const-string v3, "android.app.enterprise.EnterpriseDeviceManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 94
    .local v0, "c":Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 95
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v3

    .line 99
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_1c
    return-object v3

    .line 96
    :catch_1d
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method public static createKnox(Landroid/content/Context;Landroid/os/Handler;)Ljava/lang/Object;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x0

    .line 104
    :try_start_1
    const-string v3, "com.sec.enterprise.knox.EnterpriseKnoxManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 107
    .local v0, "c":Ljava/lang/Class;
    const-string v3, "getInstance"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 108
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_19

    move-result-object v3

    .line 112
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_18
    return-object v3

    .line 109
    :catch_19
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .line 112
    goto :goto_18
.end method

.method public static getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;
    .registers 2

    .prologue
    .line 116
    sget-boolean v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    if-nez v0, :cond_16

    .line 117
    const-class v1, Landroid/sec/enterprise/EnterpriseDeviceManager;

    monitor-enter v1

    .line 118
    :try_start_7
    sget-boolean v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    if-nez v0, :cond_15

    .line 119
    new-instance v0, Landroid/sec/enterprise/EnterpriseDeviceManager;

    invoke-direct {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;-><init>()V

    sput-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

    .line 120
    const/4 v0, 0x1

    sput-boolean v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    .line 122
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 124
    :cond_16
    sget-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

    return-object v0

    .line 122
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public static getService()Landroid/sec/enterprise/IEDMProxy;
    .registers 1

    .prologue
    .line 88
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;
    .registers 3

    .prologue
    .line 193
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    if-nez v0, :cond_16

    .line 194
    const-class v1, Landroid/sec/enterprise/ApplicationPolicy;

    monitor-enter v1

    .line 195
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    if-nez v0, :cond_15

    .line 196
    new-instance v0, Landroid/sec/enterprise/ApplicationPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/ApplicationPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    .line 199
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 201
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    return-object v0

    .line 199
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;
    .registers 3

    .prologue
    .line 312
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    if-nez v0, :cond_16

    .line 313
    const-class v1, Landroid/sec/enterprise/BluetoothPolicy;

    monitor-enter v1

    .line 314
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    if-nez v0, :cond_15

    .line 315
    new-instance v0, Landroid/sec/enterprise/BluetoothPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/BluetoothPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    .line 318
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 320
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    return-object v0

    .line 318
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getBrowserPolicy()Landroid/sec/enterprise/BrowserPolicy;
    .registers 3

    .prologue
    .line 329
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    if-nez v0, :cond_16

    .line 330
    const-class v1, Landroid/sec/enterprise/BrowserPolicy;

    monitor-enter v1

    .line 331
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    if-nez v0, :cond_15

    .line 332
    new-instance v0, Landroid/sec/enterprise/BrowserPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/BrowserPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    .line 335
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 337
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    return-object v0

    .line 335
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;
    .registers 3

    .prologue
    .line 431
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicyCreated:Z

    if-nez v0, :cond_16

    .line 432
    const-class v1, Landroid/sec/enterprise/certificate/CertificatePolicy;

    monitor-enter v1

    .line 433
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicyCreated:Z

    if-nez v0, :cond_15

    .line 434
    new-instance v0, Landroid/sec/enterprise/certificate/CertificatePolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/certificate/CertificatePolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicyCreated:Z

    .line 437
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 439
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    return-object v0

    .line 437
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;
    .registers 3

    .prologue
    .line 500
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManagerCreated:Z

    if-nez v0, :cond_16

    .line 501
    const-class v1, Landroid/sec/enterprise/ClientCertificateManager;

    monitor-enter v1

    .line 502
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManagerCreated:Z

    if-nez v0, :cond_15

    .line 503
    new-instance v0, Landroid/sec/enterprise/ClientCertificateManager;

    invoke-direct {v0}, Landroid/sec/enterprise/ClientCertificateManager;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManagerCreated:Z

    .line 506
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 508
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

    return-object v0

    .line 506
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getDateTimePolicy()Landroid/sec/enterprise/DateTimePolicy;
    .registers 3

    .prologue
    .line 380
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    if-nez v0, :cond_16

    .line 381
    const-class v1, Landroid/sec/enterprise/DateTimePolicy;

    monitor-enter v1

    .line 382
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    if-nez v0, :cond_15

    .line 383
    new-instance v0, Landroid/sec/enterprise/DateTimePolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/DateTimePolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    .line 386
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 388
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

    return-object v0

    .line 386
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getDeviceAccountPolicy()Landroid/sec/enterprise/DeviceAccountPolicy;
    .registers 3

    .prologue
    .line 445
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicyCreated:Z

    if-nez v0, :cond_16

    .line 446
    const-class v1, Landroid/sec/enterprise/DeviceAccountPolicy;

    monitor-enter v1

    .line 447
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicyCreated:Z

    if-nez v0, :cond_15

    .line 448
    new-instance v0, Landroid/sec/enterprise/DeviceAccountPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/DeviceAccountPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicyCreated:Z

    .line 451
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 453
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

    return-object v0

    .line 451
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;
    .registers 3

    .prologue
    .line 278
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    if-nez v0, :cond_16

    .line 279
    const-class v1, Landroid/sec/enterprise/DeviceInventory;

    monitor-enter v1

    .line 280
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    if-nez v0, :cond_15

    .line 281
    new-instance v0, Landroid/sec/enterprise/DeviceInventory;

    invoke-direct {v0}, Landroid/sec/enterprise/DeviceInventory;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    .line 284
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 286
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    return-object v0

    .line 284
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 489
    :goto_8
    return-object v1

    .line 488
    :catch_9
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getFirewallPolicy()Landroid/sec/enterprise/FirewallPolicy;
    .registers 3

    .prologue
    .line 398
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    if-nez v0, :cond_16

    .line 399
    const-class v1, Landroid/sec/enterprise/FirewallPolicy;

    monitor-enter v1

    .line 400
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    if-nez v0, :cond_15

    .line 401
    new-instance v0, Landroid/sec/enterprise/FirewallPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/FirewallPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    .line 404
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 406
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    return-object v0

    .line 404
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getKioskMode()Landroid/sec/enterprise/kioskmode/KioskMode;
    .registers 3

    .prologue
    .line 412
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskModeCreated:Z

    if-nez v0, :cond_16

    .line 413
    const-class v1, Landroid/sec/enterprise/kioskmode/KioskMode;

    monitor-enter v1

    .line 414
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskModeCreated:Z

    if-nez v0, :cond_15

    .line 415
    new-instance v0, Landroid/sec/enterprise/kioskmode/KioskMode;

    invoke-direct {v0}, Landroid/sec/enterprise/kioskmode/KioskMode;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskModeCreated:Z

    .line 418
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 420
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

    return-object v0

    .line 418
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getKnoxCustomManager()Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    .registers 3

    .prologue
    .line 457
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManagerCreated:Z

    if-nez v0, :cond_16

    .line 458
    const-class v1, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    monitor-enter v1

    .line 459
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManagerCreated:Z

    if-nez v0, :cond_15

    .line 460
    new-instance v0, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    invoke-direct {v0}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManager:Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManagerCreated:Z

    .line 463
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 465
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManager:Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    return-object v0

    .line 463
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getLocationPolicy()Landroid/sec/enterprise/LocationPolicy;
    .registers 3

    .prologue
    .line 295
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    if-nez v0, :cond_16

    .line 296
    const-class v1, Landroid/sec/enterprise/LocationPolicy;

    monitor-enter v1

    .line 297
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    if-nez v0, :cond_15

    .line 298
    new-instance v0, Landroid/sec/enterprise/LocationPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/LocationPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    .line 301
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 303
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

    return-object v0

    .line 301
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getMiscPolicy()Landroid/sec/enterprise/general/MiscPolicy;
    .registers 3

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicyCreated:Z

    if-nez v0, :cond_16

    .line 211
    const-class v1, Landroid/sec/enterprise/general/MiscPolicy;

    monitor-enter v1

    .line 212
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicyCreated:Z

    if-nez v0, :cond_15

    .line 213
    new-instance v0, Landroid/sec/enterprise/general/MiscPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/general/MiscPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicyCreated:Z

    .line 216
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 218
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;

    return-object v0

    .line 216
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;
    .registers 3

    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    if-nez v0, :cond_16

    .line 262
    const-class v1, Landroid/sec/enterprise/PasswordPolicy;

    monitor-enter v1

    .line 263
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    if-nez v0, :cond_15

    .line 264
    new-instance v0, Landroid/sec/enterprise/PasswordPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/PasswordPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    .line 267
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 269
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    return-object v0

    .line 267
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .registers 3

    .prologue
    .line 346
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    if-nez v0, :cond_16

    .line 347
    const-class v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;

    monitor-enter v1

    .line 348
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    if-nez v0, :cond_15

    .line 349
    new-instance v0, Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    .line 352
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 354
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    return-object v0

    .line 352
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;
    .registers 3

    .prologue
    .line 244
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    if-nez v0, :cond_16

    .line 245
    const-class v1, Landroid/sec/enterprise/RestrictionPolicy;

    monitor-enter v1

    .line 246
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    if-nez v0, :cond_15

    .line 247
    new-instance v0, Landroid/sec/enterprise/RestrictionPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/RestrictionPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    .line 250
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 252
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    return-object v0

    .line 250
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;
    .registers 3

    .prologue
    .line 227
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    if-nez v0, :cond_16

    .line 228
    const-class v1, Landroid/sec/enterprise/RoamingPolicy;

    monitor-enter v1

    .line 229
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    if-nez v0, :cond_15

    .line 230
    new-instance v0, Landroid/sec/enterprise/RoamingPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/RoamingPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    .line 233
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 235
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    return-object v0

    .line 233
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getSmartCardAccessPolicy()Landroid/sec/enterprise/SmartCardAccessPolicy;
    .registers 3

    .prologue
    .line 474
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicyCreated:Z

    if-nez v0, :cond_16

    .line 475
    const-class v1, Landroid/sec/enterprise/SmartCardAccessPolicy;

    monitor-enter v1

    .line 476
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicyCreated:Z

    if-nez v0, :cond_15

    .line 477
    new-instance v0, Landroid/sec/enterprise/SmartCardAccessPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/SmartCardAccessPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicyCreated:Z

    .line 480
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 482
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;

    return-object v0

    .line 480
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getTimaKeystore()Landroid/sec/enterprise/TimaKeystore;
    .registers 3

    .prologue
    .line 517
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystoreCreated:Z

    if-nez v0, :cond_16

    .line 518
    const-class v1, Landroid/sec/enterprise/TimaKeystore;

    monitor-enter v1

    .line 519
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystoreCreated:Z

    if-nez v0, :cond_15

    .line 520
    new-instance v0, Landroid/sec/enterprise/TimaKeystore;

    invoke-direct {v0}, Landroid/sec/enterprise/TimaKeystore;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystoreCreated:Z

    .line 523
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 525
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

    return-object v0

    .line 523
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getWifiPolicy()Landroid/sec/enterprise/WifiPolicy;
    .registers 3

    .prologue
    .line 363
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    if-nez v0, :cond_16

    .line 364
    const-class v1, Landroid/sec/enterprise/WifiPolicy;

    monitor-enter v1

    .line 365
    :try_start_7
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    if-nez v0, :cond_15

    .line 366
    new-instance v0, Landroid/sec/enterprise/WifiPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/WifiPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    .line 369
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    .line 371
    :cond_16
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    return-object v0

    .line 369
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method
