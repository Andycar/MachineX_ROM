.class public Landroid/dirEncryption/DirEncryptionManager;
.super Ljava/lang/Object;
.source "DirEncryptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dirEncryption/DirEncryptionManager$Error;,
        Landroid/dirEncryption/DirEncryptionManager$Status;
    }
.end annotation


# static fields
.field public static final ADMIN_START:Ljava/lang/String; = "adminStart"

.field public static final CHANGE_ECRYPTFS_PASSWORD:I = 0xb

.field private static final DEBUG:Z = true

.field public static final DECRYPT:I = 0x3

.field private static final DIR_ENCRYPTION:Z

.field public static final ENCRYPT:I = 0x2

.field public static final ENCRYPT_FULL_OFF:I = 0x5

.field public static final ENCRYPT_FULL_ON:I = 0x4

.field public static final ERR_FEATURE_UNAVAILABLE:I = 0xc8

.field public static final ERR_INVALID_PARAMETER:I = 0xcb

.field public static final ERR_INVALID_PERMISSION:I = 0xcc

.field public static final ERR_NOK:I = 0xc9

.field public static final ERR_SD_NOT_MOUNTED:I = 0xca

.field public static final EXCL_MEDIA_OFF:I = 0x7

.field public static final EXCL_MEDIA_ON:I = 0x6

.field public static final FLE_KEY_STORE:Ljava/lang/String; = "/efs/"

.field public static final FLE_KEY_STORE_LEGACY:Ljava/lang/String; = "/data/system/"

.field public static final INTERNAL_STORAGE_PATH:Ljava/lang/String; = "/mnt/sdcard"

.field public static final MOUNT_PATH_STATUS:I = 0xc

.field public static final MOVE_MOUNT:Ljava/lang/String; = "MoveMount"

.field private static final MSG_BASE:I = 0x0

.field private static final MSG_ERR_BASE:I = 0xc8

.field public static final NAME:Ljava/lang/String; = "DirEncryptService"

.field public static final OK:I = 0xd

.field public static final PERMISSION_RECEIVE_SDCARD_ENCRYPTION:Ljava/lang/String; = "android.permission.RECEIVE_SDCARD_ENCRYPTION"

.field public static final POLICY_ALREADY_SET:I = 0xa

.field public static final POLICY_CAN_NOT_BE_SET_UNDER_BUSY_STATE:I = 0xf

.field public static final POLICY_NOT_SAVED:I = 0x9

.field public static final POLICY_SAVED:I = 0x8

.field public static final SDCARD_ENCRYPTION_COMPLETED:Ljava/lang/String; = "android.intent.action.SDCARD_ENCRYPTION_COMPLETED"

.field public static final SDCARD_ENCRYPTION_REQUIRED:Ljava/lang/String; = "android.intent.action.SDCARD_ENCRYPTION_REQUIRED"

.field public static final SD_CARD_ENCRYPTION_ACTION:Ljava/lang/String; = "android.app.action.START_SDCARD_ENCRYPTION"

.field public static final SD_CARD_ENCRYPTION_UNMOUNT:Ljava/lang/String; = "android.app.action.UNMOUNT_SDCARD_ENCRYPTION"

.field public static SECURITY_POLICY_NOTIFICATION_ID:I = 0x0

.field public static final STATUS_BUSY:Ljava/lang/String; = "busy"

.field public static final STATUS_DONE:Ljava/lang/String; = "done"

.field public static final STATUS_FREE:Ljava/lang/String; = "free"

.field public static final STATUS_MOUNT:Ljava/lang/String; = "Mount"

.field private static final TAG:Ljava/lang/String; = "DirEncryptionManager"

.field public static final VOLUME_STATE_HIDDEN:Ljava/lang/String; = "checking"

.field private static mPolicyChanged:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDew:Landroid/dirEncryption/DirEncryptionWrapper;

.field private m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    const-string/jumbo v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->DIR_ENCRYPTION:Z

    .line 58
    const v0, -0x35014542    # -8346975.0f

    sput v0, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    .line 119
    const/4 v0, 0x0

    sput-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->mPolicyChanged:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->mContext:Landroid/content/Context;

    .line 117
    iput-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    .line 118
    iput-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 127
    iput-object p1, p0, Landroid/dirEncryption/DirEncryptionManager;->mContext:Landroid/content/Context;

    .line 129
    new-instance v0, Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    .line 130
    const-string v0, "DirEncryptService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IDirEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptService;

    move-result-object v0

    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 132
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v0, :cond_2a

    .line 133
    const-string v0, "Unable to get DirEncryptService instance."

    invoke-static {v0}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 135
    :cond_2a
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->DIR_ENCRYPTION:Z

    if-nez v0, :cond_35

    .line 136
    const-string v0, "Dir Encryption not available"

    invoke-static {v0}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 137
    iput-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 139
    :cond_35
    return-void
.end method

