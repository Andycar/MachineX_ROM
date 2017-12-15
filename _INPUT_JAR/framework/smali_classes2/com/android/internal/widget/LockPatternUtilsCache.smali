.class public Lcom/android/internal/widget/LockPatternUtilsCache;
.super Ljava/lang/Object;
.source "LockPatternUtilsCache.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;
    }
.end annotation


# static fields
.field private static final HAS_LOCK_BACKUP_PIN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockBackupPinCacheKey"

.field private static final HAS_LOCK_CARRIER_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockCarrierPasswordCacheKey"

.field private static final HAS_LOCK_FINGERPRINT_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockFingerprintPasswordCacheKey"

.field private static final HAS_LOCK_FMM_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockFMMPasswordCacheKey"

.field private static final HAS_LOCK_PARENTCONTROL_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockParentControlPasswordCacheKey"

.field private static final HAS_LOCK_PARENTCONTROL_PASSWORD_HASHSIZE_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockParentControlPasswordHashSizeCacheKey"

.field private static final HAS_LOCK_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPasswordCacheKey"

.field private static final HAS_LOCK_PATTERN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPatternCacheKey"

.field private static final HAS_LOCK_PERSONALMODE_BACKUP_PIN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPersonalModeBackupPinCacheKey"

.field private static final HAS_LOCK_PERSONALMODE_FINGERPRINT_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPersonalModeFingerprintPasswordCacheKey"

.field private static final HAS_LOCK_PERSONALMODE_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPersonalModePasswordCacheKey"

.field private static final HAS_LOCK_PERSONALMODE_PATTERN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPersonalModePatternCacheKey"

.field private static final HAS_LOCK_PERSONALMODE_PIN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPersonalModePinCacheKey"

.field private static final IS_CARRIER_LOCK_ENABLED_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.IsCarrierLockPlusEnabledCacheKey"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtilsCache"

.field private static sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;


# instance fields
.field private final mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

.field private final mObserver:Lcom/android/internal/widget/ILockSettingsObserver;

