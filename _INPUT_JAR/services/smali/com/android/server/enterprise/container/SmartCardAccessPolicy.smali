.class public Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
.super Lcom/sec/enterprise/knox/container/ISmartCardAccessPolicy$Stub;
.source "SmartCardAccessPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# static fields
.field private static final ALLOW_BT_SECURE_ACCESS_FAILURE:I = 0x1

.field private static final ALLOW_BT_SECURE_ACCESS_NOT_APPLICABLE:I = 0x3

.field private static final ALLOW_BT_SECURE_ACCESS_SUCCESS:I = 0x0

.field private static final BT_SECURE_MODE_DISABLED:I = 0x2

.field private static TAG:Ljava/lang/String;

.field private static packageName:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPackageDataObserver:Landroid/content/pm/IPackageDataObserver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    const-string v0, "SmartCardAccessPolicy"

    sput-object v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    .line 88
    const-string v0, "com.android.bluetooth"

    sput-object v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->packageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Lcom/sec/enterprise/knox/container/ISmartCardAccessPolicy$Stub;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 87
    iput-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 281
    new-instance v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy$1;-><init>(Lcom/android/server/enterprise/container/SmartCardAccessPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mPackageDataObserver:Landroid/content/pm/IPackageDataObserver;

    .line 100
    iput-object p1, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mContext:Landroid/content/Context;

    .line 101
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 102
    iget-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 103
    iget-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 104
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 105
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clear_app_data_and_delete_cache_files(I)Z
    .registers 11
    .param p1, "userId"    # I

    .prologue
    .line 213
    sget-object v6, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clear_app_data_and_delete_cache_files() userId is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v2, 0x0

    .line 215
    .local v2, "success":Z
    const/4 v3, 0x0

    .line 216
    .local v3, "success1":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 217
    .local v4, "token":J
    sget-object v1, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->packageName:Ljava/lang/String;

    .line 218
    .local v1, "pkg_name":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v7, "clear_app_data_and_delete_cache_files function"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :try_start_27
    sget-object v6, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v7, "clear_app_data_and_delete_cache_files function: Multi user enabled"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v6, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v6, v1, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->clearApplicationUserData(Ljava/lang/String;I)Z

    move-result v2

    .line 224
    iget-object v6, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v6, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->clearApplicationCacheFiles(Ljava/lang/String;)Z

    move-result v3

    .line 225
    sget-object v6, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clear_app_data_and_delete_cache_files function: Multi user enabled success :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v6, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clear_app_data_and_delete_cache_files function: Multi user enabled success1 :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_6a} :catch_70
    .catchall {:try_start_27 .. :try_end_6a} :catchall_79

    .line 227
    and-int v6, v2, v3

    .line 238
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 241
    :goto_6f
    return v6

    .line 235
    :catch_70
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    :try_start_71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_79

    .line 238
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 241
    const/4 v6, 0x0

    goto :goto_6f

    .line 238
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_79
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private enable_disable_bt_application(IZ)Z
    .registers 13
    .param p1, "userId"    # I
    .param p2, "allowAccess"    # Z

    .prologue
    .line 248
    sget-object v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable_disable_bt_application() userId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v7, 0x0

    .line 250
    .local v7, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 251
    .local v8, "token":J
    sget-object v1, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->packageName:Ljava/lang/String;

    .line 253
    .local v1, "pkg_name":Ljava/lang/String;
    sget-object v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v2, "enable_disable_bt_application function"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :try_start_26
    sget-object v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v2, "enable_disable_bt_application function: Multi user enabled"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget-object v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    if-eqz p2, :cond_56

    const/4 v2, 0x1

    :goto_4b
    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_51} :catch_58
    .catchall {:try_start_26 .. :try_end_51} :catchall_60

    move-result v7

    .line 273
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 276
    :goto_55
    return v7

    .line 259
    :cond_56
    const/4 v2, 0x2

    goto :goto_4b

    .line 270
    :catch_58
    move-exception v6

    .line 271
    .local v6, "e":Ljava/lang/Exception;
    :try_start_59
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_60

    .line 273
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_55

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_60
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SMARTCARD"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 118
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    .line 119
    return-object p1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 109
    iget-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 112
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public allowBTSecureAccess(Landroid/app/enterprise/ContextInfo;Z)I
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allowAccess"    # Z

    .prologue
    .line 128
    sget-object v13, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v14, "allowBTSecureAccess"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 132
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 133
    .local v2, "adminId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .line 134
    .local v12, "userId":I
    sget-object v13, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "allowBTSecureAccess() userId is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v13, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "allowBTSecureAccess() adminId is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 137
    .local v10, "token":J
    const-string v13, "bluetooth_secure_mode_policy"

    invoke-static {v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;

    .line 141
    .local v3, "bluetoothSecureModePolicy":Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;
    :try_start_4f
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->isSecureModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    .line 142
    .local v8, "result":Z
    const/4 v7, 0x0

    .line 143
    .local v7, "res_enable_disable":Z
    const/4 v4, 0x0

    .line 146
    .local v4, "clear_data":Z
    if-nez v8, :cond_65

    .line 148
    sget-object v13, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v14, "Bluetooth Secure Mode Policy is not enabled"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_60} :catch_15b
    .catchall {:try_start_4f .. :try_end_60} :catchall_17e

    .line 149
    const/4 v13, 0x2

    .line 203
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    .end local v4    # "clear_data":Z
    .end local v7    # "res_enable_disable":Z
    .end local v8    # "result":Z
    :goto_64
    return v13

    .line 153
    .restart local v4    # "clear_data":Z
    .restart local v7    # "res_enable_disable":Z
    .restart local v8    # "result":Z
    :cond_65
    :try_start_65
    sget-object v13, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v14, "Bluetooth Secure Mode Policy is enabled"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    if-eqz p2, :cond_11c

    .line 158
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mPms:Lcom/android/server/pm/PackageManagerService;

    if-eqz v13, :cond_e3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mPms:Lcom/android/server/pm/PackageManagerService;

    sget-object v14, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e3

    .line 159
    sget-object v13, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "packageAlreadyInstalled in main user is true"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v13, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " installExistingPackageForPersona "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v6, -0x1

    .line 163
    .local v6, "installResult":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mPms:Lcom/android/server/pm/PackageManagerService;

    sget-object v14, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v12, v14}, Lcom/android/server/pm/PackageManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result v6

    .line 164
    const/4 v13, 0x1

    if-eq v6, v13, :cond_e3

    .line 165
    sget-object v13, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " Failure to install package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " package manager result code is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_de} :catch_15b
    .catchall {:try_start_65 .. :try_end_de} :catchall_17e

    .line 166
    const/4 v13, 0x1

    .line 203
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_64

    .line 172
    .end local v6    # "installResult":I
    :cond_e3
    :try_start_e3
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v12, v1}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->enable_disable_bt_application(IZ)Z

    move-result v7

    .line 173
    sget-object v13, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "allowBTSecureAccess : enable app : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_103
    if-eqz v7, :cond_17a

    .line 191
    const/4 v9, 0x0

    .line 192
    .local v9, "ret":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "SmartCardAccessTable"

    const-string v15, "allowBTAccess"

    move/from16 v0, p2

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_113} :catch_15b
    .catchall {:try_start_e3 .. :try_end_113} :catchall_17e

    move-result v9

    .line 193
    if-eqz v9, :cond_17a

    .line 194
    const/4 v13, 0x0

    .line 203
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_64

    .line 178
    .end local v9    # "ret":Z
    :cond_11c
    :try_start_11c
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->clear_app_data_and_delete_cache_files(I)Z

    move-result v4

    .line 179
    sget-object v13, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "allowBTSecureAccess : clear cache return : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v12, v1}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->enable_disable_bt_application(IZ)Z

    move-result v7

    .line 182
    sget-object v13, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "allowBTSecureAccess : disable app : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_15a} :catch_15b
    .catchall {:try_start_11c .. :try_end_15a} :catchall_17e

    goto :goto_103

    .line 200
    .end local v4    # "clear_data":Z
    .end local v7    # "res_enable_disable":Z
    .end local v8    # "result":Z
    :catch_15b
    move-exception v5

    .line 201
    .local v5, "e":Ljava/lang/Exception;
    :try_start_15c
    sget-object v13, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_174
    .catchall {:try_start_15c .. :try_end_174} :catchall_17e

    .line 203
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_177
    const/4 v13, 0x1

    goto/16 :goto_64

    .line 203
    .restart local v4    # "clear_data":Z
    .restart local v7    # "res_enable_disable":Z
    .restart local v8    # "result":Z
    :cond_17a
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_177

    .end local v4    # "clear_data":Z
    .end local v7    # "res_enable_disable":Z
    .end local v8    # "result":Z
    :catchall_17e
    move-exception v13

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
.end method

