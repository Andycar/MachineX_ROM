.class public Lcom/android/server/enterprise/EcppMigrationManager;
.super Ljava/lang/Object;
.source "EcppMigrationManager.java"


# static fields
.field private static final CONTAINER_MIGRATION_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field public static final NEW_CONTAINER_ID:I = 0x0

.field public static final OLD_CONTAINER_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EcppMigrationManager"

.field private static mInstance:Lcom/android/server/enterprise/EcppMigrationManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDPMService:Landroid/app/admin/IDevicePolicyManager;

.field private mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPasswordPolicyService:Landroid/app/enterprise/IPasswordPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    .line 59
    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 72
    iput-object p1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EcppStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    .line 74
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 76
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    .line 79
    const-string/jumbo v0, "password_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Landroid/app/enterprise/IPasswordPolicy;

    .line 81
    return-void
.end method

.method private copyMaximumFailedPasswordsForDisable(ILandroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V
    .registers 10
    .param p1, "oldContainerId"    # I
    .param p2, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 402
    const/4 v1, 0x0

    .line 404
    .local v1, "maximumFailedPasswordsForDisable":I
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I

    move-result v1

    .line 406
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 407
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v4, :cond_17

    .line 409
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v4, p2, v1}, Landroid/app/enterprise/IPasswordPolicy;->setMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18
    .catchall {:try_start_f .. :try_end_14} :catchall_24

    .line 413
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 416
    :cond_17
    :goto_17
    return-void

    .line 410
    :catch_18
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with enterprise password policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_24

    .line 413
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_17

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyMaximumFailedPasswordsForWipe(IILandroid/content/ComponentName;)V
    .registers 10
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 385
    const/4 v1, 0x0

    .line 387
    .local v1, "maximumFailedPasswordsForWipe":I
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I

    move-result v1

    .line 389
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 390
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_17

    .line 392
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18
    .catchall {:try_start_f .. :try_end_14} :catchall_24

    .line 396
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 399
    :cond_17
    :goto_17
    return-void

    .line 393
    :catch_18
    move-exception v0

    .line 394
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_24

    .line 396
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_17

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyMaximumTimeToLockPassword(IILandroid/content/ComponentName;)V
    .registers 11
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 419
    const-wide/16 v2, 0x0

    .line 421
    .local v2, "maximumTimeToLockPassword":J
    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v2

    .line 423
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 424
    .local v4, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 426
    :try_start_10
    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p3, v2, v3, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;JI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_19
    .catchall {:try_start_10 .. :try_end_15} :catchall_25

    .line 430
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 433
    :cond_18
    :goto_18
    return-void

    .line 427
    :catch_19
    move-exception v0

    .line 428
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1a
    const-string v1, "EcppMigrationManager"

    const-string v6, "Failed talking with device policy service"

    invoke-static {v1, v6, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_25

    .line 430
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_18

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_25
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private copyPasswordExpirationTimeout(IILandroid/content/ComponentName;)V
    .registers 11
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 436
    const-wide/16 v2, 0x0

    .line 438
    .local v2, "passwordExpirationTimeout":J
    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v2

    .line 440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 441
    .local v4, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_18

    .line 443
    :try_start_10
    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p3, v2, v3, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_19
    .catchall {:try_start_10 .. :try_end_15} :catchall_25

    .line 447
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 450
    :cond_18
    :goto_18
    return-void

    .line 444
    :catch_19
    move-exception v0

    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1a
    const-string v1, "EcppMigrationManager"

    const-string v6, "Failed talking with enterprise password policy service"

    invoke-static {v1, v6, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_25

    .line 447
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_18

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_25
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private copyPasswordHistoryLength(IILandroid/content/ComponentName;)V
    .registers 10
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 368
    const/4 v1, 0x0

    .line 370
    .local v1, "passwordHistoryLength":I
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v1

    .line 372
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 373
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_17

    .line 375
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18
    .catchall {:try_start_f .. :try_end_14} :catchall_24

    .line 379
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 382
    :cond_17
    :goto_17
    return-void

    .line 376
    :catch_18
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_24

    .line 379
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_17

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordMinimumLength(IILandroid/content/ComponentName;)V
    .registers 10
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 230
    .local v1, "passwordMinimumLength":I
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v1

    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 233
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_17

    .line 235
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18
    .catchall {:try_start_f .. :try_end_14} :catchall_24

    .line 239
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    :cond_17
    :goto_17
    return-void

    .line 236
    :catch_18
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_24

    .line 239
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_17

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordMinimumLetters(IILandroid/content/ComponentName;)V
    .registers 10
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 247
    .local v1, "passwordMinimumLetters":I
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v1

    .line 249
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 250
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_17

    .line 252
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLetters(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18
    .catchall {:try_start_f .. :try_end_14} :catchall_24

    .line 256
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 259
    :cond_17
    :goto_17
    return-void

    .line 253
    :catch_18
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_24

    .line 256
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_17

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordMinimumNonLetter(IILandroid/content/ComponentName;)V
    .registers 10
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 262
    const/4 v1, 0x0

    .line 264
    .local v1, "passwordMinimumNonLetter":I
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v1

    .line 266
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 267
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_17

    .line 269
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18
    .catchall {:try_start_f .. :try_end_14} :catchall_24

    .line 273
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 276
    :cond_17
    :goto_17
    return-void

    .line 270
    :catch_18
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_24

    .line 273
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_17

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordMinimumNumeric(IILandroid/content/ComponentName;)V
    .registers 10
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 279
    const/4 v1, 0x0

    .line 281
    .local v1, "passwordMinimumNumeric":I
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v1

    .line 283
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 284
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_17

    .line 286
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18
    .catchall {:try_start_f .. :try_end_14} :catchall_24

    .line 290
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 293
    :cond_17
    :goto_17
    return-void

    .line 287
    :catch_18
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_24

    .line 290
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_17

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordMinimumSymbols(IILandroid/content/ComponentName;)V
    .registers 10
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 296
    const/4 v1, 0x0

    .line 298
    .local v1, "passwordMinimumSymbols":I
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v1

    .line 300
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 301
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_17

    .line 303
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18
    .catchall {:try_start_f .. :try_end_14} :catchall_24

    .line 307
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    :cond_17
    :goto_17
    return-void

    .line 304
    :catch_18
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_24

    .line 307
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_17

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordQuality(IILandroid/content/ComponentName;)V
    .registers 10
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 313
    const/4 v1, 0x0

    .line 315
    .local v1, "passwordQuality":I
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v1

    .line 317
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 318
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_17

    .line 320
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18
    .catchall {:try_start_f .. :try_end_14} :catchall_24

    .line 324
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 327
    :cond_17
    :goto_17
    return-void

    .line 321
    :catch_18
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_24

    .line 324
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_17

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_24
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordVisible(ILandroid/app/enterprise/ContextInfo;)V
    .registers 12
    .param p1, "oldContainerId"    # I
    .param p2, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 330
    const/4 v3, 0x0

    .line 332
    .local v3, "passwordVisible":Z
    iget-object v7, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->isPasswordVisisbilityEnabled(I)Z

    move-result v3

    .line 334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 335
    .local v4, "token":J
    iget-object v7, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v7, :cond_6b

    .line 337
    :try_start_f
    iget v7, p2, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 338
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v7, v6}, Landroid/app/enterprise/IPasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v3

    .line 339
    if-nez v3, :cond_63

    .line 343
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 344
    .local v1, "cvWhereValues":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    iget v8, p2, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    const-string/jumbo v7, "passwordVisibilityEnabled"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    iget-object v7, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "PASSWORD"

    invoke-virtual {v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v7

    if-lez v7, :cond_63

    .line 350
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .local v0, "cvUpdateValues":Landroid/content/ContentValues;
    const-string/jumbo v7, "passwordVisibilityEnabled"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    iget-object v7, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "PASSWORD"

    invoke-virtual {v7, v8, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v7

    if-nez v7, :cond_63

    .line 354
    const-string v7, "EcppMigrationManager"

    const-string v8, "Failed to update PasswordVisible value in PASSWORD"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .end local v0    # "cvUpdateValues":Landroid/content/ContentValues;
    .end local v1    # "cvWhereValues":Landroid/content/ContentValues;
    :cond_63
    iget-object v7, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v7, p2, v3}, Landroid/app/enterprise/IPasswordPolicy;->setPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_68} :catch_6c
    .catchall {:try_start_f .. :try_end_68} :catchall_78

    .line 362
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    .end local v6    # "userId":I
    :cond_6b
    :goto_6b
    return-void

    .line 359
    :catch_6c
    move-exception v2

    .line 360
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_6d
    const-string v7, "EcppMigrationManager"

    const-string v8, "Failed talking with enterprise password policy service"

    invoke-static {v7, v8, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_78

    .line 362
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6b

    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_78
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method private enforceMigrationAgentSecurityCheck()V
    .registers 9

    .prologue
    .line 88
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 89
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 90
    .local v3, "pid":I
    const-string v2, ""

    .line 92
    .local v2, "packageName":Ljava/lang/String;
    :try_start_a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_65

    move-result-object v2

    .line 96
    :goto_12
    const-string v5, "EcppMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check permission for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "caller":Ljava/lang/String;
    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_42

    if-eqz v0, :cond_42

    const-string v5, "com.sec.knox.containeragent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7f

    .line 102
    :cond_42
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No Container Migration Permission to calling Package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 93
    .end local v0    # "caller":Ljava/lang/String;
    :catch_65
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to getPackageFromAppProcesses : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "caller":Ljava/lang/String;
    :cond_7f
    return-void
.end method

.method private findContainerData(ILandroid/content/ComponentName;)Z
    .registers 4
    .param p1, "oldContainerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->findContainerAdmin(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EcppMigrationManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const-class v1, Lcom/android/server/enterprise/EcppMigrationManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;

    if-nez v0, :cond_e

    .line 63
    new-instance v0, Lcom/android/server/enterprise/EcppMigrationManager;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/EcppMigrationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;

    .line 65
    :cond_e
    sget-object v0, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public migrateEcppDB(Landroid/content/ComponentName;IJ)Z
    .registers 14
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "newContainerUsedId"    # I
    .param p3, "newContainerAdminUid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 108
    invoke-direct {p0}, Lcom/android/server/enterprise/EcppMigrationManager;->enforceMigrationAgentSecurityCheck()V

    .line 110
    const/4 v3, 0x1

    .line 111
    .local v3, "oldContainerId":I
    const/4 v4, 0x1

    .line 113
    .local v4, "result":Z
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    long-to-int v6, p3

    invoke-direct {v0, v6, v5}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 117
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :try_start_c
    invoke-direct {p0, v3, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->findContainerData(ILandroid/content/ComponentName;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_13

    move-result v4

    .line 118
    if-nez v4, :cond_1c

    .line 219
    :goto_12
    return v5

    .line 121
    :catch_13
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "EcppMigrationManager"

    const-string v7, "Exception in finding container data, Returning!!"

    invoke-static {v6, v7, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1c
    :try_start_1c
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumLength(IILandroid/content/ComponentName;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_5a

    .line 134
    :goto_1f
    :try_start_1f
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumLetters(IILandroid/content/ComponentName;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_64

    .line 141
    :goto_22
    :try_start_22
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumNonLetter(IILandroid/content/ComponentName;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_6e

    .line 148
    :goto_25
    :try_start_25
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumNumeric(IILandroid/content/ComponentName;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_78

    .line 155
    :goto_28
    :try_start_28
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumSymbols(IILandroid/content/ComponentName;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_82

    .line 162
    :goto_2b
    :try_start_2b
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordQuality(IILandroid/content/ComponentName;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_8c

    .line 168
    :goto_2e
    :try_start_2e
    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordVisible(ILandroid/app/enterprise/ContextInfo;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_95

    .line 175
    :goto_31
    :try_start_31
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordHistoryLength(IILandroid/content/ComponentName;)V
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_34} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_a9

    .line 185
    :goto_34
    :try_start_34
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyMaximumFailedPasswordsForWipe(IILandroid/content/ComponentName;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_b3

    .line 192
    :goto_37
    :try_start_37
    invoke-direct {p0, v3, v0, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyMaximumFailedPasswordsForDisable(ILandroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_be

    .line 199
    :goto_3a
    :try_start_3a
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyMaximumTimeToLockPassword(IILandroid/content/ComponentName;)V
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3d} :catch_c9
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_d4

    .line 209
    :goto_3d
    :try_start_3d
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordExpirationTimeout(IILandroid/content/ComponentName;)V
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_40} :catch_df
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_ea

    .line 218
    :goto_40
    const-string v5, "EcppMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "migrateEcppDB return : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 219
    goto :goto_12

    .line 128
    :catch_5a
    move-exception v1

    .line 129
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordMinimumLength()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    const/4 v4, 0x0

    goto :goto_1f

    .line 135
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_64
    move-exception v1

    .line 136
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordMinimumLetters()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    const/4 v4, 0x0

    goto :goto_22

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_6e
    move-exception v1

    .line 143
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordMinimumNonLetter()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    const/4 v4, 0x0

    goto :goto_25

    .line 149
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_78
    move-exception v1

    .line 150
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordMinimumNumeric()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    const/4 v4, 0x0

    goto :goto_28

    .line 156
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_82
    move-exception v1

    .line 157
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordMinimumSymbols()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    const/4 v4, 0x0

    goto :goto_2b

    .line 163
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_8c
    move-exception v1

    .line 164
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordQuality()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e

    .line 169
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_95
    move-exception v1

    .line 170
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordVisible()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    const/4 v4, 0x0

    goto :goto_31

    .line 176
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_9f
    move-exception v2

    .line 177
    .local v2, "ex":Ljava/lang/NumberFormatException;
    const-string v5, "EcppMigrationManager"

    const-string v6, "copyPasswordHistoryLength(): Policy not yet set"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v4, 0x0

    .line 182
    goto :goto_34

    .line 179
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :catch_a9
    move-exception v1

    .line 180
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordHistoryLength()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    const/4 v4, 0x0

    goto :goto_34

    .line 186
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_b3
    move-exception v1

    .line 187
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyMaximumFailedPasswordsForWipe()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    const/4 v4, 0x0

    goto/16 :goto_37

    .line 193
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_be
    move-exception v1

    .line 194
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyMaximumFailedPasswordsForDisable()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    const/4 v4, 0x0

    goto/16 :goto_3a

    .line 200
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_c9
    move-exception v2

    .line 201
    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    const-string v5, "EcppMigrationManager"

    const-string v6, "copyMaximumTimeToLockPassword(): Policy not yet set"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v4, 0x0

    .line 206
    goto/16 :goto_3d

    .line 203
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :catch_d4
    move-exception v1

    .line 204
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyMaximumTimeToLockPassword()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    const/4 v4, 0x0

    goto/16 :goto_3d

    .line 210
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_df
    move-exception v2

    .line 211
    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    const-string v5, "EcppMigrationManager"

    const-string v6, "copyPasswordExpirationTimeout(): Policy not yet set"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v4, 0x0

    .line 216
    goto/16 :goto_40

    .line 213
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :catch_ea
    move-exception v1

    .line 214
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordExpirationTimeout()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    const/4 v4, 0x0

    goto/16 :goto_40
.end method