.method public static isEncryptionFeatureEnabled()Z
    .registers 1

    .prologue
    .line 182
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->DIR_ENCRYPTION:Z

    if-eqz v0, :cond_6

    .line 183
    const/4 v0, 0x1

    .line 185
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string v0, "DirEncryptionManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method


# virtual methods
.method public SetMountSDcardToHelper(Z)V
    .registers 4
    .param p1, "in"    # Z

    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v1

    if-nez v1, :cond_7

    .line 353
    :cond_6
    :goto_6
    return-void

    .line 345
    :cond_7
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-eqz v1, :cond_6

    .line 349
    :try_start_b
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->SetMountSDcardToHelper(Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_6

    .line 350
    :catch_11
    move-exception v0

    .line 351
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 452
    const/16 v1, 0xc8

    .line 454
    .local v1, "result":I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_8

    move v2, v1

    .line 462
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_7
    return v2

    .line 458
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_8
    :try_start_8
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3, p1}, Landroid/os/storage/IDirEncryptService;->encryptStorage(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_10

    move-result v1

    :goto_e
    move v2, v1

    .line 462
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_7

    .line 459
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_10
    move-exception v0

    .line 460
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public getAdditionalSpaceRequired()I
    .registers 5

    .prologue
    .line 516
    const/16 v1, 0xc8

    .line 518
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v3

    if-nez v3, :cond_a

    move v2, v1

    .line 529
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_9
    return v2

    .line 521
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_a
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_10

    move v2, v1

    .line 522
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_9

    .line 525
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_10
    :try_start_10
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getAdditionalSpaceRequired()I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18

    move-result v1

    :goto_16
    move v2, v1

    .line 529
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_9

    .line 526
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_18
    move-exception v0

    .line 527
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public getCurrentStatus()I
    .registers 5

    .prologue
    .line 471
    const/16 v1, 0xc8

    .line 473
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v3

    if-nez v3, :cond_a

    move v2, v1

    .line 485
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_9
    return v2

    .line 476
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_a
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_10

    move v2, v1

    .line 477
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_9

    .line 480
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_10
    :try_start_10
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getCurrentStatus()I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18

    move-result v1

    :goto_16
    move v2, v1

    .line 485
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_9

    .line 481
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_18
    move-exception v0

    .line 482
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public getCurrentUserID()I
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v0

    return v0
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getKeyguardStoredPasswordQuality()I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .registers 5

    .prologue
    .line 494
    const/16 v1, 0xc8

    .line 496
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v3

    if-nez v3, :cond_a

    move v2, v1

    .line 507
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_9
    return v2

    .line 499
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_a
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_10

    move v2, v1

    .line 500
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_9

    .line 503
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_10
    :try_start_10
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getLastError()I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18

    move-result v1

    :goto_16
    move v2, v1

    .line 507
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_9

    .line 504
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_18
    move-exception v0

    .line 505
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public getPolicyChanged()Z
    .registers 2

    .prologue
    .line 598
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->mPolicyChanged:Z

    return v0
.end method

.method public getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .registers 4

    .prologue
    .line 538
    iget-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v2, :cond_6

    .line 539
    const/4 v0, 0x0

    .line 547
    :goto_5
    return-object v0

    .line 541
    :cond_6
    const/4 v0, 0x0

    .line 543
    .local v0, "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :try_start_7
    iget-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v2}, Landroid/os/storage/IDirEncryptService;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result-object v0

    goto :goto_5

    .line 544
    :catch_e
    move-exception v1

    .line 545
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "Unable to communicate with DirEncryptService"

    invoke-static {v2}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public getSavedUserID()I
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getSavedUserID()I

    move-result v0

    return v0
.end method

.method public getUserDiff()Z
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getUserDiff()Z

    move-result v0

    return v0
.end method

.method public getVolumeState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEncryptionSupported()Z
    .registers 2

    .prologue
    .line 194
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->DIR_ENCRYPTION:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->isExternalSDRemovable()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v0

    if-nez v0, :cond_14

    .line 195
    const/4 v0, 0x1

    .line 197
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isExternalSDRemovable()Z
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->isExternalSDRemovable()Z

    move-result v0

    return v0
.end method