.method public getAllWhitelistedAppFromBTSecureAccess(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v5, "pkg_names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 389
    .local v8, "userId":I
    iget-object v10, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 390
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 417
    :cond_17
    :goto_17
    return-object v5

    .line 394
    :cond_18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_bc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 395
    .local v7, "uid":Ljava/lang/Long;
    sget-object v10, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAllWhitelistedAppFromBTSecureAccess() adminId long is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    sget-object v10, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAllWhitelistedAppFromBTSecureAccess() adminId is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/Long;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "whitelistPackageName"

    aput-object v11, v6, v10

    .line 400
    .local v6, "ret":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v1, v10

    .line 403
    .local v1, "col":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 406
    .local v9, "val":[Ljava/lang/String;
    sget-object v10, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v11, "getAllWhitelistedAppFromBTSecureAccess()"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v10, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SmartCardAccessWhitelistTable"

    invoke-virtual {v10, v11, v1, v9, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 409
    .local v2, "cv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-object v10, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAllWhitelistedAppFromBTSecureAccess() cv.size() is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_1c

    .line 411
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string/jumbo v11, "whitelistPackageName"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    add-int/lit8 v3, v3, 0x1

    goto :goto_a3

    .line 416
    .end local v1    # "col":[Ljava/lang/String;
    .end local v2    # "cv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3    # "i":I
    .end local v6    # "ret":[Ljava/lang/String;
    .end local v7    # "uid":Ljava/lang/Long;
    .end local v9    # "val":[Ljava/lang/String;
    :cond_bc
    sget-object v10, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAllWhitelistedAppFromBTSecureAccess() package names list is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17
.end method

.method public isAllBTSecureAccessAllowed()Z
    .registers 10

    .prologue
    .line 600
    const/4 v3, 0x0

    .line 601
    .local v3, "ret":Z
    sget-object v5, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v6, "isAllBTSecureAccessAllowed()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v5, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidList()Ljava/util/ArrayList;

    move-result-object v0

    .line 603
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 604
    :cond_16
    const/4 v5, 0x0

    .line 621
    :goto_17
    return v5

    .line 607
    :cond_18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 609
    .local v4, "uid":Ljava/lang/Long;
    :try_start_28
    sget-object v5, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllBTSecureAccessAllowed() adminId long is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    sget-object v5, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllBTSecureAccessAllowed() adminId is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v5, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v6

    const-string v7, "SmartCardAccessTable"

    const-string v8, "allowBTAccess"

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 612
    sget-object v5, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllBTSecureAccessAllowed() ret : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_82} :catch_86

    .line 613
    if-eqz v3, :cond_1c

    .line 614
    const/4 v5, 0x1

    goto :goto_17

    .line 615
    :catch_86
    move-exception v1

    .line 616
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllBTSecureAccessAllowed() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1c

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "uid":Ljava/lang/Long;
    :cond_a4
    move v5, v3

    .line 621
    goto/16 :goto_17
.end method

.method public isBTSecureAccessAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 293
    const/4 v3, 0x0

    .line 294
    .local v3, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 295
    .local v5, "userId":I
    sget-object v6, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isBTSecureAccessAllowed() userId is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v6, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v7, "isBTSecureAccessAllowed()"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v6, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 299
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_32

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 300
    :cond_32
    const/4 v6, 0x0

    .line 318
    :goto_33
    return v6

    .line 303
    :cond_34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_38
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 305
    .local v4, "uid":Ljava/lang/Long;
    :try_start_44
    sget-object v6, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isBTSecureAccessAllowed() adminId long is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object v6, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isBTSecureAccessAllowed() adminId is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v6, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v7

    const-string v8, "SmartCardAccessTable"

    const-string v9, "allowBTAccess"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 308
    sget-object v6, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isBTSecureAccessAllowed() ret : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_9e} :catch_a2

    .line 309
    if-eqz v3, :cond_38

    .line 310
    const/4 v6, 0x1

    goto :goto_33

    .line 311
    :catch_a2
    move-exception v1

    .line 312
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isBTSecureAccessAllowed() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_38

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "uid":Ljava/lang/Long;
    :cond_c0
    move v6, v3

    .line 318
    goto/16 :goto_33
.end method

.method public isBTSecureAccessAllowedAsUser(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "userId"    # I

    .prologue
    .line 322
    const/4 v3, 0x0

    .line 323
    .local v3, "ret":Z
    sget-object v5, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isBTSecureAccessAllowedAsUser() userId is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v5, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 326
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 327
    :cond_27
    const/4 v5, 0x0

    .line 345
    :goto_28
    return v5

    .line 330
    :cond_29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2d
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 334
    .local v4, "uid":Ljava/lang/Long;
    :try_start_39
    iget-object v5, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v6

    const-string v7, "SmartCardAccessTable"

    const-string v8, "allowBTAccess"

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 335
    sget-object v5, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isBTSecureAccessAllowedAsUser() ret : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_5f} :catch_63

    .line 336
    if-eqz v3, :cond_2d

    .line 337
    const/4 v5, 0x1

    goto :goto_28

    .line 338
    :catch_63
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isBTSecureAccessAllowed() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "uid":Ljava/lang/Long;
    :cond_7d
    move v5, v3

    .line 345
    goto :goto_28
.end method

.method public isPackageWhitelistedFromBTSecureAccess(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "package_name"    # Ljava/lang/String;

    .prologue
    .line 458
    const/4 v4, 0x0

    .line 459
    .local v4, "pkg_nm":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 460
    .local v7, "userId":I
    const/4 v5, 0x0

    .line 462
    .local v5, "ret":Z
    sget-object v9, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPackageWhitelistedFromBTSecureAccess() userId is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    if-nez p2, :cond_29

    .line 464
    sget-object v9, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v10, "isPackageWhitelistedFromBTSecureAccess() package name is null "

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/4 v9, 0x0

    .line 503
    :goto_28
    return v9

    .line 468
    :cond_29
    const-string v9, "com.android.bluetooth"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 469
    sget-object v9, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v10, "isPackageWhitelistedFromBTSecureAccess() package name is bluetooth "

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v9, 0x1

    goto :goto_28

    .line 474
    :cond_3a
    iget-object v9, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 475
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_48

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 476
    :cond_48
    const/4 v9, 0x0

    goto :goto_28

    .line 479
    :cond_4a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 480
    .local v6, "uid":Ljava/lang/Long;
    sget-object v9, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPackageWhitelistedFromBTSecureAccess() adminId long is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    sget-object v9, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPackageWhitelistedFromBTSecureAccess() adminId is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/4 v9, 0x2

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "whitelistPackageName"

    aput-object v10, v1, v9

    .line 485
    .local v1, "col":[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    .line 489
    .local v8, "val":[Ljava/lang/String;
    sget-object v9, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v10, "isPackageWhitelistedFromBTSecureAccess()"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v9, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SmartCardAccessWhitelistTable"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v1, v8, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 492
    .local v2, "cv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-object v9, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPackageWhitelistedFromBTSecureAccess() cv.size() is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    if-eqz v2, :cond_de

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_e8

    .line 494
    :cond_de
    sget-object v9, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v10, "isPackageWhitelistedFromBTSecureAccess() package name is NOT whitelisted "

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const/4 v5, 0x0

    goto/16 :goto_4e

    .line 498
    :cond_e8
    sget-object v9, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v10, "isPackageWhitelistedFromBTSecureAccess() package name is whitelisted "

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const/4 v9, 0x1

    goto/16 :goto_28

    .end local v1    # "col":[Ljava/lang/String;
    .end local v2    # "cv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v6    # "uid":Ljava/lang/Long;
    .end local v8    # "val":[Ljava/lang/String;
    :cond_f2
    move v9, v5

    .line 503
    goto/16 :goto_28
.end method

.method public isPackageWhitelistedFromBTSecureAccessUid(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 28
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "calling_Uid"    # I

    .prologue
    .line 512
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v20

    .line 513
    .local v20, "userId":I
    const/16 v18, 0x0

    .line 514
    .local v18, "ret":Z
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "isPackageWhitelistedFromBTSecureAccessUid() userId is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    move/from16 v5, p2

    .line 516
    .local v5, "callingUid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 517
    .local v6, "callingUid_system":I
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "isPackageWhitelistedFromBTSecureAccessUid callingUid from UserHandle : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 521
    .local v12, "ident":J
    :try_start_46
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "isPackageWhitelistedFromBTSecureAccessUid callingUser : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "persona"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PersonaManager;

    .line 523
    .local v16, "personaManager":Landroid/os/PersonaManager;
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v14

    .line 524
    .local v14, "isPersona":Z
    if-eqz v14, :cond_1ed

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 527
    .local v4, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v4, :cond_91

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_8e} :catch_219
    .catchall {:try_start_46 .. :try_end_8e} :catchall_23a

    move-result v22

    if-eqz v22, :cond_97

    .line 528
    :cond_91
    const/16 v22, 0x0

    .line 587
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 591
    .end local v4    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v14    # "isPersona":Z
    .end local v16    # "personaManager":Landroid/os/PersonaManager;
    :goto_96
    return v22

    .line 531
    .restart local v4    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v14    # "isPersona":Z
    .restart local v16    # "personaManager":Landroid/os/PersonaManager;
    :cond_97
    :try_start_97
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v23, "isPackageWhitelistedFromBTSecureAccessUid : isPersona true"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const/16 v22, 0x3e8

    move/from16 v0, v22

    if-eq v6, v0, :cond_aa

    const/16 v22, 0x3ea

    move/from16 v0, v22

    if-ne v6, v0, :cond_b7

    .line 534
    :cond_aa
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v23, "isPackageWhitelistedFromBTSecureAccessUid : system uid or bluetooth uid returning true"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_b1} :catch_219
    .catchall {:try_start_97 .. :try_end_b1} :catchall_23a

    .line 535
    const/16 v22, 0x1

    .line 587
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_96

    .line 538
    :cond_b7
    :try_start_b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 539
    .local v17, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    .line 541
    .local v15, "packages":[Ljava/lang/String;
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "isPackageWhitelistedFromBTSecureAccessUid : packages : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    if-eqz v15, :cond_1df

    array-length v0, v15

    move/from16 v22, v0

    if-lez v22, :cond_1df

    .line 544
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_e9
    array-length v0, v15

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_1f6

    .line 546
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "isPackageWhitelistedFromBTSecureAccessUid : package :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-object v24, v15, v10

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_10e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1db

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    .line 548
    .local v19, "uid":Ljava/lang/Long;
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "isPackageWhitelistedFromBTSecureAccessUid() adminId long is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "isPackageWhitelistedFromBTSecureAccessUid() adminId is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v7, v0, [Ljava/lang/String;

    const/16 v22, 0x0

    const-string v23, "adminUid"

    aput-object v23, v7, v22

    const/16 v22, 0x1

    const-string/jumbo v23, "whitelistPackageName"

    aput-object v23, v7, v22

    .line 553
    .local v7, "col":[Ljava/lang/String;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aget-object v23, v15, v10

    aput-object v23, v21, v22

    .line 557
    .local v21, "val":[Ljava/lang/String;
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v23, "isPackageWhitelistedFromBTSecureAccessUid()"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "SmartCardAccessWhitelistTable"

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 560
    .local v8, "cv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "isPackageWhitelistedFromBTSecureAccessUid() cv.size() is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    if-eqz v8, :cond_1c2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1cd

    .line 562
    :cond_1c2
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v23, "isPackageWhitelistedFromBTSecureAccessUid() package name is NOT whitelisted "

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const/16 v18, 0x0

    goto/16 :goto_10e

    .line 566
    :cond_1cd
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v23, "isPackageWhitelistedFromBTSecureAccessUid() package name is whitelisted "

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d4
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_1d4} :catch_219
    .catchall {:try_start_b7 .. :try_end_1d4} :catchall_23a

    .line 567
    const/16 v22, 0x1

    .line 587
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_96

    .line 544
    .end local v7    # "col":[Ljava/lang/String;
    .end local v8    # "cv":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v19    # "uid":Ljava/lang/Long;
    .end local v21    # "val":[Ljava/lang/String;
    :cond_1db
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_e9

    .line 574
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_1df
    :try_start_1df
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v23, "isPackageWhitelistedFromBTSecureAccessUid : packages is null or length < 0"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_1e6} :catch_219
    .catchall {:try_start_1df .. :try_end_1e6} :catchall_23a

    .line 575
    const/16 v22, 0x0

    .line 587
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_96

    .line 580
    .end local v4    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v15    # "packages":[Ljava/lang/String;
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    :cond_1ed
    :try_start_1ed
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string v23, "isPackageWhitelistedFromBTSecureAccessUid : isPersona false "

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f4
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_1f4} :catch_219
    .catchall {:try_start_1ed .. :try_end_1f4} :catchall_23a

    .line 581
    const/16 v18, 0x1

    .line 587
    :cond_1f6
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 590
    .end local v14    # "isPersona":Z
    .end local v16    # "personaManager":Landroid/os/PersonaManager;
    :goto_1f9
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "isPackageWhitelistedFromBTSecureAccessUid : ret "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v18

    .line 591
    goto/16 :goto_96

    .line 583
    :catch_219
    move-exception v9

    .line 584
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_21a
    sget-object v22, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "isPackageWhitelistedFromBTSecureAccessUid: Exception ex="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_234
    .catchall {:try_start_21a .. :try_end_234} :catchall_23a

    .line 585
    const/16 v18, 0x0

    .line 587
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f9

    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_23a
    move-exception v22

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 628
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 633
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 642
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 651
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 638
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 646
    return-void
.end method

.method public setBTSecureAccessAppWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 352
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 353
    .local v5, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 354
    sget-object v8, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "setBTSecureAccessAppWhiteList()"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 356
    .local v7, "userId":I
    sget-object v8, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBTSecureAccessAppWhiteList() userId is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 359
    .local v0, "adminId":I
    if-eqz p2, :cond_81

    .line 360
    sget-object v8, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "setBTSecureAccessAppWhiteList() - package name list not null"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 362
    .local v3, "pkg":Ljava/lang/String;
    move-object v4, v3

    .line 363
    .local v4, "pkg1":Ljava/lang/String;
    sget-object v8, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBTSecureAccessAppWhiteList() - package name is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 365
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "whitelistPackageName"

    invoke-virtual {v1, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v8, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    iget-object v8, p0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "SmartCardAccessWhitelistTable"

    invoke-virtual {v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    .line 371
    if-nez v5, :cond_3a

    move v6, v5

    .line 379
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "pkg1":Ljava/lang/String;
    .end local v5    # "ret":Z
    .local v6, "ret":Z
    :goto_7f
    return v6

    .line 375
    .end local v6    # "ret":Z
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "ret":Z
    :cond_80
    const/4 v5, 0x1

    .line 378
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_81
    sget-object v8, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBTSecureAccessAppWhiteList() - ret is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    .line 379
    .end local v5    # "ret":Z
    .restart local v6    # "ret":Z
    goto :goto_7f
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 656
    return-void
.end method