.field private final mService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ILockSettings;)V
    .registers 5
    .param p1, "service"    # Lcom/android/internal/widget/ILockSettings;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    .line 49
    new-instance v1, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;-><init>(Lcom/android/internal/widget/LockPatternUtilsCache$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    .line 241
    new-instance v1, Lcom/android/internal/widget/LockPatternUtilsCache$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtilsCache$1;-><init>(Lcom/android/internal/widget/LockPatternUtilsCache;)V

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mObserver:Lcom/android/internal/widget/ILockSettingsObserver;

    .line 62
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    .line 64
    :try_start_1b
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mObserver:Lcom/android/internal/widget/ILockSettingsObserver;

    invoke-interface {p1, v1}, Lcom/android/internal/widget/ILockSettings;->registerObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    .line 70
    return-void

    .line 65
    :catch_21
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/LockPatternUtilsCache;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternUtilsCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/LockPatternUtilsCache;
    .registers 3
    .param p0, "service"    # Lcom/android/internal/widget/ILockSettings;

    .prologue
    .line 53
    const-class v1, Lcom/android/internal/widget/LockPatternUtilsCache;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsCache;->sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;

    if-nez v0, :cond_e

    .line 54
    new-instance v0, Lcom/android/internal/widget/LockPatternUtilsCache;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtilsCache;-><init>(Lcom/android/internal/widget/ILockSettings;)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtilsCache;->sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;

    .line 56
    :cond_e
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsCache;->sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invalidateCache(Ljava/lang/String;I)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 237
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->set(Ljava/lang/String;I)Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    monitor-exit v1

    .line 239
    return-void

    .line 238
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private peekCache(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 223
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->set(Ljava/lang/String;I)Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 224
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private putCache(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 230
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mCache:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;-><init>(Lcom/android/internal/widget/LockPatternUtilsCache$1;)V

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->set(Ljava/lang/String;I)Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    monitor-exit v1

    .line 232
    return-void

    .line 231
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public checkBackupPin(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkBackupPin(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkCarrierPassword(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkCarrierPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkFMMPassword(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkFMMPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkFingerprintPassword(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkFingerprintPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkParentControlPassword([BI)Z
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkParentControlPassword([BI)Z

    move-result v0

    return v0
.end method

.method public checkPassword(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPattern(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPattern(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPersonalModeBackupPin(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeBackupPin(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPersonalModePassword(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPersonalModePattern(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePattern(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPersonalModePin(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePin(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkSignatureBackupPin([BI)Z
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkSignatureBackupPin([BI)Z

    move-result v0

    return v0
.end method

.method public checkVoldPassword(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->checkVoldPassword(I)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 116
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_f

    .line 117
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 121
    :goto_e
    return v0

    .line 119
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_f
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    .line 120
    .local v0, "result":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, p1, p3, v2}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_e
.end method

.method public getCarrierLockPlusMode(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 516
    const-string v2, "LockPatternUtils.Cache.IsCarrierLockPlusEnabledCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 517
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 518
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 522
    :goto_10
    return v0

    .line 520
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->getCarrierLockPlusMode(I)Z

    move-result v0

    .line 521
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.IsCarrierLockPlusEnabledCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public getLong(Ljava/lang/String;JI)J
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    const/16 v4, 0x64

    if-lt p4, v4, :cond_1e

    const-string v4, "lockscreen.password_salt"

    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v0, 0x1

    .line 92
    .local v0, "preCondition":Z
    :goto_d
    if-nez v0, :cond_20

    .line 94
    invoke-direct {p0, p1, p4}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 95
    .local v1, "value":Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/Long;

    if-eqz v4, :cond_20

    .line 96
    check-cast v1, Ljava/lang/Long;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 101
    :goto_1d
    return-wide v2

    .line 91
    .end local v0    # "preCondition":Z
    :cond_1e
    const/4 v0, 0x0

    goto :goto_d

    .line 99
    .restart local v0    # "preCondition":Z
    :cond_20
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    .line 100
    .local v2, "result":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, p1, p4, v4}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1d
.end method

.method public getParentControlPasswordHashSize(I)I
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->getParentControlPasswordHashSize(I)I

    move-result v0

    .line 341
    .local v0, "result":I
    const-string v1, "LockPatternUtils.Cache.HasLockParentControlPasswordHashSizeCacheKey"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 342
    return v0
.end method

.method public getSignatureInfo(I)[B
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getSignatureInfo(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 106
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 107
    check-cast v1, Ljava/lang/String;

    .line 111
    .end local v1    # "value":Ljava/lang/Object;
    :goto_a
    return-object v1

    .line 109
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_b
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, p1, p3, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    move-object v1, v0

    .line 111
    goto :goto_a
.end method

.method public haveBackupPin(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 189
    const-string v2, "LockPatternUtils.Cache.HasLockBackupPinCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 190
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 191
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 195
    :goto_10
    return v0

    .line 193
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->haveBackupPin(I)Z

    move-result v0

    .line 194
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockBackupPinCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public haveCarrierPassword(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 547
    const-string v2, "LockPatternUtils.Cache.HasLockCarrierPasswordCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 548
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 549
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 553
    :goto_10
    return v0

    .line 551
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->haveCarrierPassword(I)Z

    move-result v0

    .line 552
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockCarrierPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public haveFMMPassword(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 505
    const-string v2, "LockPatternUtils.Cache.HasLockFMMPasswordCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 506
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 507
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 511
    :goto_10
    return v0

    .line 509
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->haveFMMPassword(I)Z

    move-result v0

    .line 510
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockFMMPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public haveFingerprintPassword(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 302
    const-string v2, "LockPatternUtils.Cache.HasLockFingerprintPasswordCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 303
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 304
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 308
    :goto_10
    return v0

    .line 306
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->haveFingerprintPassword(I)Z

    move-result v0

    .line 307
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockFingerprintPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public haveParentControlPassword(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 325
    const-string v2, "LockPatternUtils.Cache.HasLockParentControlPasswordCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 326
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 327
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 331
    :goto_10
    return v0

    .line 329
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->haveParentControlPassword(I)Z

    move-result v0

    .line 330
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockParentControlPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public havePassword(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    const-string v2, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 179
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 180
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 184
    :goto_10
    return v0

    .line 182
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z

    move-result v0

    .line 183
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public havePattern(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    const-string v2, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 168
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 169
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 173
    :goto_10
    return v0

    .line 171
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z

    move-result v0

    .line 172
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public havePersonalModeBackupPin(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 471
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModeBackupPinCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 472
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 473
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 477
    :goto_10
    return v0

    .line 475
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeBackupPin(I)Z

    move-result v0

    .line 476
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModeBackupPinCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public havePersonalModeFingerprintPassword(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 482
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModeFingerprintPasswordCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 483
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 484
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 488
    :goto_10
    return v0

    .line 486
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeFingerprintPassword(I)Z

    move-result v0

    .line 487
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModeFingerprintPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public havePersonalModePassword(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 449
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModePasswordCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 450
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 451
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 455
    :goto_10
    return v0

    .line 453
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePassword(I)Z

    move-result v0

    .line 454
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModePasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public havePersonalModePattern(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 460
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModePatternCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 461
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 462
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 466
    :goto_10
    return v0

    .line 464
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePattern(I)Z

    move-result v0

    .line 465
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModePatternCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public havePersonalModePin(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 438
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModePinCacheKey"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 439
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 440
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 444
    :goto_10
    return v0

    .line 442
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePin(I)Z

    move-result v0

    .line 443
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModePinCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public haveSignature(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->haveSignature(I)Z

    move-result v0

    return v0
.end method

.method public haveSignatureBackupPin(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->haveSignatureBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public registerObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/internal/widget/ILockSettingsObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->registerObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V

    .line 206
    return-void
.end method

.method public removeUser(I)V
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->removeUser(I)V

    .line 201
    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 74
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V

    .line 75
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 76
    return-void
.end method

.method public setCarrierLockPlusEnabled(I)V
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 527
    const-string v1, "LockPatternUtils.Cache.IsCarrierLockPlusEnabledCacheKey"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 528
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->getCarrierLockPlusMode(I)Z

    move-result v0

    .line 529
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->setCarrierLockPlusEnabled(I)V

    .line 530
    const-string v1, "LockPatternUtils.Cache.IsCarrierLockPlusEnabledCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 531
    return-void
.end method

.method public setLockBackupPin(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 150
    const-string v0, "LockPatternUtils.Cache.HasLockBackupPinCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 151
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPin(Ljava/lang/String;I)V

    .line 152
    const-string v1, "LockPatternUtils.Cache.HasLockBackupPinCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 153
    return-void

    .line 152
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setLockCarrierPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 535
    const-string v0, "LockPatternUtils.Cache.HasLockCarrierPasswordCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 536
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockCarrierPassword(Ljava/lang/String;I)V

    .line 537
    const-string v1, "LockPatternUtils.Cache.HasLockCarrierPasswordCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 538
    return-void

    .line 537
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setLockFMMPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 493
    const-string v0, "LockPatternUtils.Cache.HasLockFMMPasswordCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 494
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockFMMPassword(Ljava/lang/String;I)V

    .line 495
    const-string v1, "LockPatternUtils.Cache.HasLockFMMPasswordCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 496
    return-void

    .line 495
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setLockFingerprintPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 290
    const-string v0, "LockPatternUtils.Cache.HasLockFingerprintPasswordCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockFingerprintPassword(Ljava/lang/String;I)V

    .line 292
    const-string v1, "LockPatternUtils.Cache.HasLockFingerprintPasswordCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 293
    return-void

    .line 292
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setLockParentControlPassword([BI)V
    .registers 5
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 313
    const-string v0, "LockPatternUtils.Cache.HasLockParentControlPasswordCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockParentControlPassword([BI)V

    .line 315
    const-string v1, "LockPatternUtils.Cache.HasLockParentControlPasswordCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 316
    return-void

    .line 315
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setLockPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    const-string v0, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;I)V

    .line 140
    const-string v1, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 141
    return-void

    .line 140
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setLockPattern(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    const-string v0, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;I)V

    .line 128
    const-string v1, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 129
    return-void

    .line 128
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setLong(Ljava/lang/String;JI)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p4}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 80
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    .line 81
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public setPersonalModeFingerprintPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 405
    const-string v0, "LockPatternUtils.Cache.HasLockPersonalModeFingerprintPasswordCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 406
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeFingerprintPassword(Ljava/lang/String;I)V

    .line 407
    const-string v1, "LockPatternUtils.Cache.HasLockPersonalModeFingerprintPasswordCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 408
    return-void

    .line 407
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setPersonalModeLockBackupPin(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 397
    const-string v0, "LockPatternUtils.Cache.HasLockPersonalModeBackupPinCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 398
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockBackupPin(Ljava/lang/String;I)V

    .line 399
    const-string v1, "LockPatternUtils.Cache.HasLockPersonalModeBackupPinCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 400
    return-void

    .line 399
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setPersonalModeLockPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 383
    const-string v0, "LockPatternUtils.Cache.HasLockPersonalModePasswordCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 384
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPassword(Ljava/lang/String;I)V

    .line 385
    const-string v1, "LockPatternUtils.Cache.HasLockPersonalModePasswordCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 386
    return-void

    .line 385
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setPersonalModeLockPattern(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 390
    const-string v0, "LockPatternUtils.Cache.HasLockPersonalModePatternCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 391
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPattern(Ljava/lang/String;I)V

    .line 392
    const-string v1, "LockPatternUtils.Cache.HasLockPersonalModePatternCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 393
    return-void

    .line 392
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setPersonalModeLockPin(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 376
    const-string v0, "LockPatternUtils.Cache.HasLockPersonalModePinCacheKey"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 377
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPin(Ljava/lang/String;I)V

    .line 378
    const-string v1, "LockPatternUtils.Cache.HasLockPersonalModePinCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 379
    return-void

    .line 378
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setSignatureBackupPin([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setSignatureBackupPin([BI)V

    .line 348
    return-void
.end method

.method public setSignatureInfo([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setSignatureInfo([BI)V

    .line 362
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/LockPatternUtilsCache;->invalidateCache(Ljava/lang/String;I)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    invoke-direct {p0, p1, p3, p2}, Lcom/android/internal/widget/LockPatternUtilsCache;->putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 88
    return-void
.end method

.method public unregisterObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/internal/widget/ILockSettingsObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache;->mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->unregisterObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V

    .line 211
    return-void
.end method