.method public isStorageCardEncryptionPoliciesApplied()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 402
    const/4 v1, 0x0

    .line 404
    .local v1, "result":Z
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v4

    if-nez v4, :cond_a

    move v2, v1

    .line 415
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_9
    return v2

    .line 407
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_a
    iget-object v4, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v4, :cond_10

    move v2, v1

    .line 408
    .restart local v2    # "result":I
    goto :goto_9

    .line 411
    .end local v2    # "result":I
    :cond_10
    :try_start_10
    iget-object v4, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v4}, Landroid/os/storage/IDirEncryptService;->isStorageCardEncryptionPoliciesApplied()I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_1d

    move-result v4

    if-ne v4, v3, :cond_1b

    move v1, v3

    :goto_19
    move v2, v1

    .line 415
    .restart local v2    # "result":I
    goto :goto_9

    .line 411
    .end local v2    # "result":I
    :cond_1b
    const/4 v1, 0x0

    goto :goto_19

    .line 412
    :catch_1d
    move-exception v0

    .line 413
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public mountVolume()Z
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 149
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_5

    .line 157
    :goto_4
    return-void

    .line 153
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 154
    :catch_b
    move-exception v0

    .line 155
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public setNeedToCreateKey(Z)V
    .registers 4
    .param p1, "in"    # Z

    .prologue
    .line 322
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v1

    if-nez v1, :cond_7

    .line 333
    :cond_6
    :goto_6
    return-void

    .line 325
    :cond_7
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-eqz v1, :cond_6

    .line 329
    :try_start_b
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->setNeedToCreateKey(Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_6

    .line 330
    :catch_11
    move-exception v0

    .line 331
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public setNullSDCardPassword()I
    .registers 5

    .prologue
    .line 571
    const/16 v1, 0xc8

    .line 572
    .local v1, "result":I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_8

    move v2, v1

    .line 580
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_7
    return v2

    .line 576
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_8
    :try_start_8
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->setNullSDCardPassword()I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_10

    move-result v1

    :goto_e
    move v2, v1

    .line 580
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_7

    .line 577
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_10
    move-exception v0

    .line 578
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public setPassword(Ljava/lang/String;)I
    .registers 6
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 427
    const/16 v1, 0xc8

    .line 429
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v3

    if-nez v3, :cond_a

    move v2, v1

    .line 441
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_9
    return v2

    .line 432
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_a
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_10

    move v2, v1

    .line 433
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_9

    .line 436
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_10
    :try_start_10
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3, p1}, Landroid/os/storage/IDirEncryptService;->setPassword(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18

    move-result v1

    :goto_16
    move v2, v1

    .line 441
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_9

    .line 437
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_18
    move-exception v0

    .line 438
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public setPolicyChanged(Z)V
    .registers 2
    .param p1, "in"    # Z

    .prologue
    .line 589
    sput-boolean p1, Landroid/dirEncryption/DirEncryptionManager;->mPolicyChanged:Z

    .line 590
    return-void
.end method

.method public setSavedUserID(I)V
    .registers 3
    .param p1, "in"    # I

    .prologue
    .line 288
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0, p1}, Landroid/dirEncryption/DirEncryptionWrapper;->setSavedUserID(I)V

    .line 289
    return-void
.end method

.method public setStorageCardEncryptionPolicy(III)I
    .registers 9
    .param p1, "encType"    # I
    .param p2, "fullEnc"    # I
    .param p3, "excludeMediaFiles"    # I

    .prologue
    .line 369
    const/16 v1, 0xc8

    .line 371
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v3

    if-nez v3, :cond_a

    move v2, v1

    .line 392
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_9
    return v2

    .line 374
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_a
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_10

    move v2, v1

    .line 375
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_9

    .line 378
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_10
    :try_start_10
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3, p1, p2, p3}, Landroid/os/storage/IDirEncryptService;->setStorageCardEncryptionPolicy(III)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_44

    move-result v1

    .line 384
    :goto_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStorageCardEncryptionPolicy result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 385
    const/16 v3, 0x8

    if-eq v1, v3, :cond_35

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3e

    .line 386
    :cond_35
    const-string/jumbo v3, "result : POLICY_SAVED || POLICY_ALREADY_SET"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->unmountSDCardByAdmin()V

    .line 390
    :cond_3e
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/dirEncryption/DirEncryptionManager;->setPolicyChanged(Z)V

    move v2, v1

    .line 392
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_9

    .line 379
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_44
    move-exception v0

    .line 380
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public setUserDiff(Z)V
    .registers 3
    .param p1, "in"    # Z

    .prologue
    .line 270
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0, p1}, Landroid/dirEncryption/DirEncryptionWrapper;->setUserDiff(Z)V

    .line 271
    return-void
.end method

.method public unmountSDCardByAdmin()V
    .registers 3

    .prologue
    .line 555
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_5

    .line 563
    :goto_4
    return-void

    .line 559
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1}, Landroid/os/storage/IDirEncryptService;->unmountSDCardByAdmin()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 560
    :catch_b
    move-exception v0

    .line 561
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public unmountVolumeByDiffUser()Z
    .registers 4

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 253
    .local v0, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-nez v0, :cond_b

    .line 254
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v0    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 257
    .restart local v0    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_b
    const/4 v1, 0x2

    iget v2, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v1, v2, :cond_17

    .line 258
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountVolumeByDiffUser()Z

    move-result v1

    .line 260
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 166
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_5

    .line 174
    :goto_4
    return-void

    .line 170
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 171
    :catch_b
    move-exception v0

    .line 172
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public updateSDcardState()V
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->updateSDcardState()V

    .line 314
    return-void
.end method
